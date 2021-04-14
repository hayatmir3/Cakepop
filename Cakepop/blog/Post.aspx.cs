using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class blog_Post : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getComment();
        }
    }

    public void getComment()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["Myconnection"].ToString();

        con.Open();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("Select * from [Comment] Order by Id Desc", con);
        da.Fill(dt);
        con.Close();
        PagedDataSource pagedatasource = new PagedDataSource();
        DataView dv = new DataView(dt);
        pagedatasource.DataSource = dv;
        Repeater1.DataSource = pagedatasource;
        Repeater1.DataBind();
    }

    protected void postcomment_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString.ToString());
        SqlCommand cmd = new SqlCommand();

        con.Open();
        cmd.CommandText = "insert into [Comment] (Name, Email, Comment) values(@name,@email,@comment)";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@name", Name.Text);
        cmd.Parameters.AddWithValue("@email", email.Text);
        cmd.Parameters.AddWithValue("@comment", comment.Text);

        cmd.ExecuteNonQuery();

        con.Close();

        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Comment Posted Successfully.');window.location=Post.aspx';", true);

        getComment();

    }

}