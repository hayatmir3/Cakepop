<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Assets/Css/homesheet.css") rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="glob" Runat="Server">
    <section id="slideshow-box" class="homebody">
        <!-- home boxes -->
        <div class="slideshow-container">
            <div class="mySlides fade">
                <div class="numbertext">1 / 3</div>
                <img src="Assets/Img/Home/discount.jpg" style="width:1265px; height: 540px">
                <div class="opablack">
                    <div class="opablack-trace">
                        <p class="wbox">
                            <span class="text">SHOP NOW</span>
                        </p>
                    </div>
                </div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">2 / 3</div>
                <img src="Assets/Img/Home/suppslide.jpg" style="width:1265px; height: 540px">
                <div class="opablack">
                    <div class="opablack-trace">
                        <p class="slide-text">
                            <strong>Start crafting amazing cakes by yourself!!</strong><br />
                            You will find all supplies you need to bake and decorate delicious cakes.
                        </p>
                        <p class="wbox">
                            <span class="text">SHOP SUPPLIES</span>
                        </p>
                    </div>
                </div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">3 / 3</div>
                <img src="Assets/Img/Home/party.jpg" style="width:1265px; height: 540px">
                <div class="opablack">
                    <div class="opablack-trace">
                        <p class="slide-text">
                            You can't be sad when you are holding a cake.<br />
                            <strong>life, Eat cake.</strong>
                        </p>
                        <p class="wbox">
                            <span class="text">SHOP CAKE</span>
                        </p>
                    </div>
                </div>
            </div>

            <a class="prev" OnClick="plusSlides(-1)">&#10094;</a>
            <a class="next" OnClick="plusSlides(1)">&#10095;</a>

        </div>
        <br>

        <div class="threedot"> 
            <span class="dot" onclick="currentSlide(1)"></span> 
            <span class="dot" onclick="currentSlide(2)"></span> 
            <span class="dot" onclick="currentSlide(3)" ></span> 
        </div>

        <script>

            var slideIndex = 0;
            showSlides();

            function showSlides() {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) { slideIndex = 1 }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace("active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
            }
            var interval = setInterval(showSlides, 5000); // Change text every 5 seconds

            // Set up event listeners for the dots
            var text = document.getElementsByClassName("opablack-trace");
            for (i = 0; i < text.length; i++) {
                text[i].onmouseover = pauseSlides;
                text[i].onmouseout = resumeSlides;
            }

            function pauseSlides() {
                clearInterval(interval); // Clear the interval we set earlier
            }
            function resumeSlides() {
                interval = setInterval(showSlides, 5000);
            }
        </script>
        <!-- home boxes -->
        <div id="home-boxes" class="home-boxes">
            <div id="cake-box" class="cake-box">
                <div class="shadow">
                    <div class="into-cake">
                        <div class="into">
                            <p class="linebox"></p>
                            <p><a href="/product.aspx?cate=Cake">Cake</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="cupcake-box" class="cupcake-box">
                <div class="shadow2">
                    <div class="into-cupcake">
                        <div class="into">
                            <p class="linebox"></p>
                            <p><a href="/product.aspx?cate=cupcake">CupCake</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="babka-box" class="babka-box">
                <div class="shadow3">
                    <div class="into-babka">
                        <div class="into">
                            <p class="linebox"></p>
                            <p><a href="/product.aspx?cate=Babka">Babka</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="supplies-box" class="supplies-box">
                <div class="shadow4">
                    <div class="into-supplies">
                        <div class="into">
                            <p class="linebox"></p>
                            <p> <a href="/product.aspx?cate=CakeSupplies">Cake <br /> supplies</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="home-boxes-blog" class="home-boxes-blog">
            <div id="blog-box" class="blog-box">
                <div class="shadow-blog">
                    <div class="into-blog-box">
                        <div class="into-blog">
                            <p class="linebox-blog"></p>
                            <p><a href="/Journal.aspx">Journal</a></p>
                        </div>
                    </div>
                </div>
                <div id="blog-sample" class="blog-sample">
                    
                    <div class="onhover-blog">
                        <p class="tilte-sample">Apple Pie From Scratch</p>
                        <p class="writer-sample">by shaden on Apr 4, 2021</p>
                        <p class="linebetw"></p>
                        <p class="content-sample">An apple pie is a pie in which the principal filling ingredient is apple, originated in England. It is often served with whipped cream, 
                            ice cream, or cheddar cheese. It is generally double-crusted, with pastry both above and below the filling; the upper crust may be solid or latticed. So, let's start to make our Apple pie ...</p>
                        <asp:Button runat="server" ID="toblg" Text="Read More" CssClass="toblogbt" OnClick="toblg_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

