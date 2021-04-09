using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Proddes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void tocart_Click(object sender, EventArgs e)
    {
        string Name = string.Empty;
        decimal priceq = 0;
        decimal qnt = Convert.ToDecimal(gettheqnt.Text);
        foreach (DataListItem item in DataList2.Items)
        {
            Label namelb = item.FindControl("Prodcutname") as Label;
            Name = namelb.Text;
            Label price = item.FindControl("Product_priceLabel") as Label;
            priceq = (qnt * Convert.ToDecimal(price.Text));
        }

        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString.ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Insert into [Cart](Product_name,Product_price,Product_qnt,Product_id,Customer_id)values(@product_name,@product_price,@product_qnt,@product_id,@Customer_id)";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@product_name", Name);
        cmd.Parameters.AddWithValue("@product_qnt", qnt);
        cmd.Parameters.AddWithValue("@product_price", priceq);
        cmd.Parameters.AddWithValue("@Customer_id", Session["Username"].ToString());
        cmd.Parameters.AddWithValue("@product_id", Request.QueryString["id"]);
        int Result = cmd.ExecuteNonQuery();
        if (Result>0)
        {
            Response.Redirect(Request.RawUrl);
        }
    }
}