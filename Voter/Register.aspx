<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p style="border-color: #000000; padding: 20px; margin: 20px; font-family: 'Bodoni MT'; font-size: xx-large; font-weight: bold; font-style: normal; text-align: center; color: #FFFFFF; background-color: #000000; text-decoration: underline;">VOTER&#39;S REGISTRATION</p>
    <form id="form1" runat="server">
        <div style="border: thin solid #000000; position:absolute; top: 116px; left: 2%; height: 942px; width: 1241px; margin-left: 1px; font-family: 'Times New Roman', Times, serif; font-size: 50px; margin-top: 0px; float: right; clip: rect(auto, auto, auto, auto); color: #000000; clear: none;" aria-orientation="horizontal">
            <br />
            Voter name:&nbsp;
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Width="921px" AutoPostBack="True" Height="41px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            Date of Birth:&nbsp;&nbsp;<br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" Height="41px" OnTextChanged="TextBox2_TextChanged" Width="921px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<br />
            City:&nbsp;<br />
            <asp:TextBox ID="TextBox3" runat="server" Width="921px" AutoPostBack="True" Height="41px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<br />
            Username:<br />
            <asp:TextBox ID="TextBox6" runat="server" Width="921px" AutoPostBack="True" Height="41px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Password:&nbsp;
            <br />
            <asp:TextBox ID="TextBox4" runat="server" Width="921px" TextMode="Password" Height="41px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Confirm Password:&nbsp;&nbsp;&nbsp;
            <br />
            <asp:TextBox ID="TextBox5" runat="server" Width="921px" TextMode="Password" Height="41px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" EnableClientScript="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" EnableClientScript="False" ErrorMessage="Password and Confirm Password does not match" ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />
            Already have an account?<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Click Here</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="Aqua" OnClick="Button1_Click" Text="Register" Height="37px" Width="137px" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />

        </div>
        <p>
            
            &nbsp;</p>
    </form>
</body>
</html>
