<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="cart_Id">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                    <asp:BoundField DataField="product_qnt" HeaderText="product_qnt" SortExpression="product_qnt" />
                    <asp:BoundField DataField="Product_id" HeaderText="Product_id" />
                    <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cart] WHERE ([Customer_id] = @Customer_id)" DeleteCommand="DELETE FROM [Cart] WHERE [cart_Id] = @cart_Id" InsertCommand="INSERT INTO [Cart] ([product_name], [product_price], [product_qnt], [Product_id], [Customer_id]) VALUES (@product_name, @product_price, @product_qnt, @Product_id, @Customer_id)" UpdateCommand="UPDATE [Cart] SET [product_name] = @product_name, [product_price] = @product_price, [product_qnt] = @product_qnt, [Product_id] = @Product_id, [Customer_id] = @Customer_id WHERE [cart_Id] = @cart_Id">
                <DeleteParameters>
                    <asp:Parameter Name="cart_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="product_name" Type="String" />
                    <asp:Parameter Name="product_price" Type="Int32" />
                    <asp:Parameter Name="product_qnt" Type="String" />
                    <asp:Parameter Name="Product_id" Type="String" />
                    <asp:Parameter Name="Customer_id" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="Customer_id" SessionField="Username" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="product_name" Type="String" />
                    <asp:Parameter Name="product_price" Type="Int32" />
                    <asp:Parameter Name="product_qnt" Type="String" />
                    <asp:Parameter Name="Product_id" Type="String" />
                    <asp:Parameter Name="Customer_id" Type="String" />
                    <asp:Parameter Name="cart_Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Label ID="amount" runat="server"></asp:Label>
            <br />
            <asp:Button ID="toplaceorder" runat="server" Text="Procced to payment" OnClick="toplaceorder_Click" />
        </div>
    </form>
</body>
</html>
