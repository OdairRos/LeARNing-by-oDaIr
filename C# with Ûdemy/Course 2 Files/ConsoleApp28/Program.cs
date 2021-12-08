using System;

namespace ConsoleApp28
{
    class Program
    {
        static void Main(string[] args)
        {
            TimeSpan t1 = new TimeSpan();
            TimeSpan t2 = TimeSpan.FromDays(1.5);
            TimeSpan t3 = TimeSpan.FromHours(1.6);

            Console.WriteLine(t1);
            Console.WriteLine(t2);
            Console.WriteLine(t3);
        }
    }
}
