using System;
using System.Collections.Generic;
using ConsoleApp41.Entities;

namespace ConsoleApp41
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite o numero de pesoas: ");
            int n = int.Parse(Console.ReadLine());
            List < Pessoa > pessoas  = new List<Pessoa>(0);

            for(int i=0; i<n; i++)
            {
                Console.Write($"Dados Pessoa #{i+1}\n Individual ou compânia(i/c): ");
                char CoI = char.Parse(Console.ReadLine());
                
                Console.Write("Nome: ");
                string nome = Console.ReadLine();
                Console.Write("Ganho anual: ");
                double valor = double.Parse(Console.ReadLine());

            
                if (CoI == 'i' || CoI == 'I')
                {
                    Console.Write("Despesas com saude: ");
                    double DespesasSaude = double.Parse(Console.ReadLine());
                    pessoas.Add(new PessoaFisica(nome, valor, DespesasSaude));
                }
                else if (CoI == 'C' || CoI == 'c')
                {
                    Console.Write("Numero de funcionarios: ");
                    int numero = int.Parse(Console.ReadLine());
                    pessoas.Add(new PessoaFisica(nome, valor, numero));
                }
                else Console.WriteLine("Entrada invalida!");
            }

            double total = 0;
            Console.WriteLine("IMPOSTOS PAGOS");
            foreach(Pessoa pessoa in pessoas)
            {
                Console.WriteLine($"{pessoa.nome}: $ {pessoa.CalculaImposto().ToString("F2")}");
                total += pessoa.CalculaImposto();
            }

            Console.WriteLine($"TOTAL DE IMPOSTOS: $ {total.ToString("F2")}");
        }
    }
}
