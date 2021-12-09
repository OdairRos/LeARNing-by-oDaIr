using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp41.Entities
{
    abstract class Pessoa
    {
        public string nome { get; set; }
        public double RendaAnual { get; set; }

        protected Pessoa()
        {
        }

        protected Pessoa(string nome, double rendaAnual)
        {
            this.nome = nome;
            RendaAnual = rendaAnual;
        }

        public abstract double CalculaImposto();
    }
}
