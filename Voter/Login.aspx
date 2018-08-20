<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Voting System</title>
</head>
<body style="height: 23px; ">
    
        <p style="border-color: #000000; padding: 20px; margin: 20px; font-family: 'Bodoni MT'; font-size: xx-large; font-weight: bold; font-style: normal; text-align: center; color: #FFFFFF; background-color: #000000; text-decoration: underline;">ONLINE VOTING SYSTEM:VOTER&#39;S LOGIN</p>

    <form id="form1" runat="server">
        
        <div style="border: thin solid #000000; position:absolute; top: 116px; left: 2%; height: 694px; width: 1241px; margin-left: 1px; font-family: 'Times New Roman', Times, serif; font-size: 35px; margin-top: 0px; float: right; clip: rect(auto, auto, auto, auto); color: #000000; clear: none;" aria-orientation="horizontal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp; 
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            <br />
&nbsp; Username:
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="41px" Width="921px"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
&nbsp; Password:
            <br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="41px" style="margin-top: 0px" Width="921px"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" BackColor="Aqua" Text="Login" OnClick="Button1_Click" Height="37px" Width="125px" Font-Bold="True" Font-Size="Large" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
        </div>
    </form>
    
</body>
</html>
