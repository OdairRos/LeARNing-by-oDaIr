using System;
using System.Collections.Generic;
using System.IO;
namespace ConsoleApp70
{
    class Program
    {
        static void Main(string[] args)
        {
            string path = @"C:\Users\desenv07\Desktop\LeARNing by oDaIr\C# with Ûdemy\Course 2 Files\ConsoleApp70\in.txt";
            Dictionary<string, int> dados = new Dictionary<string, int>();
            using (StreamReader sr = File.OpenText(path))
            {
               while(!sr.EndOfStream)
               {
                    string[] linha = sr.ReadLine().Split(",");
                    if (dados.ContainsKey(linha[0]))
                        dados[linha[0]] += int.Parse(linha[1]);
                    else
                        dados[linha[0]] = int.Parse(linha[1]);
                }
            }

            foreach(var item in dados)
            {
                Console.WriteLine($"{item.Key} : {item.Value}");
            }

        }
    }
}
