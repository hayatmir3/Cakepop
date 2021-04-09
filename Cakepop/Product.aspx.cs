using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string valeu = sorting.SelectedItem.Value;
        if (Request.QueryString["cate"] != null)
        {
            datalistprod.DataSourceID = null;
            datalistprod.DataSource = SqlDataSource2;
            datalistprod.DataBind();

            if (valeu == "2")
            {
                datalistprod.DataSourceID = null;
                datalistprod.DataSource = SqlDataSource3;
                datalistprod.DataBind();
            }
            else if (valeu == "3")
            {
                datalistprod.DataSourceID = null;
                datalistprod.DataSource = SqlDataSource4;
                datalistprod.DataBind();
            }
            else
            {

            }
        }
        else
        {

        }

        if (Request.QueryString["sub"] != null)
        {
            datalistprod.DataSourceID = null;
            datalistprod.DataSource = SqlDataSource7;
            datalistprod.DataBind();
        }
    }

    protected void datalistprod_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName == "todetails")
        {
            Response.Redirect("Proddes.aspx?id=" + e.CommandArgument.ToString());
        }
    }
}