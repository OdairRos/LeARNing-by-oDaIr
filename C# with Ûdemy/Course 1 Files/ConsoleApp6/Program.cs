using System;

namespace ConsoleApp6
{
    class Program
    {
        static void Main(string[] args)
        {
            string materiais = "Tijolo Areia Cimento";

            Console.WriteLine("Materiais necessarios para construir uma parede: ");
            foreach (string mat in materiais.Split(" "))
            {
                Console.WriteLine(mat);
            }
        }
    }
}
