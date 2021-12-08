using System;
using System.Globalization;
namespace ConsoleApp27
{
    class Program
    {
        static void Main(string[] args)
        {
            DateTime data1 = DateTime.Now;

            DateTime data2 = DateTime.ParseExact("2000-08-15", "yyyy-MM-dd", CultureInfo.InvariantCulture);
            Console.WriteLine($"Hoje é dia {data1.Day} do mês {data1.Month} do ano de {data1.Year}");
            Console.WriteLine(data2);
             
        }
    }
}
