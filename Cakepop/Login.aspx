<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

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
            height: 45px;
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
                <td class="tdfir">
                    <p class="titlefir">Customer<br /> Login<br /><span class="linefir"></span></p>
                </td>
                <td class="tdfir">
                    <div class="sectab">
                        <p><asp:TextBox runat="server" ID="txtuser" CssClass="textboxasp" placeholder="Username"></asp:TextBox></p>

                        <p><asp:TextBox runat="server" ID="txtPass" TextMode="Password" CssClass="textboxasp" placeholder="Password"></asp:TextBox></p>

                        <p><asp:Button runat="server" Text="Login" ID="logbutton" OnClick="logbutton_Click" CssClass="buttfir" /></p>

                        <p><asp:label runat="server" ID="loginmsg"></asp:label> </p>
                    </div>
                </td>
            </tr>
        </table>
    </section>
</asp:content>
