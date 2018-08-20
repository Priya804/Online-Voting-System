using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        String username = TextBox1.Text;
        String password = TextBox2.Text;
        Session["u"] = username;
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\hp\source\repos\WebSite3\WebSite3\App_Data\Database.mdf; Integrated Security = True");
        con.Open();
        SqlCommand com=new SqlCommand("select * from Register where username='"+username+"'and password='"+password+"'",con);
        SqlDataReader dr = com.ExecuteReader();
        bool s = dr.Read();
        if (s)
            Response.Redirect("Home.aspx");
        else
            Label1.Text = "Username or Password is incorrect";
    }

    
}