using System;

namespace ConsoleApp10
{
    class Program
    {
        static void Main(string[] args)
        {
            int horas;

            Console.WriteLine("Que horas são? ");
            horas = int.Parse(Console.ReadLine());

            if (horas > 18 || horas <= 4) Console.WriteLine("Boa noite"); else if (horas <= 18 && horas >= 12) Console.WriteLine("Boa tarde");
            else if(horas < 12 && horas >= 5 ) Console.WriteLine("Bom dia");
        }
    }
}
