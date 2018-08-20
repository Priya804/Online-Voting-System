<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Candidate_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p style="border-color: #000000; padding: 20px; margin: 20px; font-family: 'Bodoni MT'; font-size: xx-large; font-weight: bold; font-style: normal; text-align: center; color: #FFFFFF; background-color: #000000; ">CANDIDATE&#39;S HOME PAGE</p>

    <form id="form1" runat="server">
        <div style="border: thin solid #000000; position:absolute; top: 116px; left: 2%; height: 607px; width: 1241px; margin-left: 1px; font-family: 'Times New Roman', Times, serif; font-size: 35px; margin-top: 0px; float: right; clip: rect(auto, auto, auto, auto); color: #000000; clear: none;" aria-orientation="horizontal">
            
            <br />
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="votername" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="307px" Width="849px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="votername" HeaderText="votername" ReadOnly="True" SortExpression="votername" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [votername], [city], [dob] FROM [Register]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="Aqua" Font-Bold="True" Font-Size="Large" Height="29px" OnClick="Button1_Click" Text="Logout" Width="76px" />
        </div>
    </form>
</body>
</html>
