using System;
using System.IO;
namespace ConsoleApp52
{
    class Program
    {
        static void Main(string[] args)
        {
            string path = @"C:\Users\desenv07\Desktop\LeARNing by oDaIr\C# with Ûdemy\Course 2 Files\ConsoleApp52\Auxiliar\file1.txt";

            Console.WriteLine("Directory Separator: " + Path.DirectorySeparatorChar);
            Console.WriteLine("Path separator: " + Path.PathSeparator);
            Console.WriteLine("Get Directory Nsme: " + Path.GetDirectoryName(path));
            Console.WriteLine("Get file  Name: " + Path.GetFileName(path));
            Console.WriteLine("Get extension type: " + Path.GetExtension(path));
            Console.WriteLine("Get file name without extension: " + Path.GetFileNameWithoutExtension(path));
            Console.WriteLine("Get full path" + Path.GetFullPath(path));
            Console.WriteLine("Get Temp Path: " + Path.GetTempPath());

        }
    }
}
