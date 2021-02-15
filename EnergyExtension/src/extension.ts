// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
import * as vscode from 'vscode';
import * as path from 'path';
import { fstat, readFile, readFileSync, writeFile } from 'fs';
import { type } from 'os';
import { FileParser } from './helpers/fileParser';
import { Method } from './models';
import { stdout } from 'process';

// this method is called when your extension is activated
// your extension is activated the very first time the command is executed
export function activate(context: vscode.ExtensionContext) {

	let webviewProvider = new EnergyViewProvider(context);
  vscode.window.registerWebviewViewProvider("energyWebView", webviewProvider);

  const filePath: vscode.Uri = vscode.Uri.file(context.extensionPath);
  
  vscode.commands.registerCommand('Energy.calculate ', () => {
    var editor = vscode.window.activeTextEditor;
    var selected = editor?.document.getText(editor.selection);
    var message = selected ? 'Calculating energy consumption of: ' + selected : "Highlight text to calculate";
    vscode.window.showInformationMessage(message);
  });
}

// this method is called when your extension is deactivated
export function deactivate() {}

export class EnergyViewProvider implements vscode.WebviewViewProvider {
  private extensionContext: vscode.ExtensionContext;
  constructor (context: vscode.ExtensionContext){
    this.extensionContext = context;
  }

  delay(ms: number) {
    return new Promise( resolve => setTimeout(resolve, ms) );
  }

  resolveWebviewView(webviewView: vscode.WebviewView, context: vscode.WebviewViewResolveContext<unknown>, token: vscode.CancellationToken): void | Thenable<void> {
    webviewView.webview.options = {
      enableScripts: true
    };
    webviewView.description = "This is a description for the webview";
    webviewView.webview.html = this.getHTML();
    
    this.getMethods(webviewView);

    //called when a message from the HTML is sent to the extension
    webviewView.webview.onDidReceiveMessage(message => {
      console.log(message.type);
      switch(message.type){
        case 'log':
          console.log(message.value);
          break;
        case 'activate':
          console.log("Activated!: { type: " + message.value.type + ", functions: " + message.value.function + "}");
          
          let test = { command: 'progress', value: [
            { functionName: 'Main()', eta: 9 },
            { functionName: 'Penguin()', eta: 10 },
          ]};
          
          this.checkValues(test, webviewView);

          break;
        case 'methodSelected':
          let method: Method = JSON.parse(message.value);
          console.log(method.name + ", " + method.lineNumber + ", " + method.filePath?.fsPath);  
          let uri: vscode.Uri | undefined = method.filePath;
          if (uri){
            console.log("Should open");
            vscode.window.showTextDocument(uri);
          }
          break;
        default:
          console.log("Cound not understand message");
          break;
      }
    });
  }

  checkValues(test: { command: string, value: { functionName: string, eta: number }[] }, webviewView: vscode.WebviewView){
    let check = false;
    this.delay(1000).then(x => {
      test.value.forEach(item => {
        item.eta = Math.max(item.eta - 1, 0);
      });
      webviewView.webview.postMessage(test);

      check = test.value.every(x => x.eta == 0);
      if (!check) {
        this.checkValues(test, webviewView);
      }
      else {
        webviewView.webview.postMessage({ command: "done" });
      }
    });
  }

  private getHTML(): string{
    const filePath: vscode.Uri = vscode.Uri.file(path.join(this.extensionContext.extensionPath, 'src', 'html', 'webview.html'));
    return readFileSync(filePath.fsPath, 'utf8');
  }

  private getMethods(webviewView: vscode.WebviewView){
    console.log("Starting");
    vscode.workspace.findFiles('**/*.cs', null).then(files => {
      console.log("Found files");
      let extensionPath = this.extensionContext.extensionPath;
      let writePath = vscode.Uri.file(path.join(extensionPath, 'src', 'helpers', 'test', 'files.txt'));
      
      let toWrite = files.map(x => x.fsPath).join('\n');
      writeFile(writePath.fsPath, toWrite, function(err) {
        console.log("Files are written");
        if (err){
          console.log(err);
        }
        else {
          const cp = require('child_process');
          let programPath = vscode.Uri.file(path.join(extensionPath, 'src', 'helpers', 'test'));
          cp.exec('dotnet run -p ' + programPath.fsPath, (err: any, stdout: any, stderr: any) => {
              console.log("Execution done");
              if (stdout){
                let methods: Method[] = JSON.parse(stdout);
                console.log("Found " + methods.length + " methods");
                methods.forEach((method, index) => {
                  let url = method.filePath as unknown as string;
                  method.id = index;
                  method.filePath = vscode.Uri.file(url);
                });

                var methodGroups: { key: string; value: Method[] }[] = [];
                methods.forEach(method => {
                  var meybeKey = method.filePath;
                  if (meybeKey){
                    let key = meybeKey.fsPath;
                    if (methodGroups.some(x => x.key == key)){
                      let index = methodGroups.findIndex(m => m.key == key);
                      methodGroups[index].value.push(method);
                    }
                    else {
                      methodGroups.push({ key: key, value: [method] });
                    }
                  }
                  else {
                    methodGroups.push({ key: "null", value: [method] });
                  }
                });

                webviewView.webview.postMessage({ command: 'methods', value: methodGroups });
              }
              else if (stderr){
                console.log("Program failed with message: " + stderr);
              }
              else if (err) {
                console.log("Execution faild: " + err);
              }
          });
        }
      });
    });
  }
}

