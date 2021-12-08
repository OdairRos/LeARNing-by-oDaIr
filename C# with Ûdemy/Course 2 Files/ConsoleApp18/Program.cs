using System;

namespace ConsoleApp18
{
    class Program
    {
        static void Main(string[] args)
        {
            double? x = null;
            double? y = 10.32;
            double c = x ?? 9.00;
            Console.WriteLine(c);
            Console.WriteLine(x.GetValueOrDefault());
            Console.WriteLine(y.GetValueOrDefault());
        }
    }
}
