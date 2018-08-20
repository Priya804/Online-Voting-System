<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
    <p style="border-color: #000000; padding: 20px; margin: 20px; font-family: 'Bodoni MT'; font-size: xx-large; font-weight: bold; font-style: normal; text-align: center; color: #FFFFFF; background-color: #000000; ">VOTER&#39;S HOME PAGE</p>

        <div style="border: thin solid #000000; position:absolute; top: 116px; left: 2%; height: 694px; width: 1241px; margin-left: 1px; font-family: 'Times New Roman', Times, serif; font-size: 25px; margin-top: 0px; float: right; clip: rect(auto, auto, auto, auto); color: #000000; clear: none;" aria-orientation="horizontal">Welcome
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="candidate" HeaderText="candidate" SortExpression="candidate" />
                    <asp:BoundField DataField="oname" HeaderText="oname" SortExpression="oname" />
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
            <br />
            <b>Choose to vote:</b>&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="candidate" DataValueField="candidate" Height="32px" Width="140px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [candidate], [oname] FROM [Organization]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="Aqua" Font-Bold="True" Font-Size="Large" Height="31px" OnClick="Button1_Click" Text="Vote" Width="72px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="Aqua" Font-Bold="True" Font-Size="Large" Height="31px" OnClick="Button2_Click" Text="Logout" Width="72px" />
            <br />
            
            <br />
            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            
        </div>
    </form>
</body>
</html>
