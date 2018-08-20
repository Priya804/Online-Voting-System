<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Candidate_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p style="border-color: #000000; padding: 20px; margin: 20px; font-family: 'Bodoni MT'; font-size: xx-large; font-weight: bold; font-style: normal; text-align: center; color: #FFFFFF; background-color: #000000; text-decoration: underline;">ONLINE VOTING SYSTEM:CANDIDATE&#39;S REGISTRATION</p>

    <form id="form1" runat="server">
        <div style="border: thin solid #000000; position:absolute; top: 116px; left: 2%; height: 765px; width: 1241px; margin-left: 1px; font-family: 'Times New Roman', Times, serif; font-size: 50px; margin-top: 0px; float: right; clip: rect(auto, auto, auto, auto); color: #000000; clear: none;" aria-orientation="horizontal">Candidate&#39;s Name:<br />
            <asp:TextBox ID="TextBox1" runat="server" Height="41px" Width="921px"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Email:<br />
            <asp:TextBox ID="TextBox2" runat="server" Height="41px" TextMode="Email" Width="921px"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Username:<br />
            <asp:TextBox ID="TextBox3" runat="server" Height="41px" Width="921px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Password:<br />
            <asp:TextBox ID="TextBox4" runat="server" Height="41px" Width="921px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Confirm Password:<br />
            <asp:TextBox ID="TextBox5" runat="server" Height="41px" Width="921px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5"  ErrorMessage="Password and confirm password doesnot match" EnableClientScript="False" ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="Aqua" Font-Bold="True" Font-Size="Large" Height="42px" OnClick="Button1_Click" Text="Register" Width="125px" />
            <br />
         
        </div>
    </form>
</body>
</html>
