using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        decimal price = 0;
        foreach (GridViewRow item in GridView1.Rows)
        {
            price = price +Convert.ToDecimal(item.Cells[3].Text);
        }
        amount.Text = "Total Amount: " + price.ToString();
    }

    protected void toplaceorder_Click(object sender, EventArgs e)
    {
        if (Session["Username"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Redirect("Payment.aspx");
        }
    }
}