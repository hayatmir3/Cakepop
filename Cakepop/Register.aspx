<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Assets/Css/Stylehome.css") rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="glob" Runat="Server">
    <style>
        .sectab {
            margin-left: 80px;
            font-size: 15px;
            font-weight: 600;
            color: #5b6570;
            font-family: 'Gill Sans MT', sans-serif;
            line-height: 18px;
            border-radius: 4px;
        }

        .titlefir {
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 40px;
            color: #5b6570;
            font-weight: 600;
            text-align:left;
            position: absolute;
            left: 200px;
            line-height: 50px;
        }

        .linefir {
        position: absolute;
        height: 8px;
        margin-top: 100px;
        width: 120px;
        background-color: #5b6570;
        }

        .textboxasp {
            color: #5b6570;
            width:520px;
            height: 55px;
            padding: 12px 20px;
            margin: 8px 0;
            border: 1px solid #ccc;
            box-sizing: border-box;
            display: inline-block;
            border-radius: 4px;
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 15px;
        }

        .textboxasp_small {
            color: #5b6570;
            width:255px;
            height: 55px;
            padding: 12px 20px;
            margin: 8px 3px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            display: inline-block;
            border-radius: 4px;
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 15px;
        }

        .tdfir {
            width:605px;
            vertical-align: top;
        }

        .buttfir {
            margin-top: 15px;
            background-color: #5b6570;
            border: none;
            text-decoration: none;
            cursor: pointer;
            width: 200px;
            height: 54px;
            text-align: center;
            color: #fff;
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 20px;
            border-radius: 4px;
        }
        
        .buttfir:hover {
            background-color: #808080;
        }
    </style>
    <section style="height:1000px; position:relative; top: 85px; left:0px; width: 1265px;">
        <table style="width:1265px; height: 720px; position:absolute; top: 85px;">
            <tr>
                <td class="tdfir" style="border-right: solid 1px #e7e7e7">
                    <p class="titlefir">Create<br /> Account<br /><span class="linefir"></span></p>
                </td>
                <td class="tdfir">
                    <div class="sectab">
                        <p>
                            <asp:TextBox runat="server" ID="Fname" CssClass="textboxasp_small" placeholder="First Name"></asp:TextBox>
                            <asp:TextBox runat="server" ID="Lname" CssClass="textboxasp_small" placeholder="Last Name"></asp:TextBox>
                        </p>

                        <p>
                            <asp:TextBox runat="server" ID="crusername" CssClass="textboxasp" placeholder="Username"></asp:TextBox>
                        </p>
                        <p>
                            <asp:TextBox runat="server" ID="Cremail" CssClass="textboxasp" placeholder="Email"></asp:TextBox>
                        </p>
                        <p>
                            <asp:TextBox runat="server" ID="password" CssClass="textboxasp_small" placeholder="Passwor" TextMode="Password"></asp:TextBox>
                            <asp:TextBox runat="server" ID="conpassword" CssClass="textboxasp_small" placeholder="Passwor" TextMode="Password"></asp:TextBox>
                        </p>
                        <asp:Button ID="placeorder"  runat="server" Text="CREATE" CssClass="buttfir" OnClick="placeorder_Click"/>
                    </div>
                </td>
            </tr>
        </table>
    </section>
</asp:content>
