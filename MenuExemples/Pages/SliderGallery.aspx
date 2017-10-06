<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SliderGallery.aspx.cs" Inherits="MenuExemples.Pages.SliderGallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <a href="#">
                <img class="thumb" src="../Resources/Images/SliderGallery/FirstThumbPicture.jpg" />
                <img class="big" src="../Resources/Images/SliderGallery/FirstBigImage.jpg" />
            </a>
            <a href="#">
                <img class="thumb" src="../Resources/Images/SliderGallery/SecondThumbPicture.jpg" />
                <img class="big" src="../Resources/Images/SliderGallery/SecondBigImage.jpg" />
            </a><a href="#">
                <img class="thumb" src="../Resources/Images/SliderGallery/ThirdThumbPicture.jpg" />
                <img class="big" src="../Resources/Images/SliderGallery/ThirdBigImage.jpg" />
            </a>
            <a href="#">
                <img class="thumb" src="../Resources/Images/SliderGallery/FourthThumbPicture.jpg" />
                <img class="big" src="../Resources/Images/SliderGallery/FourthBigImage.jpg" />
            </a>
            <a href="#">
                <img class="big featured" src="../Resources/Images/SliderGallery/HoverOverAnImage.jpg" />
            </a>
        </div>
    </form>
</body>
</html>
