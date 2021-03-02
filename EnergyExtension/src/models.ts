import * as vscode from 'vscode';

export class Method {
  id: number | undefined;
  name: string | undefined;
  filePath: vscode.Uri | undefined;
  lineNumber: Number | undefined;
}