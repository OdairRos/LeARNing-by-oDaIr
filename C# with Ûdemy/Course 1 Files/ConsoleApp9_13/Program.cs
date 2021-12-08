using System;

namespace ConsoleApp9_13
{
    class Program
    {
        static void Main(string[] args)
        {
            int dia;
            dia = int.Parse(Console.ReadLine());
            

            switch (dia){
                case 1:
                    Console.WriteLine("domingo");
                    break;
                case 2:
                    Console.WriteLine("Segunda-feira");
                    break;
                case 3:
                    Console.WriteLine("Terça-feira");
                    break;
                case 4:
                    Console.WriteLine("Quarta-feira");
                    break;
                case 5:
                    Console.WriteLine("Quinta-feira");
                    break;
                case 6:
                    Console.WriteLine("Sexta-feira");
                    break;
                case 7:
                    Console.WriteLine("Sabado");
                    break;
            }
        }
    }
}
