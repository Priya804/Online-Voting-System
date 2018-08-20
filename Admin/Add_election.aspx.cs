using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Add_election : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String dateofElection = TextBox1.Text;
        String electionName = TextBox2.Text.ToString();
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\hp\source\repos\WebSite3\WebSite3\App_Data\Database.mdf; Integrated Security = True");
        con.Open();
        SqlCommand com = new SqlCommand("insert into add_election values('" + dateofElection + "','" + electionName + "')", con);
        SqlDataReader dr = com.ExecuteReader();
        int num_rows = dr.FieldCount;
        
        if (num_rows > 0)
        {
            //election added successfully
            Response.Redirect("home.aspx?m=" + Server.UrlEncode("Election Added Successfully !"));
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
}