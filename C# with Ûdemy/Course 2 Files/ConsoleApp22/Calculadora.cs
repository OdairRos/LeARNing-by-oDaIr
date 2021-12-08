using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp22
{
    class Calculadora
    {
        public static int soma(params int[] num)
        {
            int sum = 0;
            for(int i=0; i < num.Length; i++)
            {
                sum += num[i];
            }
            return sum;
        }

        public static void triplica(ref int a)
        {
            a = a * 3;
        }
    }
}
