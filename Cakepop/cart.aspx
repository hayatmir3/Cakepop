<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Assets/Css/Styleproduct.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Glob" Runat="Server">
    <section>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Cart_id">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Product_id" HeaderText="Product_id" SortExpression="Product_id" />
                    <asp:BoundField DataField="Product_name" HeaderText="Product_name" SortExpression="Product_name" />
                    <asp:BoundField DataField="Prodcut_qnt" HeaderText="Prodcut_qnt" SortExpression="Prodcut_qnt" />
                    <asp:BoundField DataField="Product_price" HeaderText="Product_price" SortExpression="Product_price" />
                </Columns>
            </asp:GridView>
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
            <asp:Label ID="amount" runat="server"></asp:Label>
            <br />
            <asp:Button ID="toplaceorder" runat="server" Text="Procced to payment" OnClick="toplaceorder_Click" />
        </div>
    </section>
</asp:content>
