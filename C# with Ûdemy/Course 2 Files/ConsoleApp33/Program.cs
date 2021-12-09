using System;
using ConsoleApp33.Entities.Enums;
using ConsoleApp33.Entities;

namespace ConsoleApp33
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite o nome do departamento: ");
            string departamentoNome = Console.ReadLine();

            Console.Write("Digite os dados do trabalhador\nNome:");
            string nome = Console.ReadLine();

            Console.Write("Level (Junior/Pleno/Senior): ");
            WorkerLevel level = Enum.Parse<WorkerLevel>(Console.ReadLine());

            Console.Write("Salario base: ");
            double salario = double.Parse(Console.ReadLine());

            Department department = new Department(departamentoNome);
            Worker worker = new Worker(nome, level, salario, department);

            Console.Write("Quantos contratos para este trabalhador? ");
            int j = int.Parse(Console.ReadLine());

            for(int i=0; i <= j; i++)
            {
                Console.WriteLine($"Digite a data do  #{i+1} contrato");
                Console.Write("Data (DD/MM/YYYY): ");
                DateTime date = DateTime.Parse(Console.ReadLine());
                Console.WriteLine("Valor por hora: ");
                double valorHora = double.Parse(Console.ReadLine());
                Console.WriteLine("Duração (horas): ");
                int horas = int.Parse(Console.ReadLine());
                HoursContract contrato = new HoursContract(date, valorHora, horas);
                worker.AdicionarContrato(contrato);
            }

            Console.WriteLine("Digite o mes e ano para calcular o ganho (MM/YYYY): ");
            string mesAno = Console.ReadLine();
            int mes = int.Parse(mesAno.Substring(0, 2));
            int ano = int.Parse(mesAno.Substring(3));

            Console.WriteLine($"Nome: {worker.Nome}");
            Console.WriteLine($"Departamento: {worker.Departamento.Nome}");
            Console.WriteLine($"Ganhos para {mesAno}: {worker.Income(ano,mes)}");
        }
    }
}
