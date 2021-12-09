using System;
using System.Collections.Generic;

using ConsoleApp38.Entities;
namespace ConsoleApp38
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Employee> lista1 = new List<Employee>();
            Console.WriteLine("Digite o numero de funcionarios: ");
            int n = int.Parse(Console.ReadLine());

            for(int i=0; i < n; i++)
            {
                Console.WriteLine($"Funcionario #{i + 1} data: ");
                Console.WriteLine("É um funcionario tercerizado(S/N): ");
                char ch = char.Parse(Console.ReadLine());
                Console.WriteLine("Nome: ");
                string nome = Console.ReadLine();
                Console.WriteLine("Horas: ");
                int Horas = int.Parse(Console.ReadLine());
                Console.Write("Valor por hora: ");
                double ValorHora = double.Parse(Console.ReadLine());

                if (ch == 'S'|| ch == 's')
                {
                    Console.WriteLine("Carga adicional: ");
                    double AdditionalCharge = double.Parse(Console.ReadLine());
                    lista1.Add(new OutsourcedEmployee(nome, Horas, ValorHora, AdditionalCharge));
                }
                else
                {
                    lista1.Add(new Employee(nome, Horas, ValorHora));
                }

                Console.WriteLine("Pagamentos");
                foreach(Employee emp in lista1)
                {
                    Console.WriteLine($"{emp.Name} - $ {emp.Payment().ToString("F2")}");
                }
            }
        }
    }
}
