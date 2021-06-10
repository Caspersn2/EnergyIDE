import { privateEncrypt } from 'crypto';
import * as vscode from 'vscode';
import { WebviewView } from "vscode";
import { MeasureTestingService } from "../service/measure-testing.service";

export class Measure {
    private static fs = require('fs');

    static getMethods(webviewView: WebviewView, type: string) {
        vscode.workspace.findFiles('**/*.dll').then(files => {
            MeasureTestingService.getMethods(files.map(f => f.fsPath), type).then(methods => {
                webviewView.webview.postMessage({ command: 'methods', value: methods });
            });
        });
    }

    static async openOutput(output: string, language: string) {
        // Save the result to the filesystem
        let folders = vscode.workspace.workspaceFolders;
        if (folders) {
            let rootFolder = folders[0].uri.fsPath;
            let path = rootFolder + '/energyResults.' + language;
            this.fs.writeFile(path, output,  (err: string) => {
                if (err) {
                    return console.error(err);
                }
                console.log("File created!");
            });
        }
        else {
            console.log("Could not save the results to file system as no folders are open");
        }

        // opens the result to a new window
        const document = await vscode.workspace.openTextDocument({
            language: language,
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
                    if (status.Output) {
                        this.openOutput(status.Output, "XML");
                    }
                    else {
                        this.openOutput("Could not read response", "txt");
                    }
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

    static activate(activeClasses: ActivateClass[], inputs: {}, type: string, webviewView: vscode.WebviewView) {
        if (type === "rapl") {
            var ids: number[] = [];
            activeClasses.forEach(c => {
                c.Methods.forEach(m => ids.push(m.Id));
            });

            MeasureTestingService.startRAPL(ids).then(response => {
                if (response) {
                    //Starting to listen to progress
                    this.stopProgress = false;
                    this.startProgressListen(webviewView);
                }
            }).catch(error => {
                webviewView.webview.postMessage({ command: 'error_starting', value: error.message });
            });
        }
        else if (type === "ml") {
            MeasureTestingService.startML(activeClasses, inputs).then(response => {
                if(response)
                {
                    webviewView.webview.postMessage({ command: 'done', value: response });
                    this.openOutput(JSON.stringify(response), "JSON");
                }
            }).catch(error => {
                webviewView.webview.postMessage({ command: 'error_starting', value: error.message });
            });
        }
        else if (type === "energy_model") {
            MeasureTestingService.startEnergyModel(activeClasses, inputs).then(response => {
                    if (response)
                    {
                        webviewView.webview.postMessage({ command: 'done', value: response });
                        this.openOutput(JSON.stringify(response), 'JSON');
                    }
                }).catch(error => {
                    webviewView.webview.postMessage({ command: 'error_starting', value: error.data });
                });
        }

    }

    static stop() {
        MeasureTestingService.stopRAPL().then(response => {
            console.log("Stopped: " + response);
        });
    }
}

export interface ActivateClass {
    ClassName: string;
    AssemblyPath: string;
    Methods: Method[];
}

export interface Method {
    Id: number;
    Name: string;
    Args: string[];
    StringRepresentation: string
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

