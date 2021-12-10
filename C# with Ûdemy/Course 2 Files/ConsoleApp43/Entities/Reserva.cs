using System;


namespace ConsoleApp43.Entities
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

        public  int Duration()
        {
            TimeSpan duration = Checkout.Subtract(Checkin);
            return (int)duration.TotalDays;
            
        }

        public override string ToString()
        {
            return $"Room: {RoomNumber}, Check-in: {Checkin.ToString("dd/MM/yyyy")}, check-out: {Checkout.ToString("dd/MM/yyyy")}, {Duration()} nights.";
        }

        public void updateDates(DateTime checkin, DateTime checkout)
        {
            Checkin = checkin;
            Checkout = checkout;
        }
    }
}
