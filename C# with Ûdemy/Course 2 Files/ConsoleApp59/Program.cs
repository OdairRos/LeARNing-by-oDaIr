using System;
using ConsoleApp59.Devices;
namespace ConsoleApp59
{
    class Program
    {
        static void Main(string[] args)
        {
            Printer p = new Printer() { SerialNumber = 1039 };
            p.ProcessDoc("My document");
            p.Print("My document");

            Scanner s = new Scanner() { SerialNumber = 2030 };
            s.ProcessDoc("New document");
            Console.WriteLine(s.Scan());

            ComboDevice c = new ComboDevice() { SerialNumber = 3019 };
            c.ProcessDoc("MY NEW DOCUMENT ");
            c.Print("MY NEW DOCUMENT");
            Console.WriteLine(c.Scan());
        }
    }
}
