using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp24
{
    class Funcionario
    {
        public int Id { get; private set; }
        public string Nome { get; private set; }

        public double Salario { get;  set; }

        public Funcionario(int id, string nome, double salario)
        {
            Id = id;
            Nome = nome;
            Salario = salario;
        }

        public void Aumento(double Porcentagem)
        {
            Salario += ((Salario * 10) / 100);

        }
    }
}
