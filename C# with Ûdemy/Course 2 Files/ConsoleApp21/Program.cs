using System;

namespace ConsoleApp21
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("How many room will be rented? ");
            int n = int.Parse(Console.ReadLine());
            Quartos[] quartos = new Quartos[n];

            for(int i=0; i<n; i++)
            {
                Console.WriteLine($"\nRent #{i}");
                quartos[i] = new Quartos();
                Console.Write("Name: ");
                quartos[i].Nome = Console.ReadLine();

                Console.Write("Email: ");
                quartos[i].Email = Console.ReadLine();

                Console.Write("Room: ");
                quartos[i].Room = int.Parse(Console.ReadLine());
            
            }

            for(int i = 0; i < n; i++)
            {
                if(quartos[i] != null)
                {
                    Console.WriteLine($"{quartos[i].Room}:  {quartos[i].Nome}, {quartos[i].Email}");
                }
            }
        }
    }
}
