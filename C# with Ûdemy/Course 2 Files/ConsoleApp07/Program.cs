using System;

namespace ConsoleApp07
{
    class Program
    {
        static void Main(string[] args)
        {
            float[] x = new float[3];
            float[] y =  new float[3];
            char letra = 'X';

            float[] area = new float[2];
            for(int i=0; i<= 1; i++) {
                Console.WriteLine($"Digite as medidas do triângulo  {letra}");
                for(int j=0; j<= 2; j++)
                {
                    if(i==0)
                        x[j]=float.Parse(Console.ReadLine());
                    else
                        y[j] = float.Parse(Console.ReadLine());
                }
                letra = 'Y';
            }

            foreach (float numero in x) 
                area[0] += numero;
            Console.WriteLine($"Área de X {area[0]/2}");

            foreach (float numero in y) 
                area[1] += numero;
           Console.WriteLine($"Área de Y {area[1]/2}");

            if ((area[0]) / 2 > (area[1])/2)
                Console.WriteLine("Maior area: X");
            else
                Console.WriteLine("Maior area: Y");
        }
    }
}
