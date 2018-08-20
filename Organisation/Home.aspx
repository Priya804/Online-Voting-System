<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Organisation_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p style="border-color: #000000; padding: 20px; margin: 20px; font-family: 'Bodoni MT'; font-size: xx-large; font-weight: bold; font-style: normal; text-align: center; color: #FFFFFF; background-color: #000000; text-decoration: underline;">ORGANIZATION HOME PAGE&nbsp;</p>

    <form id="form1" runat="server">
        <div style="border: thin solid #000000; position:absolute; top: 116px; left: 2%; height: 765px; width: 1241px; margin-left: 1px; font-family: 'Times New Roman', Times, serif; font-size: 25px; margin-top: 0px; float: right; clip: rect(auto, auto, auto, auto); color: #000000; clear: none;" aria-orientation="horizontal">
            
            <br />
            <br />
            You have choosed
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Button ID="Button2" runat="server" BackColor="Aqua" Height="30px" OnClick="Button2_Click" Text="Logout" Width="86px" Font-Bold="True" Font-Size="Large" />
            
        </div>
    </form>
</body>
</html>
