// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
import * as vscode from 'vscode';
import * as path from 'path';
import { readFileSync, writeFile } from 'fs';
import { Method } from './models';
import { MeasureTestingService } from './service/measure-testing.service';
import { ActivateClass, Measure } from './messageParsers/MeasurePasers';

// this method is called when your extension is activated
// your extension is activated the very first time the command is executed
export function activate(context: vscode.ExtensionContext) {
	let webviewProvider = new EnergyViewProvider(context);
  vscode.window.registerWebviewViewProvider("energyWebView", webviewProvider);
  
  // const filePath: vscode.Uri = vscode.Uri.file(context.extensionPath);
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
    
    Measure.getMethods(webviewView);
    
    //called when a message from the HTML is sent to the extension
    webviewView.webview.onDidReceiveMessage(message => {
      console.log(message.type);
      switch(message.type){
        case 'log':
          console.log(message.value);
          break;
        case 'activate':
          var body = message.value as ActivateClass;
          Measure.activate(body, webviewView);
          break;
        case 'stop':
          Measure.stop();
        case 'methodSelected':
          // You could maybe use this for something
          break;
        case 'reloadMethods':
          console.log("Reload methods");
          Measure.getMethods(webviewView);
        default:
          console.log("Cound not understand message");
          break;
      }
    });
  }

  private getHTML(): string{
    const filePath: vscode.Uri = vscode.Uri.file(path.join(this.extensionContext.extensionPath, 'src', 'html', 'webview.html'));
    return readFileSync(filePath.fsPath, 'utf8');
  }

  private getMethodsOld(webviewView: vscode.WebviewView){
    vscode.workspace.findFiles('**/*.cs', null).then(files => {
      let extensionPath = this.extensionContext.extensionPath;
      let writePath = vscode.Uri.file(path.join(extensionPath, 'src', 'helpers', 'test', 'files.txt'));
      
      let toWrite = files.map(x => x.fsPath).join('\n');
      writeFile(writePath.fsPath, toWrite, function(err) {
        if (err){
          console.log(err);
        }
        else {
          const cp = require('child_process');
          let programPath = vscode.Uri.file(path.join(extensionPath, 'src', 'helpers', 'test'));
          cp.exec('dotnet run -p ' + programPath.fsPath, (err: any, stdout: any, stderr: any) => {
              if (stdout){
                let methods: Method[] = JSON.parse(stdout);
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

