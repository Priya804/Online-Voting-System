using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Organisation_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\hp\source\repos\WebSite3\WebSite3\App_Data\Database.mdf; Integrated Security = True");
        con.Open();
        SqlCommand com = new SqlCommand("select candidate from Organization where username='" + Session["u"]+"'", con);
        SqlDataReader dr = com.ExecuteReader();
        dr.Read();
        Label1.Text= (dr.GetString(0));
    }

    
    

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/Start.aspx");
    }



    
}