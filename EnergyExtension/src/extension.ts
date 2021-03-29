// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
import * as vscode from 'vscode';
import * as path from 'path';
import { readFileSync } from 'fs';
import { ActivateClass, Measure } from './messageParsers/MeasurePasers';

// this method is called when your extension is activated
// your extension is activated the very first time the command is executed
export function activate(context: vscode.ExtensionContext) {
	let webviewProvider = new EnergyViewProvider(context);
  vscode.window.registerWebviewViewProvider("energyWebView", webviewProvider);
  
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

    Measure.getMethods(webviewView, "static");
    
    //called when a message from the HTML is sent to the extension
    webviewView.webview.onDidReceiveMessage(message => {
      switch(message.type){
        case 'log':
          console.log(message.value);
          break;
        case 'activate':
          let methods = message.value.methods as ActivateClass[];
          let type = message.value.type
          Measure.activate(methods, type, webviewView);
          break;
        case 'stop':
          Measure.stop();
        case 'methodSelected':
          break;
        case 'reloadMethods':
          Measure.getMethods(webviewView, message.value.type);
          break;
        default:
          console.log("Cound not understand message of type: " + message.type);
          break;
      }
    });
  }

  private getHTML(): string{
    const filePath: vscode.Uri = vscode.Uri.file(path.join(this.extensionContext.extensionPath, 'src', 'html', 'webview.html'));
    return readFileSync(filePath.fsPath, 'utf8');
  }
}
