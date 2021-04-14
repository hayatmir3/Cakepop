<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Journal.aspx.cs" Inherits="Journal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Glob" Runat="Server">
    <style>
        .tdfir {
            width:645px;
        }

        .titlefir {
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 40px;
            color: #5b6570;
            font-weight: 600;
            text-align:left;
            position: absolute;
            top: 285px;
            left: 150px;
            line-height: 50px;
        }

        .linefir {
            position: absolute;
            height: 8px;
            margin-top: 100px;
            width: 120px;
            background-color: #5b6570;
        }
        .post-box {
            position: absolute;
            right: 0px;
            top: 45px;
            height: 260px;
            width: 632.5px;
        }

        .imgpost {
            height: 260px;
            width: 632.5px;
            background-image: url("../Assets/Img/Home/pie.jpg");
            background-size: 100%;
            transition: width 1s;
        }

        .imgpost:hover {
            width: 660px;
        }

        .into {
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 30px;
            font-weight: bold;
            color: #fff;
            z-index: 9;
        }

        .into a {
            text-decoration: none;
            color: #fff;
        }

        .into-post {
            position: absolute;
            top: 20px;
            right: 10px;
            height: 260px;
            width: 600px;
            z-index: 99;
        }

        .linebox {
            position: absolute;
            bottom: 100px;
            height: 4px;
            width: 60px;
            background-color: #fff;
        }

        .shadow {
            position: absolute;
            right: 0px;
            top: 0px;
            height: 260px;
            width: 632.5px;
            background: rgba(0,0,0,.3);
        }

        .shadow:hover {
            background: rgba(0,0,0,.5);
        }
    </style>
    <section style="height:1000px; position:relative; top: 0px; left:0px; width: 1265px;">
        <table style="width:1265px; height: 920px; position:absolute; top: 0px;">
            <tr>
                <td style="border-right: solid 2px #e7e7e7; vertical-align: top; width: 620px" >
                    <p class="titlefir">Journal<br /><span class="linefir"></span></p>
                </td>
                <td class="tdfir">
                    <div id="post-box" class="post-box">
                        <div class="shadow"></div>
                        <div class="imgpost">
                            <div class="into-post">
                                <div class="into">
                                    <p class="linebox"></p>
                                    <p><a href="/blog/post.aspx">Apple Pie From Scratch</a></p>
                                    <p style="font-size: 15px; color: #e7e7e7; position: absolute; top: 60px">by shaden on Apr 4, 2021</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </section>
</asp:Content>

