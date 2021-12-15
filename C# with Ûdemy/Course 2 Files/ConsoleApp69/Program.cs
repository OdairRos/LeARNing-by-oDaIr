using System;
using System.Collections.Generic;
namespace ConsoleApp69
{
    class Program
    {
        static void Main(string[] args)
        {
            Dictionary < string,string> cookies = new Dictionary<string, string>();
            cookies["Usuario"] = "Odair";
            cookies["Email"] = "maria@gmail.com";
            cookies["phone"] = "988776655";
            cookies.Remove("phone");
            cookies["phone"] = "911223344";

            Console.WriteLine(cookies["phone"]);
            Console.WriteLine(cookies["Usuario"]);
            cookies.Remove("Email");

            foreach (KeyValuePair<string, string> item in cookies)
            {
                Console.WriteLine(item.Key + ": " + item.Value);
            }
        }
    }
}
