using Microsoft.CodeAnalysis;
using Microsoft.CodeAnalysis.CSharp;
using Microsoft.CodeAnalysis.CSharp.Syntax;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;

namespace test
{
  class Program
  {
    static void Main(string[] args)
    {
      var allFiles = System.IO.File.ReadAllLines("C:\\Users\\Caspe\\Documents\\GitHub\\EnergyIDE\\EnergyExtension\\src\\helpers\\test\\files.txt");

      List<Method> methods = new List<Method>();
      foreach (var file in allFiles)
      {
        var text = System.IO.File.ReadAllText(file);

        var tree = CSharpSyntaxTree.ParseText(text);
        var root = tree.GetCompilationUnitRoot();

        var found = from methodDeclaration in root.DescendantNodes().OfType<MethodDeclarationSyntax>()
                    select methodDeclaration.Identifier.ValueText;

        methods.AddRange(found.Select(m => new Method { name = m, filePath = file, lineNumber = 0 }));
      }

      Console.WriteLine(JsonSerializer.Serialize(methods));
    }
  }

  public class Method
  {
    public string name { get; set; }
    public string filePath { get; set; }
    public int lineNumber { get; set; }
  }
}
