using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp39.Entities
{
    class ProdutosUsados : Produto
    {
        public DateTime DataFabricacao { get; set; }

        public ProdutosUsados()
        {
        }

        public ProdutosUsados(string nome, double preco, DateTime dataFabricacao) : base( nome,  preco)
        {
            DataFabricacao = dataFabricacao;
        }

        public override string EtiquetaPreco()
        {
            return  $"{Nome} (Used) $ {Preco} (Data de fabricação: {DataFabricacao.ToString("dd/MM/yyyy")})";
        }
    }
}
