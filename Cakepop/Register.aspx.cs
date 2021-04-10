using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void placeorder_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString.ToString());
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Insert into [Customer] (Customer_id,Customer_pass,Email,Fname,Lname)values(@cid,@cpass,@email,@fname,@lname)";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@cid", crusername.Text);
        cmd.Parameters.AddWithValue("@cpass", conpassword.Text);
        cmd.Parameters.AddWithValue("@email", Cremail.Text);
        cmd.Parameters.AddWithValue("fname", Fname.Text);
        cmd.Parameters.AddWithValue("@lname", Lname.Text);
        int Result = cmd.ExecuteNonQuery();
        if (Result > 0)
        {
            Response.Redirect("/Home.aspx");
        }
        else
        {

        }
        
        //give it color... ( don't forget...)!!!
        con.Close();
    }
}