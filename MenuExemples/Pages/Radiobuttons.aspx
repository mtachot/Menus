<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Radiobuttons.aspx.cs" Inherits="MenuExemples.Pages.Checkboxes" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Resources/CSS/RadioButton.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButton runat="server" ID="rbOption1" Text="Option1" GroupName="groupName1" CssClass="css-checkbox" />
            <asp:RadioButton runat="server" ID="rbOption2" Text="Option2" GroupName="groupName1" CssClass="css-checkbox" />
            <asp:RadioButton runat="server" ID="rbOption3" Text="Option3" GroupName="groupName1" CssClass="css-checkbox" />
        </div>
        <br />
        <br />
        <div>
            <asp:RadioButton runat="server" ID="rbOption11" Text="Option11" GroupName="groupName2" CssClass="css-checkbox2" />
            <asp:RadioButton runat="server" ID="rbOption12" Text="Option12" GroupName="groupName2" CssClass="css-checkbox2" />
            <asp:RadioButton runat="server" ID="rbOption13" Text="Option13" GroupName="groupName2" CssClass="css-checkbox2" />
        </div>
    </form>
</body>
</html>
