using System;
using System.IO;
using System.Collections.Generic;
using ConsoleApp67.Entities;
namespace ConsoleApp67
{
    class Program
    {
        static void Main(string[] args)
        {
            string Path = @"C:\Users\desenv07\Desktop\LeARNing by oDaIr\C# with Ûdemy\Course 2 Files\ConsoleApp67\File1.txt";

            HashSet<LogRecord> set = new HashSet<LogRecord>();
            using (StreamReader sr = File.OpenText(Path))
            {
                while (!sr.EndOfStream)
                {
                    string[] line = sr.ReadLine().Split(" ");
                    set.Add(new LogRecord(line[0], DateTime.Parse(line[1])));

                }
                Console.WriteLine($"Total users: {set.Count}");

            }
        }

    }
}
