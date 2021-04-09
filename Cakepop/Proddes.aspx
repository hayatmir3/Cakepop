<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Proddes.aspx.cs" Inherits="Proddes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Assets/Css/Styleproduct.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Glob" Runat="Server">
    <style type="text/css">
        .descriptionprod {
            margin: 10px 10px 10px 10px;
            Width: 1200px; 
            Height: 720px;
        }

        .descriptiontab {
            width: 100%;
            height: 100%;
        }
    </style>
    <section>
        <div>
        <asp:DataList ID="DataList2" runat="server" CssClass="descriptionprod" DataSourceID="SqlDataSource1" DataKeyField="Product_id">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <img ID="Product_imgLabel" src='<%# Eval("Product_img") %>' alt="product image"/>
                        </td>
                        <td>
                            <asp:Label ID="Product_nameLabel" runat="server" Text='<%# Eval("Product_name") %>' />
                            <asp:Label ID="Product_catLabel" runat="server" Text='<%# Eval("Product_cat") %>' />
                            <br />
                            <br />
                            <asp:Label ID="Product_priceLabel" runat="server" Text='<%# Eval("Product_price") + "$" %>'/>
                            <br />
                            <br />
                            <asp:Label ID="Product_desLabel" runat="server" Text='<%# Eval("Product_des") %>' />
                            <br />
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
        <br />
        <asp:TextBox ID="gettheqnt" runat="server" Width="50px" Height="50px"></asp:TextBox>
        <asp:Button runat="server" ID="tocart" Text="Add to cart" onclick="tocart_Click" />
        </div>
    </section>
</asp:Content>
