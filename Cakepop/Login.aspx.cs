using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void logbutton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString.ToString());
        SqlCommand cmd = new SqlCommand("Checklogin", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Username", txtuser.Text);
        cmd.Parameters.AddWithValue("@Password", txtPass.Text);
        con.Open();
        SqlDataReader checkrole = cmd.ExecuteReader();
        checkrole.Read();
        string table = string.Empty;

        if (checkrole.HasRows)
        {
            table = checkrole.GetString(2); //index 2 for the role column
            if (table == "Admin")
            {
                Response.Redirect("/Admin_dashboard.aspx");
            }
            else if (table == "Customer")
            {
                Session["Username"] = txtuser.Text;
                Response.Redirect("/Home.aspx");
            }
        
        }
        else
        {
            loginmsg.Text = "Username or Password are wrong! ";
            loginmsg.ForeColor = System.Drawing.Color.Red;
        }
    }
}