<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MenuExemples.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="../Resources/CSS/TextboxLogin.css" />
</head>
<body>
    <form id="mainForm" runat="server">
        <div style="position: absolute; margin: 20% 0 0 35%;">
            <div>
                <asp:Label ID="lblLogin" runat="server" Text="Login :" style="padding-left: 3px;" />
                <asp:Label ID="lblPassword" runat="server" Text="Password :" style="margin-left: 29%;" />
            </div>
            <div>
                <asp:TextBox ID="txtLogin" runat="server" CssClass="txtbox_Login" />
                <asp:TextBox ID="txtPassword" runat="server" CssClass="txtbox_Login" style="margin-left: 5px;" />
                <asp:Button ID="btnLogin" runat="server" Text="Encrypt" style="padding-top:6px; padding-bottom:6px; margin-left:3px;" />
            </div>
            <br/>
            <div>
                <asp:Label ID="lblEncryptedLogin" runat="server" style="padding-left: 3px;" />
                <br />
                <asp:Label ID="lblEncryptedPassword" runat="server" style="padding-left: 3px;" />
            </div>
        </div>
    </form>
</body>
</html>
