using System;
using ConsoleApp32.Entities.Enums;

namespace ConsoleApp32.Entities
{
    class Order
    {
        public int Id { get; set; }
        public DateTime Moment { get; set; }
        public OrderStatus status { get; set; }

        public override string ToString()
        {
            return Id + ", " + Moment + ", " + status;
        }
    }
}
