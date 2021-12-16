using System;
using System.Linq;
using System.Collections.Generic;
namespace ConsoleApp78
{
    class Program
    {
        static void Main(string[] args)
        {

            // data source: 
            int[] numbers = new int[] {1,2,3,4,5,6,7,8,9,0};

            // query expression
            IEnumerable<int> result = numbers
                .Where(x => x % 2 == 0)
                .Select(x => x * 10)
                .Where(x => x == 80);

            // Execute the query
            foreach(int x in result)
            {
                Console.WriteLine(x);
            }
        }
    }
}
