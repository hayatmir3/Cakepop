using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
           // loginb.Visible = false;
           // logoutb.Visible = true;
           // labusername.Text = "Welecome" + Session["Username"].ToString();
        }


    }

    protected void logoutb_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("main.aspx");
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Response.Redirect("product.aspx?cate=cupcake");
    }

    protected void Unnamed2_Click(object sender, EventArgs e)
    {
        Response.Redirect("product.aspx?cate=test");
    }
}
