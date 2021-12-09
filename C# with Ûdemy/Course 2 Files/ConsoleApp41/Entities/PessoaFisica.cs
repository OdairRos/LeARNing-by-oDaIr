using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp41.Entities
{
    class PessoaFisica : Pessoa
    {
        public double GastoSaude { get; set; }

        public PessoaFisica()
        {
        }

        public PessoaFisica(string nome, double rendaAnual, double gastoSaude): base( nome,  rendaAnual)
        {
            GastoSaude = gastoSaude;
        }

        public override double CalculaImposto()
        {
            double imposto;
            if (RendaAnual < 20000)
                imposto = 15;
            else
                //RendaAnual = RendaAnual - ;
                imposto = 25;
            return ((RendaAnual * imposto)/100 ) - ((GastoSaude / 100) * 50);
          

        }
    }
}
