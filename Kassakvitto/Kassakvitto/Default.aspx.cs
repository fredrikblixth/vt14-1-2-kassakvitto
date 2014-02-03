namespace Kassakvitto
{
    using Kassakvitto.Model;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;

    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalculateReceiptButton_Click(object sender, EventArgs e)
        {
            var receipt = new Receipt(double.Parse(TotalSumTextbox.Text));

            // Receipt summary
            TotalAmount.Text = string.Format("{0:c}", receipt.Subtotal);
            DiscountPercentage.Text = string.Format("{0} %", receipt.DiscountRate);
            DiscountAmount.Text = string.Format("{0:c}", receipt.MoneyOff);
            ToPayAmount.Text = string.Format("{0:c}", receipt.Total);

            ReceiptPanel.Visible = true;
        }
    }
}