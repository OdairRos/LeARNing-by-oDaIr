using System;
using ConsoleApp35.Entities;
using ConsoleApp35.Entities.Enums;
namespace ConsoleApp35
{
    class Program
    {
        static void Main(string[] args)
        {

            ORDEM ordem = new ORDEM(); 

            Console.WriteLine("Digite os dados do cliente: ");
            Console.Write("Nome: ");
            string nome = Console.ReadLine();
            Console.Write("Email: ");
            string email = Console.ReadLine();
            Console.Write("Data de aniversario (DD/MM/YYYY): ");
            DateTime aniver = DateTime.Parse(Console.ReadLine());

    
            Console.Write("Digite os dados da ordem: \nStatus: ");
             OrderStatus status = Enum.Parse<OrderStatus>(Console.ReadLine());

            Cliente cliente1 = new Cliente(nome, email, aniver, status);;

            Console.Write("Quantos items possui esta ordem?");
            int n = int.Parse(Console.ReadLine());
            for(int i= 0; i < n;i++)
            {
                Console.WriteLine($"Digite os dados do item #{i + 1}");
                Console.Write("Nome do produto: ");
                string PdNome = Console.ReadLine();
                Console.Write("Preço do produto: ");
                double PdPreco = double.Parse(Console.ReadLine());
                Console.Write("Quantidade: ");
                int PdQuantidade = int.Parse(Console.ReadLine());

                OrderItem item = new OrderItem(PdQuantidade, PdPreco, PdNome);
                
                ordem.AddItem(item);
            }

            Console.WriteLine(" =========================================  Resumo da ordem  =========================================");
            Console.WriteLine($"Momento da ordem: {DateTime.Now.ToString("dd/MM/yy HH:mm:ss")}");
            Console.WriteLine($"Status da ordem: {cliente1.Status}");
            Console.WriteLine($"Cliente: {cliente1.Name} ({cliente1.BirthDay.ToShortDateString()}) - {cliente1.Email}");
            Console.WriteLine($"Items da ordem: ");
            foreach(OrderItem orderItem in ordem.Items)
            {
                Console.WriteLine(orderItem);
            }
            Console.WriteLine($"Preço total: {ordem.total()}");
        }
    }
}
