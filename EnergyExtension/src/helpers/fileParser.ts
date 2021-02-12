import { readFileSync } from "fs";
import { Method } from "../models";
import * as vscode from 'vscode';
import { randomInt } from "crypto";

export class FileParser {
  constructor() {}

  public static getMethods(): Promise<Method[]>{
    var methods: Method[] = [];
    return new Promise((resolve, reject) => {
      vscode.workspace.findFiles('**/*.cs', null).then(files => {
        files.forEach(file => {
          let content = readFileSync(file.fsPath, 'utf8');;
          let lines = content.split('\n');
          methods = methods.concat(this.getMethodsFromSourceNew(lines, file));
        });
        resolve(methods);
      });
    });
  }

  private static getMethodsFromSourceNew(lines: string[], path: vscode.Uri):Method[] {
    //A method follows: [type]' '[name]'?'('...')'?'{
    let methodNames: { name: string, line: number }[] = [];
    
    lines.forEach((line, index) => {
      let method = this.checkLine(line, lines, index);
      if (method){
        methodNames.push(method);
      }
    });

    return methodNames.map(method => { return { name: method.name, filePath: path, lineNumber: method.line, id: randomInt(1, 100000) }; });
  }

  private static checkLine(line: string, lines: string[], index: number): { name: string, line: number } | undefined {
    if (line.includes('(')){
      if (line.includes(')')){
        if (line.includes('{')){
          let between = line.substring(line.indexOf(')')+1, line.indexOf('{'));
          between = between.replace(' ', '').replace('\t', '').replace("=>", '').replace('\n', '');
          
          if (between == ""){

            let tmp = line.substring(0, line.indexOf('('));
            let method = { name: tmp.substring(tmp.lastIndexOf(' '), tmp.length), line: index+1 };
            if (method.name != null && method.name != "") {
              return method;
            }

          }
        }
        else {
          if (index+1 >= lines.length){ return undefined; }
          line.concat(lines[index+1]);
          this.checkLine(line, lines, index+1);
        }
      }
      else {
        if (index+1 >= lines.length){ return undefined; }
        line.concat(lines[index+1]);
        this.checkLine(line, lines, index+1);
      }
    }
    return undefined;
  }

  /* END OF NEW */

  private static getMethodsFromSouce(lines: string[], path: vscode.Uri) : Method[] {
    let methodNames: { name: string, line: number }[] = [];
    lines.forEach((line, index) => {
      if (this.checkForMethod(line) && line.indexOf('(')){
        line = this.removeGeneric(line);
        let tmp = line.substring(0, line.indexOf('('));
        let method = { name: tmp.substring(tmp.lastIndexOf(' '), tmp.length-1), line: index+1 };
        if (method.name != null && method.name != "") {
          methodNames.push( method );
        }
      }
    });
    
    return methodNames.map(method => { return { name: method.name, filePath: path, lineNumber: method.line, id: randomInt(1, 100000) }; });
  }

  private static removeGeneric(line: string) {
    if (line.includes('<') && line.includes('>')) {
      return line.substring(0, line.indexOf('<')) + line.substring(line.indexOf('>')+1, line.length-1);
    }
    else {
      return line;
    }
  }

  //Returns true if there is a method/function in the line
  private static checkForMethod(line: string): boolean {
    return (line.includes("protected") ||
      line.includes("private") ||
      line.includes("public")) &&
      !line.includes("_") && !line.includes("class");
  }
}

