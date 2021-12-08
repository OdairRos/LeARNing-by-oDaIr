using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp09
{
    class Produto
    {

        public string Nome;
        public double Preco;
        public int Quantidade;


        public  double ValorTotalEmEstoque()
        {
            
            return Quantidade * Preco;
        }

        public  void AdcionarProdutos(int quantidade)
        {
            Quantidade += quantidade;
            Console.WriteLine(Quantidade);
        }

        public  void RemoverProdutos(int quantidade)
        {
            Quantidade -= quantidade;
            Console.WriteLine(Quantidade);
        }

        public override string ToString()
        {
            return Nome 
                + ", $ " 
                + Preco.ToString("F2")
                + ", "
                + Quantidade
                + " Unidades, Total: $ "
                + ValorTotalEmEstoque().ToString("F2");
        }
    }
}
