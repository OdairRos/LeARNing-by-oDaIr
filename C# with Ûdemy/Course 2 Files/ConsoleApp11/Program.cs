using System;

namespace ConsoleApp11
{
    class Program
    {
        static void Main(string[] args)
        {
            Funcionario funcionario = new Funcionario();

            Console.WriteLine("Nome: ");
            funcionario.Nome = Console.ReadLine();

            Console.WriteLine("Salario bruto");
            funcionario.SalarioBruto = double.Parse(Console.ReadLine());

            Console.WriteLine("Imposto");
            funcionario.Imposto = double.Parse(Console.ReadLine());

            Console.WriteLine($"Funcionario: {funcionario.Nome}, ${funcionario.SalarioLiquido()}");

            Console.WriteLine("Digite a porcentagem para aumentar o salario: ");
            funcionario.AumentarSalario(double.Parse(Console.ReadLine()));

            Console.WriteLine($"Dados atualizados: {funcionario.Nome}, ${funcionario.SalarioLiquido()}");
        }
    }
}
