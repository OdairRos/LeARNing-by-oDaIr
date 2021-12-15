using System;
using ConsoleApp63.Entities;
namespace ConsoleApp63
{
    class Program
    {
        static void Main(string[] args)
        {
            Client nome1 = new Client { Nome = "Lucas", Email = "ODAIR@GMAIL.COM" };
            Client nome2 = new Client { Nome = "odair", Email = "ODAIR@GMAIL.COM" };

            Console.WriteLine(nome1.Equals(nome2));
            Console.WriteLine(nome1 == nome2);
            Console.WriteLine(nome1.GetHashCode());
            Console.WriteLine(nome2.GetHashCode());
        }
    }
}
