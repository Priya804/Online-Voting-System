<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_election.aspx.cs" Inherits="Admin_Add_election" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p style="border-color: #000000; padding: 20px; margin: 20px; font-family: 'Bodoni MT'; font-size: xx-large; font-weight: bold; font-style: normal; text-align: center; color: #FFFFFF; background-color: #000000; text-decoration: underline;">ADD ELECTIONS</p>

    <form id="form1" runat="server">
        <div style="border: thin solid #000000; position:absolute; top: 116px; left: 2%; height: 646px; width: 1241px; margin-left: 1px; font-family: 'Times New Roman', Times, serif; font-size: 50px; margin-top: 0px; float: right; clip: rect(auto, auto, auto, auto); color: #000000; clear: none;" aria-orientation="horizontal">Election Date:<br />
            <asp:TextBox ID="TextBox1" runat="server" Height="41px" TextMode="DateTime" Width="921px"></asp:TextBox>
            &nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Larger" OnClick="LinkButton1_Click">Select Date</asp:LinkButton>
            &nbsp;<asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            Election Name:<br />
            <asp:TextBox ID="TextBox2" runat="server" Height="41px" Width="921px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="Aqua" Font-Size="Large" Height="40px" OnClick="Button1_Click" Text="Add Election" Width="124px" />
         </div>
    </form>
</body>
</html>
