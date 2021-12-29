using System;
using System.IO;
using System.Globalization;
using System.Linq;
using System.Collections.Generic;
namespace ConsoleApp81
{
    class Program
    {
        static void Main(string[] args)
        {
            string path = @"C:\Users\desenv07\Desktop\LeARNing by oDaIr\C# with Ûdemy\Course 2 Files\ConsoleApp81\in.txt";
            List<Employee> list = new List<Employee>();

            using (StreamReader sr = File.OpenText(path))
            {
                while (!sr.EndOfStream)
                {
                    string[] line = sr.ReadLine().Split(",");
                    list.Add(new Employee(line[0],line[1], double.Parse(line[2], CultureInfo.InvariantCulture)));
                }
            }
            Console.WriteLine("Enter Salary: ");
            double salario = double.Parse(Console.ReadLine());
            
            
            Console.WriteLine($"Email of People whose salary is more than {salario}");
            var emails = list
                .Where(p => p.salary > salario)
                .Select(p => p.email)
                .ToList()
                .OrderBy(p => p)
                .ToList();

            emails.ForEach(p => Console.WriteLine(p));

            var Avg = list
                .Where(p => p.name.StartsWith("m") || p.name.StartsWith("M"))
                .Select(p => p.salary)
                .ToList();

            var avg = 0.0;
            foreach (double valor in Avg) {
                avg += valor; };
            Console.WriteLine($"Sum of salary of people whose name starts with 'M': {avg}");
        }
    }
}
