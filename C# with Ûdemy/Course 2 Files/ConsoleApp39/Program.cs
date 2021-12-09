using System;
using System.Collections.Generic;
using ConsoleApp39.Entities;
namespace ConsoleApp39
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Produto> produtos = new List<Produto>();
            Console.Write("Digite o numero de produtos: ");
            int n = int.Parse(Console.ReadLine());
            for(int i=0; i<n; i++)
            {
                Console.Write("Comun, Usado ou Importado(c/u/i)");
                char opc = Char.Parse(Console.ReadLine());

                Console.Write("Nome: ");
                string nome = Console.ReadLine();

                Console.Write("Preço: ");
                double preco = double.Parse(Console.ReadLine());


                if(opc == 'c')
                {
                    produtos.Add(new Produto(nome, preco));
                }
                else if(opc == 'i')
                {
                    Console.Write("Preço alfandega: ");
                    double precoAlfandega = double.Parse(Console.ReadLine());
                    produtos.Add(new ProdutoImportado(nome, preco, precoAlfandega));
                }
                else if(opc == 'u')
                {
                    Console.Write("Data de fabricação (DD/MM/YYYY): ");
                    DateTime data = DateTime.Parse(Console.ReadLine()) ;
                    produtos.Add(new ProdutosUsados(nome, preco, data));
                }
                else
                {
                    Console.WriteLine("Opção invalida");
                }           
            }

            Console.WriteLine("ETIQUETA DE PREÇO: ");
            foreach(Produto prod in produtos)
            {
                Console.WriteLine(prod.EtiquetaPreco());
            }
        }
    }
}
