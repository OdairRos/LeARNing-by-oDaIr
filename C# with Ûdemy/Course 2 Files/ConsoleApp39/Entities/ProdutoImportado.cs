using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp39.Entities
{
    class ProdutoImportado : Produto
    {
        public double PrecoAlfandega { get; set; }

        public ProdutoImportado()
        {
        }

        public ProdutoImportado(string nome, double preco,double precoAlfandega) : base( nome,  preco)
        {
            PrecoAlfandega = precoAlfandega;
        }

        public override string EtiquetaPreco()
        {
            return base.EtiquetaPreco() + $"(Custo alfangeda: $ {PrecoAlfandega})";    
        }
    }
}
