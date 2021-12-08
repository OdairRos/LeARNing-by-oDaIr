using System;
using System.Collections.Generic;
namespace ConsoleApp24
{
    class Program
    {
        static void Main(string[] args)
        {
            List< Funcionario> funcionarios = new List<Funcionario>();

            Console.WriteLine("Quantos funcionarios serão registrados? ");
            int n = int.Parse(Console.ReadLine());

            for (int i = 0; i < n; i++){

                Console.WriteLine($"Funcionario #{i+1}");

                Console.WriteLine("Id: ");
                int id = int.Parse(Console.ReadLine());

                Console.WriteLine("Nome: ");
                string nome = Console.ReadLine();

                Console.WriteLine("Salario: ");
                double salario = double.Parse(Console.ReadLine());
                funcionarios.Add( new Funcionario(id, nome, salario));

            }

            Console.WriteLine("Digite o Id do funcionario que vai ter  o salario aumentado");
            int x = int.Parse(Console.ReadLine());

            bool have = false;
            foreach (Funcionario fc in funcionarios)
            {
                
                if (fc.Id == x)
                {
                    Console.WriteLine("porcentagem: ");
                    double perc = double.Parse(Console.ReadLine());
                    fc.Salario += ((fc.Salario * 10) / 100);
                    have = true;
                    break;
                }
            }
            if (!have)
            {
                Console.WriteLine("Este funcionario não existe");
            }
            else
            {
                Console.WriteLine("Lista atualizada dos funcionarios:");
                foreach(Funcionario fc in funcionarios)
                {
                    Console.WriteLine($"{fc.Id}, {fc.Nome}, {fc.Salario}");
                }
            }
        }
    }
}
