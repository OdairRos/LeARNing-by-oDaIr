using System;
using System.IO;
using System.Collections.Generic;
namespace ConsoleApp51
{
    class Program
    {
        static void Main(string[] args)
        {
            string path = @"C:\Users\desenv07\Desktop\LeARNing by oDaIr\C# with Ûdemy\Course 2 Files\ConsoleApp51\Auxiliar\";

            try
            {
                IEnumerable<string> folders = Directory.EnumerateDirectories(path, "*.*", SearchOption.AllDirectories);
                Console.WriteLine($"FOLDERS: ");
                foreach(string s in folders)
                {
                    Console.WriteLine(s);
                }
                IEnumerable<string> files = Directory.EnumerateFiles(path, "*.*", SearchOption.AllDirectories);
                Console.WriteLine($"FILES: ");
                foreach (string s in files)
                {
                    Console.WriteLine(s);
                }

                Directory.CreateDirectory(path + "\\NovaPasta");
            }
            catch(IOException e)
            {
                Console.WriteLine($"EROO: {e.Message}");
            }
        }
    }
}
