using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidate_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CompareValidator1.IsValid == true && RequiredFieldValidator1.IsValid == true && RequiredFieldValidator2.IsValid == true && RequiredFieldValidator3.IsValid == true && RequiredFieldValidator4.IsValid == true && RequiredFieldValidator5.IsValid==true && RequiredFieldValidator6.IsValid==true)

        {
            String oname = TextBox1.Text;
            String email = TextBox2.Text;
            String username = TextBox3.Text;
            String password = TextBox4.Text;
            String candidate = DropDownList1.SelectedValue;
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\hp\source\repos\WebSite3\WebSite3\App_Data\Database.mdf; Integrated Security = True");
            con.Open();
            SqlCommand com = new SqlCommand("insert into Organization (oname,email,username,password,candidate) values('" + oname + "','" + email + "','" + username + "','" + password + "','"+candidate+"')", con);
            SqlDataReader dr = com.ExecuteReader();
            Response.Redirect("Login.aspx");
        }
    }



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}