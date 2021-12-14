using System;
using System.IO;
namespace ConsoleApp50
{
    class Program
    {
        static void Main(string[] args)
        {
            string originPath = @"C:\Users\desenv07\Desktop\LeARNing by oDaIr\C# with Ûdemy\Course 2 Files\ConsoleApp50\TextFile1.txt";
            string targetPath = @"C:\Users\desenv07\Desktop\LeARNing by oDaIr\C# with Ûdemy\Course 2 Files\ConsoleApp50\TextFile2.txt";

            try
            {
                string[] lines = File.ReadAllLines(originPath);

                using (StreamWriter sw = File.AppendText(targetPath))
                {
                    foreach(string line in lines)
                    {
                        sw.WriteLine(line.ToUpper());
                    }
                }
            }
            catch (IOException e)
            {
                Console.WriteLine($"EROO: {e.Message}");
            }
        }
    }
}
