<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Proddes.aspx.cs" Inherits="Proddes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Assets/Css/Styleproduct.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Glob" Runat="Server">
    <style type="text/css">
        .descriptionprod {
            Width: 1265px; 
            Height: 720px;
            top: 95px;
        }

        .productdesimg {
            height:720px; 
            width:605px;
        }

        .sectab {
            margin-left: 30px;
            margin-right: 30px;
            color: #5b6570;
            font-family: 'Gill Sans MT', sans-serif;
        }

        .titlefir {
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 50px;
            color: #5b6570;
            font-weight: 600;
            margin-bottom: 5px;
        }

        .titlecat {
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 25px;
            color: #5b6570;
            margin-top:-15px;
        }

        .productdes {
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 20px;
            color: #5b6570;
            margin-top: 80px;
        }

        .linefir {
        position: absolute;
        height: 4px;
        margin: 0px 20px 50px 0px;
        width: 90px;
        background-color: #5b6570;
        }

        .textboxasp {
            color: #5b6570;
            width:50px;
            height: 45px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            display: inline-block;
            border-radius: 4px;
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 15px;
            text-align: center;
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
        <div>
        <asp:DataList ID="DataList2" runat="server" CssClass="descriptionprod" DataSourceID="SqlDataSource1" DataKeyField="Product_id">
            <ItemTemplate>
                <table style="width:1265px; height: 720px; position:absolute; top: 85px;">
                    <tr>
                        <td class="tdfir">
                            <img ID="Product_imgLabel" src='<%# Eval("Product_img") %>' alt="product image" class="productdesimg"/>
                        </td>
                        <td class="tdfir">
                            <div class="sectab">
                                <p>
                                    <asp:Label ID="Product_nameLabel" runat="server" Text='<%# Eval("Product_name") %>' CssClass="titlefir" />
                                </p>
                                <p Class="titlecat">
                                    <asp:Label ID="Product_catLabel" runat="server" Text='<%# Eval("Product_cat") %>' CssClass="titlecat"/>
                                    <br />
                                    <asp:Label ID="Product_priceLabel" runat="server" Text='<%# Eval("Product_price") %>' CssClass="titlecat"/>
                                </p>
                                <p class="linefir"></p>
                                <p Class="productdes">
                                    <asp:Label ID="Product_desLabel" runat="server" Text='<%# Eval("Product_des") %>'  CssClass="productdes"/>
                                </p>
                            </div>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Product_id] = @Product_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Product_id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
        <div style="position:absolute; z-index: 99; top: 500px; right: 300px">
        <asp:TextBox ID="gettheqnt" runat="server" CssClass="textboxasp" placeholder="qnt"></asp:TextBox>
        <asp:Button runat="server" ID="tocart" Text="Add to cart" onclick="tocart_Click" CssClass="buttfir"/>
        </div>
    </section>
    <section style="position:relative; left:0px; width: 1265px;">

    </section>
</asp:Content>
