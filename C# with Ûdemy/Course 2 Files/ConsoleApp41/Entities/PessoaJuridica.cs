using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp41.Entities
{
    class PessoaJuridica : Pessoa
    {

        public int NumeroFuncionario { get; set; }

        public PessoaJuridica()
        {
        }

        public PessoaJuridica(string nome, double rendaAnual, int numeroFuncionario) : base( nome,  rendaAnual)
        {
            NumeroFuncionario = numeroFuncionario;
        }

        public override double CalculaImposto()
        {
            double imposto = 0;

            if (NumeroFuncionario > 10)
                imposto = 16;
            else
                imposto = 14;
            return (RendaAnual * imposto) / 100;
            
        }
    }
}
