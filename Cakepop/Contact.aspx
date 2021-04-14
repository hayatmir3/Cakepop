<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Glob" Runat="Server">
    <style>
        .titlefir {
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 40px;
            color: #5b6570;
            font-weight: 600;
            text-align:left;
            position: absolute;
            top: 40px;
            left: 80px;
            line-height: 50px;
        }

        .parfir {
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 15px;
            top: 150px;
            color: #5b6570;
            font-weight: 600;
            position: absolute;
            left: 85px;
            line-height: 50px;
        }

        .linefir {
            position: absolute;
            height: 2px;
            top: 120px;
            left:80px;
            margin-top: 100px;
            width: 40px;
            background-color: #5b6570;
        }

        .textboxasp {
            color: #5b6570;
            width: 820px;
            height: 55px;
            padding: 12px 20px;
            margin: 8px 0;
            border: 1px solid #ccc;
            box-sizing: border-box;
            display: inline-block;
            border-radius: 4px;
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 15px;
            background-color: #ededed;
        }

        .multitext {
            color: #5b6570;
            width: 820px;
            height: 150px;
            padding: 12px 20px;
            margin: 8px 0;
            border: 1px solid #ccc;
            box-sizing: border-box;
            display: inline-block;
            border-radius: 4px;
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 15px;
            background-color: #ededed;
        }
    </style>
    <section style="height:820px; position:relative; top: 0px; left:0px; width: 1265px;">
        <table style="width:1265px; height: 920px; position:absolute; top: 60px;">
            <tr>
                <td>
                    <div>
                        <p class="titlefir">Contact</p>
                        <p class="parfir">Write us a message</p>
                        <p class="linefir"></p>
                    </div>
                    <div style="position: absolute; left: 80px; top: 250px;">
                        <asp:TextBox runat="server" ID="Namecontact" placeholder="Name" CssClass="textboxasp"></asp:TextBox>
                        <asp:TextBox runat="server" ID="Emailcontact" placeholder="Email" CssClass="textboxasp"></asp:TextBox>
                        <asp:TextBox runat="server" ID="Message" placeholder="Message" TextMode="MultiLine" CssClass="multitext"></asp:TextBox>
                    </div>
                </td>
            </tr>
        </table>
    </section>
</asp:Content>

