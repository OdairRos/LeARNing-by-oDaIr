using System;
using ConsoleApp56.Entities;
using ConsoleApp56.Services;
using System.Globalization;

namespace ConsoleApp56
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter contract data");
            Console.WriteLine("Number: ");
            int numero = int.Parse(Console.ReadLine());

            Console.WriteLine("Date (dd/MM/yyyy): ");
            DateTime data = DateTime.ParseExact(Console.ReadLine(), "dd/MM/yyyy", CultureInfo.InvariantCulture);

            Console.WriteLine("Valor do contrato: ");
            double valorContrato = double.Parse(Console.ReadLine());

            Console.WriteLine("Enter number of installments: ");
            int qtParcelas = int.Parse(Console.ReadLine());

            Contract contrato = new Contract(numero, data, valorContrato, qtParcelas);

            contrato.CalculaPrestacao();


        }
    }
}
