using System;
using System.IO;
namespace ConsoleApp48
{
    class Program
    {
        static void Main(string[] args)
        {
            string path = @"C:\Users\desenv07\Desktop\LeARNing by oDaIr\C# with Ûdemy\Course 2 Files\ConsoleApp48\file1.txt";
         
            StreamReader sr = null;
            try
            {

                sr = File.OpenText(path);
                while (!sr.EndOfStream)
                {
                    string line = sr.ReadLine();
                    Console.WriteLine(line);
                }
                
            }
            catch (IOException e)
            {
                Console.WriteLine($"Erro: {e.Message}");
            }
            finally
            {
                if (sr != null)
                    sr.Close();
            }
        }
    }
}
