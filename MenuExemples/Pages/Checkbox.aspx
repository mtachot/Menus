<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkbox.aspx.cs" Inherits="MenuExemples.Pages.Checkbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Resources/CSS/Checkbox.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Flat UI - Custom checkboxes</h1>
            <h2>With only CSS</h2>

            <p>Do you like?</p>
            <p>
                <input type="checkbox" id="test1" /><label for="test1"><span class="ui"></span>Red</label></p>
            <p>
                <input type="checkbox" id="test2" /><label for="test2"><span class="ui"></span>Green</label></p>
            <p>
                <input type="checkbox" id="test3" /><label for="test3"><span class="ui"></span>Blue</label></p>
        </div>
    </form>
</body>
</html>
