using System;

namespace ConsoleApp9
{
    class Program
    {
        static void Main(string[] args)
        {
            double R, A;

            R = double.Parse(Console.ReadLine());
            A = (R * R) * 3.14159;

            Console.WriteLine("A="+A);
        }
    }
}
