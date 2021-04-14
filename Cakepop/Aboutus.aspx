<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="Aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Glob" Runat="Server">
    <style>
        .tdcontent {
            align-content: center;
            text-align: center;
            align-items: center;
            vertical-align: central;
        }

        .titlefir {
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 40px;
            color: #5b6570;
            font-weight: 600;
            left: 500px;
            position: absolute;
            top: 40px;
            line-height: 50px;
        }

        .parfir {
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 16px;
            top: 150px;
            color: #5b6570;
            position: absolute;
            left: 100px;
            margin-right: 100px;
            line-height: 30px;
            text-align:left
        }
    </style>
    <section style="height:600px; position:relative; top: 0px; left:0px; width: 1265px;">
        <table style="width:1265px; height: 920px; position:absolute; top: 40px;">
            <tr>
                <td class="tdcontent">
                    <div>
                        <p class="titlefir">ABOUT US</p>
                    </div>
                    <div>
                        <p class="parfir">
                            The Cake Shop was founded by a team of passionate and dedicated bakers who are committed in baking the most delicious cakes and pastries around. 
                            Using only the freshest ingredients we can find, you can be sure that you are served the best quality cake you can ever have.<br />

                            We have evolved to become one of a premium distributor and wholesaler for cakes and pastries to some well known resturants, cafes, supermart, hotels and bakery.<br />

                            Our online store is a leading online shop in Singapore providing cakes and gifts deliveries within Singapore. 
                            We provide competitive prices, good after sales services and on-time delivery.<br />

                            The Cake Shop provides same day delivery service seven days a week, including Sunday, within Singapore to provide a high level of customer service.<br /><br />

                            Muneerah!!<br />

                            The Cake Shop Team
                        </p>
                    </div>
                </td>
            </tr>
        </table>
    </section>
</asp:Content>

