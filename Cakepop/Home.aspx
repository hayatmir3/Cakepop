<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Assets/Css/Stylehome.css?=@guid.newguid().tostring()" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Home" Runat="Server">
    <section class="homebody">
        <div class="slideshow-container">
            <div class="mySlides fade">
              <div class="numbertext">1 / 3</div>
              <img src="Assets/Img/Home/discount.jpg" style="width:1265px; height: 540px">
              <div class="text">Caption Text</div>
            </div>

            <div class="mySlides fade">
              <div class="numbertext">2 / 3</div>
              <img src="Assets/Img/Home/suppslide.jpg" style="width:1265px; height: 540px">
              <div class="text">Caption Two</div>
            </div>

            <div class="mySlides fade">
              <div class="numbertext">3 / 3</div>
              <img src="Assets/Img/Home/party.jpg" style="width:1265px; height: 540px">
              <div class="text">Caption Three</div>
            </div>

            <a class="prev" OnClick="plusSlides(-1)">&#10094;</a>
            <a class="next" OnClick="plusSlides(1)">&#10095;</a>

            </div>
            <br>

            <div class="three"> 
              <span class="dot" onclick="currentSlide(1)"></span> 
              <span class="dot" onclick="currentSlide(2)"></span> 
              <span class="dot" onclick="currentSlide(3)" ></span> 
            </div>

            <script>
            var slideIndex = 1;
            var timer = null;
            showSlides(slideIndex);

            function plusSlides(n) {
              clearTimeout(timer);
              showSlides(slideIndex += n);
            }

            function currentSlide(n) {
              clearTimeout(timer);
              showSlides(slideIndex = n);
            }

            function showSlides(n) {
              var i;
              var slides = document.getElementsByClassName("mySlides");
              var dots = document.getElementsByClassName("dot");
              if (n==undefined){n = ++slideIndex}
              if (n > slides.length) {slideIndex = 1}
              if (n < 1) {slideIndex = slides.length}
              for (i = 0; i < slides.length; i++) {
                  slides[i].style.display = "none";
              }
              for (i = 0; i < dots.length; i++) {
                  dots[i].className = dots[i].className.replace(" active", "");
              }
              slides[slideIndex-1].style.display = "block";
              dots[slideIndex-1].className += " active";
              timer = setTimeout(showSlides, 3000);
            } 
            </script>
    </section>
</asp:Content>

