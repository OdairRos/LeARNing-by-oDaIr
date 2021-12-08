using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp12
{
    class Aluno
    {
        public string Nome;
        public double nota1;
        public double nota2;
        public double nota3;

        public void AproRepr()
        {
            double media = nota1 + nota2 + nota3;
            Console.WriteLine($"NOTA FINAL = {media} ");
            if (media < 60) { 
                Console.WriteLine($"REPROVADO\nFALTARAM {60-media} PONTOS");

            } 
            else{ 
                Console.WriteLine("APROVADO");
            }

        }
    }
}
