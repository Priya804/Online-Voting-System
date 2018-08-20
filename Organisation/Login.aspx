<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Organisation_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p style="border-color: #000000; padding: 20px; margin: 20px; font-family: 'Bodoni MT'; font-size: xx-large; font-weight: bold; font-style: normal; text-align: center; color: #FFFFFF; background-color: #000000; text-decoration: underline;">ORGANIZATION&#39;S PANEL LOGIN</p>

    <form id="form1" runat="server">
        <div style="border: thin solid #000000; position:absolute; top: 116px; left: 2%; height: 765px; width: 1241px; margin-left: 1px; font-family: 'Times New Roman', Times, serif; font-size: 35px; margin-top: 0px; float: right; clip: rect(auto, auto, auto, auto); color: #000000; clear: none;" aria-orientation="horizontal">
            
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            <br />
            Username:<br />
            <asp:TextBox ID="TextBox1" runat="server" Height="41px" Width="921px"></asp:TextBox>
            <br />
            Password:<br />
            <asp:TextBox ID="TextBox2" runat="server" Height="41px" Width="921px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="Aqua" Font-Bold="True" Font-Size="Large" Height="40px" OnClick="Button1_Click" Text="Login" Width="98px" />
            
        </div>
    </form>
</body>
</html>
