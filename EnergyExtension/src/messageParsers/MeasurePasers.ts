import * as vscode from 'vscode';
import { WebviewView } from "vscode";
import { MeasureTestingService } from "../service/measure-testing.service";

export class Measure {
    static getMethods(webviewView: WebviewView, type: string) {
        vscode.workspace.findFiles('**/*.dll').then(files => {
            MeasureTestingService.getMethods(files.map(f => f.fsPath), type).then(methods => {
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
        return new Promise(resolve => setTimeout(resolve, ms));
    }

    static stopProgress: boolean = false;
    static startProgressListen(webviewview: vscode.WebviewView) {
        MeasureTestingService.checkRAPLStatus().then(status => {
            if (typeof (status) !== typeof (String)) {
                status = <MeasureProgess>status;
                // If the measurements are done, stop listen and call the webview with done
                if (status.Done) {
                    this.stopProgress = status.Done;
                    webviewview.webview.postMessage({ command: 'done', value: status });
                    this.openOutput(status.Output == undefined ? "Could not read the output." : status.Output);
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

    static activate(activeClasses: ActivateClass[], type: string, webviewView: vscode.WebviewView) {
        if (type === "rapl") {
            var ids: number[] = [];
            activeClasses.forEach(c => {
                c.Methods?.forEach(m => ids.push(m.Id as number));
            });

            MeasureTestingService.startRAPL(ids).then(response => {
                if (response) {
                    //Starting to listen to progress
                    this.stopProgress = false;
                    this.startProgressListen(webviewView);
                }
            });
        }
        else if (type === "ml") {
            MeasureTestingService.startML(activeClasses);
        }
        //else if (type === "energy_model")

    }

    static stop() {
        MeasureTestingService.stopRAPL().then(response => {
            console.log("Stopped: " + response);
        });
    }
}

export interface ActivateClass {
    ClassName: string | undefined;
    AssemblyPath: string | undefined;
    Methods: Method[] | undefined;
}

export interface Method {
    Id: number | undefined;
    Name: string | undefined;
}

export interface MeasureProgess {
    PlannedMethods: Array<MethodProgress> | undefined;
    ClassesPlanned: Array<string> | undefined;
    ExceptionString: string | undefined;
    ExceptionThrown: boolean | undefined;
    Done: boolean | undefined;
    Output: string | undefined;
}

export interface MethodProgress {
    id: Number | undefined;
    runsDone: Number | undefined;
    plannedRuns: Number | undefined;
    methodName: string | undefined;
    className: string | undefined;
    stage: string | undefined;
}
