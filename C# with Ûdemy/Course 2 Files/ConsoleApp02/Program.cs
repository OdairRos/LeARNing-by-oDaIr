using System;

namespace ConsoleApp02
{
    class Program
    {
        static void Main(string[] args)
        {
            string letras = "ABC";
            sbyte sb= 100;
            byte b = 150;
            Console.WriteLine(letras + letras);
            Console.WriteLine(b + sb);

            int n3 = 2; int n4 = 5;
            double resu = n3 / n4;
            Console.WriteLine(resu);
            double doub = 2.54444;
            string numeros = "123";
            int num1 = int.Parse(numeros);
            float num2 = (float)doub;
        }
    }
}
