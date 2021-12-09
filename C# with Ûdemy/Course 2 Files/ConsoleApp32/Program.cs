using System;
using ConsoleApp32.Entities;
using ConsoleApp32.Entities.Enums;
namespace ConsoleApp32
{
    class Program
    {
        static void Main(string[] args)
        {
            Order order = new Order { 
                Id = 1000,
                Moment = DateTime.Now,
                status = Entities.Enums.OrderStatus.PendingPayment
            };

            Console.WriteLine(order);

            string txt = OrderStatus.PendingPayment.ToString();
            OrderStatus os = Enum.Parse<OrderStatus>("Delivered");
            
            Console.WriteLine(txt);
            Console.WriteLine(os);
        }
    }
}
 