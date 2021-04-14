<%@ Page Title="" Language="C#" MasterPageFile="~/Masteradmin.master" AutoEventWireup="true" CodeFile="addprod.aspx.cs" Inherits="addprod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Admin" Runat="Server">
    <section>
        <div id="left-column">
            <h3>Quick nav</h3>
            <ul class="nav">
            <li><asp:linkbutton runat="server" ID="Addnewproduct" OnClick="Addnewproduct_Click">Add a product</asp:linkbutton></li>
            <li class="last"><asp:linkbutton runat="server" ID="followproduct" OnClick="followproduct_Click">follow up</asp:linkbutton></li>
            </ul>
            <div id="right-column"> <strong class="h">Imp!!</strong>
                <div class="box">We will have an evaluation soon!! never give your login information to anyone. Note!!! there will be a website update soon </div>
            </div>
        </div>
        <div id="centercolumn" runat="server">
            <table class="tableadd">
                <tr>
                    <td colspan="2"><asp:TextBox runat="server" ID="name" placeholder="Product name" CssClass="textboxasp"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2"><asp:TextBox runat="server" ID="des" TextMode="MultiLine" placeholder="Product descrption" CssClass="textboxasp"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2"><asp:TextBox runat="server" ID="price" placeholder="Product price" CssClass="textboxasp"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width:220px;"><p class="textfir">Product category:</p></td>
                    <td style="padding: 12px 12px 12px 12px;">
                        <asp:Radiobutton runat="server" GroupName="Category" ID="ca1" Text="Cake" Font-Size="15px" />
                        <asp:Radiobutton runat="server" GroupName="Category" ID="ca2" Text="Cupcake" Font-Size="15px" />
                        <asp:Radiobutton runat="server" GroupName="Category" ID="ca3" Text="Babka" Font-Size="15px" /><br />
                        <asp:Radiobutton runat="server" GroupName="Category" ID="ca4" Text="CakeSupplies" Font-Size="15px" />
                        <asp:Radiobutton runat="server" GroupName="Category" ID="ca5" Text="New" Font-Size="15px" />
                    </td>
                </tr>
                <tr>
                    <td style="width:220px;"><p class="textfir">Product Subcategory:</p></td>
                    <td style="padding: 12px 12px 12px 12px;">
                        <asp:Radiobutton runat="server" GroupName="SubCategory" ID="sca1" Text="None" Font-Size="15px" />
                        <asp:Radiobutton runat="server" GroupName="SubCategory" ID="sca2" Text="Classic" Font-Size="15px" />
                        <asp:Radiobutton runat="server" GroupName="SubCategory" ID="sca3" Text="Organic" Font-Size="15px" />
                    </td>
                </tr>
                <tr>
                    <td style="width:220px;"><p class="textfir">Product image:</p></td>
                    <td><asp:FileUpload ID="image" runat="server" /></td>
                </tr>
                <tr>
                    <td colspan="2" style="align-items: center;">
                        <asp:Button runat="server" ID="addbutt" Text="Upload" OnClick="addbutt_Click" CssClass="buttfir" />
                        <br />
                        <asp:Label runat="server" ID="Addlbl" CssClass="succlbl"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div runat="server" id="followup" visible="false">
            <asp:GridView runat="server" ID="gridviwproduct" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Product_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Product_id" HeaderText="Product_id" InsertVisible="False" ReadOnly="True" SortExpression="Product_id" />
                    <asp:BoundField DataField="Product_name" HeaderText="Product_name" SortExpression="Product_name" />
                    <asp:BoundField DataField="Product_price" HeaderText="Product_price" SortExpression="Product_price" />
                    <asp:BoundField DataField="Product_cat" HeaderText="Product_cat" SortExpression="Product_cat" />
                    <asp:BoundField DataField="Product_subcat" HeaderText="Product_subcat" SortExpression="Product_subcat" />
                    <asp:BoundField DataField="Product_des" HeaderText="Product_des" SortExpression="Product_des" />
                    <asp:TemplateField HeaderText="Product_img" SortExpression="Product_img">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Product_img") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <Img ID="Image1" runat="server"  src='<%# Eval("Product_img") %>' style= "Width:60px; Height:60px;" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [Product_id] = @Product_id" InsertCommand="INSERT INTO [Product] ([Product_name], [Product_price], [Product_cat], [Product_subcat], [Product_img], [Product_des]) VALUES (@Product_name, @Product_price, @Product_cat, @Product_subcat, @Product_img, @Product_des)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Product_name] = @Product_name, [Product_price] = @Product_price, [Product_cat] = @Product_cat, [Product_subcat] = @Product_subcat, [Product_img] = @Product_img, [Product_des] = @Product_des WHERE [Product_id] = @Product_id">
                <DeleteParameters>
                    <asp:Parameter Name="Product_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Product_name" Type="String" />
                    <asp:Parameter Name="Product_price" Type="Decimal" />
                    <asp:Parameter Name="Product_cat" Type="String" />
                    <asp:Parameter Name="Product_subcat" Type="String" />
                    <asp:Parameter Name="Product_img" Type="String" />
                    <asp:Parameter Name="Product_des" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Product_name" Type="String" />
                    <asp:Parameter Name="Product_price" Type="Decimal" />
                    <asp:Parameter Name="Product_cat" Type="String" />
                    <asp:Parameter Name="Product_subcat" Type="String" />
                    <asp:Parameter Name="Product_img" Type="String" />
                    <asp:Parameter Name="Product_des" Type="String" />
                    <asp:Parameter Name="Product_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </section>
</asp:content>
