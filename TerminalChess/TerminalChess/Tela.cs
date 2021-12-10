using System;
using tabuleiro;

namespace TerminalChess
{
    class Tela
    {

        public static void ImprimirTabuleiro(Tabuleiro tabuleiro)
        {/*  
             Recebe um tabuleiro junto com seus atributos: linhas e colunas
             Desenha o tabuleiro conforme seu tamanho e aloca as peças
         */
            for(int i=0; i<tabuleiro.linhas; i++)
            {
                for(int j=0; j < tabuleiro.colunas; j++)
                {
                    if (tabuleiro.peca(i, j) == null)
                        Console.Write("- ");
                    else
                        Console.Write(tabuleiro.peca(i, j) + " ");
                }
                Console.WriteLine();
            }
        }
    }
}
