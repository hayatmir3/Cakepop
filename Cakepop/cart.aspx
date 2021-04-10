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
                <td class="tdfir" style="border-right: solid 1px #e7e7e7" >
                    <p class="titlefir">Cart<br /> Shopping<br /><span class="linefir"></span></p>
                </td>
                <td class="tdfir">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Cart_id" Width="605px" Height="720px">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" DeleteImageUrl="Assets/Img/Home/close.png" ButtonType="Image" />
                            <asp:BoundField DataField="Product_id" HeaderText="Product_id" SortExpression="Product_id" />
                            <asp:BoundField DataField="Product_name" HeaderText="Product_name" SortExpression="Product_name" />
                            <asp:BoundField DataField="Prodcut_qnt" HeaderText="Prodcut_qnt" SortExpression="Prodcut_qnt" />
                            <asp:BoundField DataField="Product_price" HeaderText="Product_price" SortExpression="Product_price" />
                        </Columns>
                    </asp:GridView>
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
        <div style="position:absolute; z-index: 99; top: 500px; right: 300px; font-family: 'Gill Sans MT', sans-serif;">
            <p><asp:Label ID="amount" runat="server" Font-Size="15px" Font-Bold="true"></asp:Label></p>
            <br />
            <p><asp:Button ID="toplaceorder" runat="server" Text="Procced to payment" OnClick="toplaceorder_Click" CssClass="buttfir" /></p>
        </div>
    </section>
</asp:content>
