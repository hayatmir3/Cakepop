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
            signin.Visible = false;
            signout.Visible = true;
            usericon.Visible = true;
            userlbl.Text = "Hello!" + Session["Username"].ToString();
        }


    }

    protected void signout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Home.aspx");
    }


    protected void signin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void bagicon_Click(object sender, EventArgs e)
    {
        Response.Redirect("cart.aspx");
    }

    protected void usericon_Click(object sender, EventArgs e)
    {
        Response.Redirect("cuprofile.aspx");
    }
}
