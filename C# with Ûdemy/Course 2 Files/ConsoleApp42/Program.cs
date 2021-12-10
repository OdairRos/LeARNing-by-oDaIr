using System;

namespace ConsoleApp42
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                int i = int.Parse(Console.ReadLine());
                int resultado = 2 / i;
                Console.WriteLine(resultado);
            }
            catch (DivideByZeroException div)
            {
                Console.WriteLine("Não é permitido divisão por 0\n"+ div.Message);
            }
            catch (FormatException exp)
            {
                Console.WriteLine("Não é permitido Letras!\n" + exp.Message);
            }
            finally
            {
                Console.WriteLine("Fim");
            }
        }
    }
}
