using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class addprod : System.Web.UI.Page
{
    string imagefile;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void addbutt_Click(object sender, EventArgs e)
    {
        string catego = string.Empty;
        string subcatego = string.Empty;

        //category...
        if (ca1.Checked)
        {
            catego = "Cake";
        }
        else if (ca2.Checked)
        {
            catego = "CupCake";
        }
        else if (ca3.Checked)
        {
            catego = "Babka";
        }
        else if (ca4.Checked)
        {
            catego = "CakeSupplies";
        }
        else
        {
            catego = "New";
        }

        // Subcategory...
        if (sca2.Checked)
        {
            subcatego = "Classic";
        }
        else if (sca3.Checked)
        {
            subcatego = "Organic";
        }
        else
        {
            subcatego = "None";
        }

        //image save command...
        image.SaveAs(Request.PhysicalApplicationPath + "Assets/Img/Product/" + image.FileName.ToString());
        imagefile = "Assets/Img/Product/" + image.FileName.ToString();
        //start insert...
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString.ToString());
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Insert into [Product] (Product_name,Product_price,Product_cat,Product_subcat,Product_img,Product_des)values(@name,@price,@cat,@subcat,@img,@des)";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@name", name.Text);
        cmd.Parameters.AddWithValue("@price", price.Text);
        cmd.Parameters.AddWithValue("@cat", catego);
        if (subcatego == "None")
            cmd.Parameters.AddWithValue("@subcat", DBNull.Value);
        else
            cmd.Parameters.AddWithValue("@subcat", subcatego);

        cmd.Parameters.AddWithValue("@img", imagefile);
        cmd.Parameters.AddWithValue("@des", des.Text);
        int Result = cmd.ExecuteNonQuery();
        if (Result > 0)
        {
            Response.Redirect(Request.RawUrl);
            Addlbl.Text = "You have seccessfully added the product";
            //give it color... ( don't forget...)!!!
        }

        con.Close();

    }

    protected void followproduct_Click(object sender, EventArgs e)
    {
        followup.Visible = true;
        centercolumn.Visible = false;
    }

    protected void Addnewproduct_Click(object sender, EventArgs e)
    {
        centercolumn.Visible = true;
        followup.Visible = false;
    }
}