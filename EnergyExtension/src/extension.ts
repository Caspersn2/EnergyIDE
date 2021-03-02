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
          Measure.getMethods(webviewView);
          break;
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
}

