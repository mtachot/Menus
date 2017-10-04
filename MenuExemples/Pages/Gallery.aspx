<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="MenuExemples.Pages.Gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--  Tells mobile browsers to not scale the page by default. This allows our media queries to be applied instead of the default "scale the page way down" behavior -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Gallery</title>
    <link rel="stylesheet" href="../Resources/CSS/Gallery.css" />
</head>
<body>
    <form id="mainForm" runat="server">
        <div class="wrapper">
            <div class="box">
                <div class="innerContent">
                    First picture
                </div>
            </div>
            <div class="box">
                <div class="innerContent">
                    Second picture
                </div>
            </div>
            <div class="box">
                <div class="innerContent">
                    Third picture
                </div>
            </div>
            <div class="box">
                <div class="innerContent">
                    Fourth picture
                </div>
            </div>
            <div class="box">
                <div class="innerContent">
                    Fifth picture
                </div>
            </div>
            <div class="box">
                <div class="innerContent">
                    Sixth picture
                </div>
            </div>
            <div class="box">
                <div class="innerContent">
                    Seventh picture
                </div>
            </div>
            <div class="box">
                <div class="innerContent">
                    Eighth picture
                </div>
            </div>
        </div>
        <!-- /#wrapper -->
    </form>
</body>
</html>
