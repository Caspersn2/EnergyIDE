// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
import * as vscode from 'vscode';
import * as path from 'path';
import { fstat, readFile, readFileSync } from 'fs';

// this method is called when your extension is activated
// your extension is activated the very first time the command is executed
export function activate(context: vscode.ExtensionContext) {

	let webviewProvider = new blabla(context);
  vscode.window.registerWebviewViewProvider("energyWebView", webviewProvider);
}

// this method is called when your extension is deactivated
export function deactivate() {}

export class blabla implements vscode.WebviewViewProvider {
  private extensionContext: vscode.ExtensionContext;
  constructor (context: vscode.ExtensionContext){
    this.extensionContext = context;
  }

  delay(ms: number) {
    return new Promise( resolve => setTimeout(resolve, ms) );
  }

  resolveWebviewView(webviewView: vscode.WebviewView, context: vscode.WebviewViewResolveContext<unknown>, token: vscode.CancellationToken): void | Thenable<void> {
    
    console.log('Congratulations, your extension "Energy" is now active!');
    webviewView.webview.options = {
      enableScripts: true
    };
    webviewView.description = "This is a description for the webview";
    webviewView.webview.html = this.getHTML();
    
    //called when a message from the HTML is sent to the extension
    webviewView.webview.onDidReceiveMessage(message => {
      switch(message.type){
        case 'log':
          console.log(message.value);
          break;
        case 'activate':
          console.log("Activated!: { type: " + message.value.type + ", functions: " + message.value.function + "}");
          
          let test = { command: 'progress', value: [
            { functionName: 'Main()', eta: 9 },
            { functionName: 'Penguin()', eta: 10 },
            { functionName: 'Master()', eta: 3 },
            { functionName: 'Shark()', eta: 19 }
          ]};
          
          this.checkValues(test, webviewView);

          console.log('should be done now');
          webviewView.webview.postMessage({ command: "done" });
          break;
        default:
          console.log("Cound not understand message");
          break;
      }
    });
    
    vscode.commands.registerCommand('Energy.calculate ', () => {
      var editor = vscode.window.activeTextEditor;
      var selected = editor?.document.getText(editor.selection);
      var message = selected ? 'Calculating energy consumption of: ' + selected : "Highlight text to calculate";
      vscode.window.showInformationMessage(message);
    });
  }

  checkValues(test: { command: string, value: { functionName: string, eta: number }[] }, webviewView: vscode.WebviewView){
    let check = false;
    let wait = true;
    console.log("test1");
    this.delay(1000).then(x => {
      console.log("test2");
      test.value.forEach(item => {
        item.eta = Math.max(item.eta - 1, 0);
      });
      webviewView.webview.postMessage(test);

      check = test.value.every(x => x.eta == 0);
      wait = false;
      if (!check) {
        this.checkValues(test, webviewView);
      }
    });
  }

  private getHTML(): string{
    const filePath: vscode.Uri = vscode.Uri.file(path.join(this.extensionContext.extensionPath, 'src', 'html', 'webview.html'));
    return readFileSync(filePath.fsPath, 'utf8');
  }
}

