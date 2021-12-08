using System;

namespace ConsoleApp08
{
    class Program
    {
        static void Main(string[] args)
        {
            Triangulo x, y;
            x = new Triangulo();
            y = new Triangulo();

            Console.WriteLine("Digite as medidas do triangulo X: ");
            x.A = double.Parse(Console.ReadLine());
            x.B = double.Parse(Console.ReadLine());
            x.C = double.Parse(Console.ReadLine());

            Console.WriteLine("Digite as medidas do triangulo Y: ");
            y.A = double.Parse(Console.ReadLine());
            y.B = double.Parse(Console.ReadLine());
            y.C = double.Parse(Console.ReadLine());

            x.CalculaArea();
            y.CalculaArea();

            Console.WriteLine($"Area do triangulo X {x.Area}");
            Console.WriteLine($"Area do triandulo Y {y.Area}");

            if (x.Area > y.Area) Console.WriteLine($"Maior area: {x.Area}");
            else Console.WriteLine($"Maior are: {y.Area}");


        }
    }
}
