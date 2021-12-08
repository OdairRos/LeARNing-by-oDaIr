using System;

namespace ConsoleApp29
{
    class Program
    {
        static void Main(string[] args)
        {
            DateTime data = new DateTime(2021, 3, 30, 13, 45, 58);
            String data1 = data.ToShortTimeString();

            Console.WriteLine(data.ToLongDateString());
            Console.WriteLine(data1);
        }
    }
}
