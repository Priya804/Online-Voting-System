using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CompareValidator1.IsValid==true&& RequiredFieldValidator1.IsValid == true && RequiredFieldValidator2.IsValid == true && RequiredFieldValidator3.IsValid == true && RequiredFieldValidator4.IsValid == true)

        {
            String votername = TextBox1.Text;
            String dob = TextBox2.Text;
            String city = TextBox3.Text;
            String password = TextBox4.Text;
            String username = TextBox6.Text;
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\hp\source\repos\WebSite3\WebSite3\App_Data\Database.mdf; Integrated Security = True");
            con.Open();
            SqlCommand com = new SqlCommand("insert into Register values('" + votername + "'," + dob + ",'" + city + "','"+password+"','" + username + "')", con);
            SqlDataReader dr = com.ExecuteReader();
            Response.Redirect("Login.aspx");
        }
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}