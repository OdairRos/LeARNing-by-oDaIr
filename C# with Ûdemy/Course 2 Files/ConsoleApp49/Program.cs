using System;
using System.IO;
namespace ConsoleApp49
{
    class Program
    {
        static void Main(string[] args)
        {
            String Path = @"C:\Users\desenv07\Desktop\LeARNing by oDaIr\C# with Ûdemy\Course 2 Files\ConsoleApp49\file1.txt";
            try
            {
                using (StreamReader sr = File.OpenText(Path))
                {
                    while (!sr.EndOfStream)
                    {
                        string line = sr.ReadLine();
                        Console.WriteLine(line);
                    }
                }

            }
            catch(IOException e)
            {
                Console.WriteLine($"ERRO: {e.Message}");
            }
        }
    }
}
