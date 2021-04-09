<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Assets/Css/Styleproduct.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Glob" Runat="Server">
    <section id="productpage" class="productbody">
    <style type="text/css">
        .tableprod {
            width: 100%;
            height: 100%;
        }

        .productimg {
            width:280px; 
            height:325px
        }

        .trprod {
            align-content: center;
            align-items: center;
            text-align: center;
            font-weight: 600;
            font-family: 'Gill Sans MT', sans-serif;
        }
        </style>
        <div>
            <p>
                <asp:DropDownList runat="server" ID="sorting" AutoPostBack="true" OnSelectedIndexChanged="Page_Load">
                    <asp:ListItem text="def" Value="1"></asp:ListItem>
                    <asp:ListItem text="to haigh" Value="2"></asp:ListItem>
                    <asp:ListItem text="to low" Value="3"></asp:ListItem>
                </asp:DropDownList>
            </p>
        </div>
        <div>
            <asp:Datalist runat="server" ID="datalistprod" Height="395px" Width="280px" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="Prodimg" CellPadding="10" OnItemCommand="datalistprod_ItemCommand">
                <ItemTemplate>
                    <table class="tableprod">
                        <tr class="trprod">
                            <td>
                                <asp:LinkButton runat="server" ID="Todetails" CommandArgument='<%# Eval("Product_id") %>' CommandName="todetails">
                                <img ID="Product_imgLabel" src='<%# Eval("Product_img") %>' alt="product image" class="productimg"/>
                                </asp:LinkButton>
                            </td>
                        </tr>
                        <tr class="trprod">
                            <td>
                                <asp:Label ID="Product_nameLabel" runat="server" Text='<%# Eval("Product_name") %>' />
                            </td>
                        </tr>
                        <tr class="trprod">
                            <td>
                                <asp:Label ID="Product_priceLabel" runat="server" Text='<%# Eval("Product_price") + "$" %>'/>
                            </td>
                        </tr>

                    </table>
                </ItemTemplate>
            </asp:Datalist>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Product_id],[Product_name], [Product_price], [Product_img] FROM [Product]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Product_cat] = @Product_cat)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Product_cat" QueryStringField="cate" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Product_cat] = @Product_cat) ORDER BY [Product_price]">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Product_cat" QueryStringField="cate" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([Product_cat] = @Product_cat) ORDER BY [Product_price] DESC">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Product_cat" QueryStringField="cate" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE (([Product_cat] = @Product_cat) AND ([Product_subcat] = @Product_subcat))">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Product_cat" QueryStringField="cate" Type="String" />
                    <asp:QueryStringParameter Name="Product_subcat" QueryStringField="sub" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </section>
</asp:Content>
