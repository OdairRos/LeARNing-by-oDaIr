using System;

namespace ConsoleApp12
{
    class Program
    {
        static void Main(string[] args)
        {
            Aluno aluno = new Aluno();
            Console.WriteLine("Nome do aluno: ");
            aluno.Nome = Console.ReadLine();

            Console.WriteLine("Digite as três notas do aluno");
            aluno.nota1 = double.Parse(Console.ReadLine());
            aluno.nota2 = double.Parse(Console.ReadLine());
            aluno.nota3 = double.Parse(Console.ReadLine());

            aluno.AproRepr();
        }
    }
}
