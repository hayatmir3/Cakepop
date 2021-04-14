<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Assets/Css/Styleproduct.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Glob" Runat="Server">
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
            width:815px;
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

        .gridplace {
            position: absolute;
            top: 100px;
            right: 115px;
        }
    </style>
    <section style="height:1000px; position:relative; top: 0px; left:0px; width: 1265px;">
        <table style="width:1265px; height: 920px; position:absolute; top: 0px;">
            <tr>
                <td style="border-right: solid 2px #e7e7e7; vertical-align: top; width: 450px" >
                    <p class="titlefir">Cart<br /> Shopping<br /><span class="linefir"></span></p>
                </td>
                <td class="tdfir">
                    <div class="gridplace">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Cart_id" Width="645px" Height="620px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AllowPaging="True" PageSize="3">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" DeleteImageUrl="Assets/Img/Home/close.png" ButtonType="Image" ItemStyle-Width="90px" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" />
                                <asp:BoundField DataField="Product_name" HeaderText="Product" SortExpression="Product_name" />
                                <asp:BoundField DataField="Prodcut_qnt" HeaderText="Quantity" SortExpression="Prodcut_qnt" />
                                <asp:BoundField DataField="Product_price" HeaderText="price" SortExpression="Product_price" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#333333" Width="80px" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#487575" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#275353" />
                        </asp:GridView>
                    </div>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cart] WHERE ([Customer_id] = @Customer_id)" DeleteCommand="DELETE FROM [Cart] WHERE [Cart_id] = @Cart_id" InsertCommand="INSERT INTO [Cart] ([Product_name], [Product_price], [Prodcut_qnt], [Product_id], [Customer_id]) VALUES (@Product_name, @Product_price, @Prodcut_qnt, @Product_id, @Customer_id)" UpdateCommand="UPDATE [Cart] SET [Product_name] = @Product_name, [Product_price] = @Product_price, [Prodcut_qnt] = @Prodcut_qnt, [Product_id] = @Product_id, [Customer_id] = @Customer_id WHERE [Cart_id] = @Cart_id">
            <DeleteParameters>
                <asp:Parameter Name="Cart_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Product_name" Type="String" />
                <asp:Parameter Name="Product_price" Type="Decimal" />
                <asp:Parameter Name="Prodcut_qnt" Type="String" />
                <asp:Parameter Name="Product_id" Type="Int32" />
                <asp:Parameter Name="Customer_id" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Customer_id" SessionField="Username" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Product_name" Type="String" />
                <asp:Parameter Name="Product_price" Type="Decimal" />
                <asp:Parameter Name="Prodcut_qnt" Type="String" />
                <asp:Parameter Name="Product_id" Type="Int32" />
                <asp:Parameter Name="Customer_id" Type="String" />
                <asp:Parameter Name="Cart_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div style="position:absolute; z-index: 99; top: 640px; right: 120px; font-family: 'Gill Sans MT', sans-serif;">
            <p><asp:Label ID="amount" runat="server" Font-Size="20px" Font-Bold="true" ForeColor="#ffffff"></asp:Label></p>
            <br />
            <p><asp:Button ID="toplaceorder" runat="server" Text="Procced to payment" OnClick="toplaceorder_Click" CssClass="buttfir" /></p>
        </div>
    </section>
</asp:content>
