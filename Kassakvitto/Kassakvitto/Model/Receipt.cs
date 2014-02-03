namespace Kassakvitto.Model
{
    using System;

    public class Receipt
    {
        public Receipt(double subtotal)
        {
            this.Calculate(subtotal);
        }

        double _subtotal;
        public double Subtotal
        {
            get { return _subtotal; }
            private set 
            {
                if (value >= 0)
                    _subtotal = value;
                else
                    throw new ArgumentOutOfRangeException();
            }
        }

        public double MoneyOff { get; private set; }
        public double Total { get; private set; }
        public double DiscountRate { get; private set; }
        public void Calculate(double subtotal)
        {
            this.Subtotal = subtotal;

            if (this.Subtotal <= 499)
                this.DiscountRate = 0;
            else if (this.Subtotal <= 999)
                this.DiscountRate = 5;
            else if (this.Subtotal <= 4999)
                this.DiscountRate = 10;
            else if (this.Subtotal >= 5000)
                this.DiscountRate = 15;

            this.MoneyOff = (this.DiscountRate > 0) ? (this.DiscountRate / 100) * this.Subtotal : 0.00;
            this.Total = (this.MoneyOff > 0) ? (this.Subtotal - this.MoneyOff) : this.Subtotal;
        }
    }
}