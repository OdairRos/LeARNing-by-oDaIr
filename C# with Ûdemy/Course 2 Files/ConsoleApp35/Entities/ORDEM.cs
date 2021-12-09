using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ConsoleApp35.Entities.Enums;

namespace ConsoleApp35.Entities
{
    class ORDEM
    {
        public DateTime Momento { get; set; }
        public OrderStatus Status { get; set; }
        public List<OrderItem> Items { get; set; } = new List<OrderItem>();


        public void AddItem(OrderItem item)
        {
            Items.Add(item);
        }

        public void RemoveItem(OrderItem item)
        {
            Items.Remove(item);
        }

        public double total()
        {
            double total = 0.00;
            foreach(OrderItem item in Items)
            {
                total = total + item.SubTotal();
            }

            return total;
        }
    }
}
