<%@ Page Title="" Language="C#" MasterPageFile="~/Aspx/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Aspx_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none}
.w3-left, .w3-right, .w3-badge {cursor:pointer}
.w3-badge {height:13px;width:13px;padding:0}
.hero-container {
    padding: 50px 0;
    background-color: #fff6f1;
    display: flex;
    align-items: center;
    justify-content: space-around;
}
h1, h2, h3, h4, h5, h6
{
    font-family:Georgia, serif;
    }
    .images-container 
    {
        display: flex;
            padding: 20px;
    align-items: center;
    justify-content: space-between;
        
        }
        .images-container .image-caption 
        {
            flex: 1;
            display: flex;
    flex-direction: column;
    align-items: center;
    max-width: 300px;
    text-align: center;
            }
            .images-container .image-caption .image 
            {
                margin-bottom:12px;
                width: 200px;
                height: 200px;
                border-radius: 50%;
                border: 1px solid #eee;
                background-repeat: center center;
                background-size: cover;
            }
             
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="hero-container">

<div>
<h1>Drop shipping for anyone</h1>
<p>We rent and sell new and used shipping containers to companies and individuals around the world.</p>
</div>

    <div>
        <div><img src="https://i.ibb.co/D5MvLHK/dropshippingwithwordpress.png" />
        </div>
    </div>
    
</div>

<div class="images-container">
    <div class="image-caption">
        <div class="image" style="background-image:url('../Images/HS4.jpg')">
        </div>
        <div>
            <h3>Title</h3>
            <p>lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum</p>
        </div>
    </div>
    <div class="image-caption">
        <div class="image" style="background-image:url('../Images/HS2.jpg')">
        </div>
        <div>
            <h3>Title</h3>
            <p>lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum</p>
        </div>
    </div>
    <div class="image-caption">
        <div class="image" style="background-image:url('../Images/HS3.jpg')">
        </div>
        <div>
            <h3>Title</h3>
            <p>lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum lorem impsum.</p>
        </div>
    </div>
</div>

<div class="w3-content w3-display-container" style="max-width:100%; height: 400px; margin-bottom: 100px; overflow: hidden;">
<div style="
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    top: 0;
    background: rgba(238, 238, 238, 0.3);
"></div>
  <img class="mySlides" src="../Images/HS4.jpg" style="width:100%">
  <img class="mySlides" src="../Images/HS2.jpg" style="width:100%">
  <img class="mySlides" src="../Images/HS3.jpg" style="width:100%">
  <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%">
    <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
    <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
  </div>
</div>



<script>
    var slideIndex = 1;
    showDivs(slideIndex);

    function plusDivs(n) {
        showDivs(slideIndex += n);
    }

    function currentDiv(n) {
        showDivs(slideIndex = n);
    }

    function showDivs(n) {
        var i;
        var x = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("demo");
        if (n > x.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = x.length }
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" w3-white", "");
        }
        x[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " w3-white";
    }
</script> 

</asp:Content>

