<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Start.aspx.cs" Inherits="Start" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
    <p style="border-color: #000000; padding: 20px; margin: 20px; font-family: 'Bodoni MT'; font-size: xx-large; font-weight: bold; font-style: normal; text-align: center; color: #FFFFFF; background-color: #000000; ">ONLINE VOTING SYSTEM
        
    </p>
       <div style="border: thin solid #000000; position:absolute; top: 116px; left: 2%; height: 345px; width: 1241px; margin-left: 1px; font-family: 'Times New Roman', Times, serif; font-size: 35px; margin-top: 0px; float: right; clip: rect(auto, auto, auto, auto); color: #000000; clear: none; text-align: inherit;" aria-orientation="horizontal">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem Text="AboutUs" Value="AboutUs"></asp:MenuItem>
                    <asp:MenuItem Text="Login" Value="Login">
                        <asp:MenuItem NavigateUrl="~/Admin/Default.aspx" Text="Admin" Value="Admin"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Organisation/Login.aspx" Text="Organization" Value="Organization"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Candidate/Login.aspx" Text="Candidate" Value="Candidate"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Voter/Login.aspx" Text="Voter" Value="Voter"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Register" Value="New Item">
                        <asp:MenuItem NavigateUrl="~/Voter/Register.aspx" Text="Voter" Value="Voter"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Organisation/Register.aspx" Text="Organization" Value="Organization"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Candidate/Register.aspx" Text="Candidate" Value="Candidate"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
                <StaticMenuItemStyle ForeColor="Black" HorizontalPadding="30px" ItemSpacing="20px" />
        </asp:Menu>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
