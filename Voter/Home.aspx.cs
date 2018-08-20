using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\hp\source\repos\WebSite3\WebSite3\App_Data\Database.mdf; Integrated Security = True");
        con.Open();
        SqlCommand com = new SqlCommand("Select username from Register where username='" + Session["u"] + "'", con);
        SqlDataReader dr = com.ExecuteReader();
        dr.Read();
        Label1.Text = (dr.GetString(0));

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String can = DropDownList1.SelectedValue;
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\hp\source\repos\WebSite3\WebSite3\App_Data\Database.mdf; Integrated Security = True");
        con.Open();
        SqlCommand cm1 = new SqlCommand("select status from Register where username='" + Session["u"] + "' ",con);
        SqlDataReader d1 = cm1.ExecuteReader();
        d1.Read();
        if (d1.GetString(0).Equals("y"))
        {
            Label2.Text = ("You have already given vote");
            
        }
        else
        {
            d1.Close();
            con.Close();
            con.Open();
            SqlCommand cm2 = new SqlCommand("Update Register set status='y' where username='" + Session["u"] + "' ", con);
            SqlDataReader d2 = cm2.ExecuteReader();
            con.Close();
            con.Open();
            SqlCommand com = new SqlCommand("update Organization set vote=vote+1 where candidate='" + can + "'", con);
            SqlDataReader dr = com.ExecuteReader();
            Label3.Text = "Successful in giving vote";
        }
        
        
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/Start.aspx");
    }
}