using System;
using System.IO;
namespace ConsoleApp47
{
    class Program
    {
        static void Main(string[] args)
        {;
            string originPath = @"C:\Users\desenv07\Desktop\LeARNing by oDaIr\C# with Ûdemy\Course 2 Files\ConsoleApp47\file1.txt";
            string targetPath = @"C:\Users\desenv07\Desktop\LeARNing by oDaIr\C# with Ûdemy\Course 2 Files\ConsoleApp47\file2.txt";

            try
            {
                FileInfo fileInfo = new FileInfo(originPath);
                fileInfo.CopyTo(targetPath);

                string[] linhas = File.ReadAllLines(originPath);
                foreach(string linha in linhas)
                {
                    Console.WriteLine(linha);
                }
            }
            catch (IOException e )
            {
                Console.WriteLine($"ERRO: {e.Message}");

            }
        }
    }
}
