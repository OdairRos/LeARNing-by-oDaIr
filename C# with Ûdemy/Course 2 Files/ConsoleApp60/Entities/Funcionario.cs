using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Globalization;

namespace ConsoleApp60.Entities
{
    class Funcionario : IComparable
    {
        public string nome { get; set; }
        public double salario { get; set; }

        public Funcionario(string csvFuncionario)
        {
            string[] vet = csvFuncionario.Split(",");
            this.nome = vet[0];
            this.salario = double.Parse(vet[1]);
        }

        public override string ToString()
        {
            return $"{nome}, {salario.ToString("F2", CultureInfo.InvariantCulture)}";
        }

        public int CompareTo(object obj)
        {
            if(!(obj is Funcionario))
            {
                throw new ArgumentException("Erro de comparação: Argument not is an Employee");
            }

            Funcionario outro = obj as Funcionario;
            return nome.CompareTo(outro.nome);
           
        }
    }
}
