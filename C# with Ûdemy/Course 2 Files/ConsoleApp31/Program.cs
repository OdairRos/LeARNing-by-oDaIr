using System;

namespace ConsoleApp31
{
    class Program
    {
        static void Main(string[] args)
        {
            DateTime data1 = new DateTime(2000, 8, 15, 13, 5, 58, DateTimeKind.Local);

            Console.WriteLine("Data", data1);
            Console.WriteLine("Data kind: " + data1.Kind);
            Console.WriteLine("Data to local: " + data1.ToLocalTime());
            Console.WriteLine("Data to utc: ", data1.ToUniversalTime());
        }
    }
}
