using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Payment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    public Payment()
    {
        con.ConnectionString = ConfigurationManager.
            ConnectionStrings["Myconnection"].ToString();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void placeorder_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.CommandText = "Select * from [Cart] where Customer_id=@Customer_id";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@Customer_id", Session["Username"].ToString());
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        InsertRowToOrder(ds.Tables[0]);
        DeletFromCart();
    }

    private void DeletFromCart()
    {
        con.Open();
        cmd.CommandText = "Delete from [Cart] where Customer_id=@Customer_id2";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@Customer_id2", Session["Username"].ToString());
        cmd.ExecuteNonQuery();
    }

    private void InsertRowToOrder(DataTable dataTable)
    {
        con.Close();
        con.Open();
        cmd.CommandText = "Insert into [Order](product_name,Customer_id,prodcut_qnt,Product_price,Product_id,Orderdate)values(@pname,@cusid,@qnt,@pprice,@pid,@orderdate)";
        cmd.Connection = con;
        foreach (DataRow dr in dataTable.Rows)
        {
            cmd.Parameters.AddWithValue("@pname", dr["product_name"]);
            cmd.Parameters.AddWithValue("@cusid", Session["Username"].ToString());
            cmd.Parameters.AddWithValue("@qnt", dr["prodcut_qnt"]);
            cmd.Parameters.AddWithValue("@pprice", dr["Product_price"]);
            cmd.Parameters.AddWithValue("@pid", dr["Product_id"]);
            cmd.Parameters.AddWithValue("@orderdate", DateTime.Now.ToString());
            cmd.ExecuteNonQuery();
        }
        con.Close();
    }
}