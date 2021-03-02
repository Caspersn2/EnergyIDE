import * as vscode from 'vscode';
import { WebviewView } from "vscode";
import { MeasureTestingService } from "../service/measure-testing.service";

export class Measure 
{
    static getMethods(webviewView: WebviewView) {
        vscode.workspace.findFiles('**/*.dll').then(files => {
            console.log(files);
            MeasureTestingService.getMethods(files.map(f => f.fsPath)).then(methods => {
                webviewView.webview.postMessage({ command: 'methods', value: methods });
            });
        });
    }

    static delay(ms: number) {
        return new Promise( resolve => setTimeout(resolve, ms) );
    }

    static stopProgress: boolean = false;
    static startProgressListen(webviewview: vscode.WebviewView) {
        MeasureTestingService.checkStatus().then(status => {
            if (typeof(status) !== typeof(String)){
                status = <MeasureProgess>status;
                if (status.Done) {this.stopProgress = status.Done;}
                console.log(this.stopProgress);
                webviewview.webview.postMessage({ command: 'progress', value: status });
                this.delay(1000).then(() => {
                    if (!this.stopProgress) {
                        this.startProgressListen(webviewview);
                    }
                });
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
                console.log(response);
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
    Done: boolean | undefined;
    plannedMethods: Array<MethodProgress> | undefined;
    classesPlanned: Array<string> | undefined;
    exceptionString: string | undefined;
    exceptionThrown: boolean| undefined;
}

export class MethodProgress {
    id: Number | undefined;
    runsDone: Number | undefined;
    plannedRuns: Number | undefined;
    methodName: string | undefined;
    className: string | undefined;
    stage: string | undefined;
}

