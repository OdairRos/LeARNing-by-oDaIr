using System;

namespace ConsoleApp014
{
    class Program
    {
        static void Main(string[] args)
        {
            Produto produto = new Produto("TV", 500, 10);
            produto.GetNome();
            produto.SetNome("Agua");
            produto.GetNome();

        }

    }
}
