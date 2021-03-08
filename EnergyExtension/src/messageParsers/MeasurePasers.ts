import * as vscode from 'vscode';
import { WebviewView } from "vscode";
import { MeasureTestingService } from "../service/measure-testing.service";

export class Measure 
{
    static getMethods(webviewView: WebviewView) {
        vscode.workspace.findFiles('**/*.dll').then(files => {
            MeasureTestingService.getMethods(files.map(f => f.fsPath)).then(methods => {
                webviewView.webview.postMessage({ command: 'methods', value: methods });
            });
        });
    }

    static async openOutput(output: string) {
        const document = await vscode.workspace.openTextDocument({
            language: "xml",
            content: output,
        });
        vscode.window.showTextDocument(document);
    }

    static delay(ms: number) {
        return new Promise( resolve => setTimeout(resolve, ms) );
    }

    static stopProgress: boolean = false;
    static startProgressListen(webviewview: vscode.WebviewView) {
        MeasureTestingService.checkStatus().then(status => {
            if (typeof(status) !== typeof(String)){
                status = <MeasureProgess>status;
                // If the measurements are done, stop listen and call the webview with done
                if (status.Done) {
                    this.stopProgress = status.Done;
                    webviewview.webview.postMessage({ command: 'done', value: status });
                    this.openOutput( status.Output == undefined ? "Could not read the output." : status.Output );
                }
                else {
                    webviewview.webview.postMessage({ command: 'progress', value: status });
                    this.delay(1000).then(() => {
                        if (!this.stopProgress) {
                            this.startProgressListen(webviewview);
                        }
                    });
                }
            }
        });
    }

    static activate(message: ActivateClass, webviewView: vscode.WebviewView) {
        var ids: number[] = [];
        message.methods?.forEach(m => {
            if (m.id){
                ids.push(m.id);
            }
        });
        
        if (message.methods != null) {
            MeasureTestingService.startRunning(ids).then(response => {
                if (response) {
                    //Starting to listen to progress
                    this.stopProgress = false;
                    this.startProgressListen(webviewView);
                }
            });
        }
    }

    static stop() {
        MeasureTestingService.stopRunning().then(response => {
            console.log("Stopped: " + response);
        });
    }
}

export class ActivateClass {
    type: string | undefined;
    methods: Method[] | undefined;
}

export class Method {
    id: number | undefined;
    name: string | undefined;
}

export class MeasureProgess {
    PlannedMethods: Array<MethodProgress> | undefined;
    ClassesPlanned: Array<string> | undefined;
    ExceptionString: string | undefined;
    ExceptionThrown: boolean| undefined;
    Done: boolean | undefined;
    Output: string | undefined;
}

export class MethodProgress {
    id: Number | undefined;
    runsDone: Number | undefined;
    plannedRuns: Number | undefined;
    methodName: string | undefined;
    className: string | undefined;
    stage: string | undefined;
}

