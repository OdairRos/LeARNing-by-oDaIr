using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp44.Entities
{
    class Reserva
    {
        public DateTime Checkin { get; set; }
        public DateTime Checkout { get; set; }
        public int RoomNumber { get; set; }

        public Reserva()
        {
        }

        public Reserva(DateTime checkin, DateTime checkout, int roomNumber)
        {
            Checkin = checkin;
            Checkout = checkout;
            RoomNumber = roomNumber;
        }

        public int Duration()
        {
            TimeSpan duration = Checkout.Subtract(Checkin);
            return (int)duration.TotalDays;

        }

        public override string ToString()
        {
            return $"Room: {RoomNumber}, Check-in: {Checkin.ToString("dd/MM/yyyy")}, check-out: {Checkout.ToString("dd/MM/yyyy")}, {Duration()} nights.";
        }

        public string updateDates(DateTime checkin, DateTime checkout)
        {
            DateTime now = DateTime.Now;
            if (checkin < now || checkout < now)
            {
                return "Error in reservation: reservation dates must be future dates";
            }
            if (checkout <= checkin)
            {
                return "Error in reservation: check-out date must be after check-in ";
            }

            Checkin = checkin;
            Checkout = checkout;
            return null;

        }
    }
}
