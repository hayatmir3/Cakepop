<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Custom.aspx.cs" Inherits="Custom" %>

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
            line-height: 20px;
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

        .buttfir {
            margin-top: 15px;
            background-color: #5b6570;
            border: none;
            text-decoration: none;
            cursor: pointer;
            width: 100px;
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

        .dropdownstyle {
            width:820px;
            padding: 5px 35px 5px 5px ;
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            height: 35px;
            -webkit-appearance: none;
            -moz-appearance: none;
            background: url(/Assets/Img/Home/add.png) 96% / 15% no-repeat #ededed;
            background-size: 16px 16px;
        }
    </style>
    <section style="height:1020px; position:relative; top: 0px; left:0px; width: 1265px;">
        <table style="width:1265px; height: 920px; position:absolute; top: 60px;">
            <tr>
                <td>
                    <div>
                        <p class="titlefir">Custom cake contact</p>
                        <p class="parfir">
                            If you have specific events and want to request custom cakes, please fill out the form below and our team will get back to you right away.
                            <br />You can also contact us via email: customcake@cakepop.com.
                        </p>
                    </div>
                    <div style="position: absolute; left: 80px; top: 250px;">
                        <asp:TextBox runat="server" ID="Namecus" placeholder="Name" CssClass="textboxasp" ></asp:TextBox>
                        <asp:TextBox runat="server" ID="Emailcus" placeholder="Email" CssClass="textboxasp" ></asp:TextBox>
                        <asp:TextBox runat="server" ID="guestno" placeholder="event Number of guests" CssClass="textboxasp" ></asp:TextBox>
                        <asp:TextBox runat="server" ID="datecus" placeholder="Date & time" CssClass="textboxasp" TextMode="DateTime" ></asp:TextBox>
                        <asp:dropdownlist runat="server" ID="eventtype" CssClass="dropdownstyle">
                            <asp:ListItem Text="----"></asp:ListItem>
                            <asp:ListItem Text="Wedding"></asp:ListItem>
                            <asp:ListItem Text="Graduation"></asp:ListItem>
                            <asp:ListItem Text="Anniversary"></asp:ListItem>
                            <asp:ListItem Text="Other"></asp:ListItem>
                        </asp:dropdownlist>

                        <asp:TextBox runat="server" ID="additional" placeholder="Additional info" TextMode="MultiLine" CssClass="multitext" ></asp:TextBox>
                    </div>
                    <div style="position: absolute; left: 80px; top: 880px;">
                        <asp:Button ID="sendmess" runat="server" Text="Send" CssClass="buttfir" />
                    </div>
                </td>
            </tr>
        </table>
    </section>
</asp:Content>

