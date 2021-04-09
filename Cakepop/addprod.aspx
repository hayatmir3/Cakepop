<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addprod.aspx.cs" Inherits="addprod" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>Product name:</td>
                <td><asp:TextBox runat="server" ID="name"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Product descrption:</td>
                <td><asp:TextBox runat="server" ID="des" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Product price:</td>
                <td><asp:TextBox runat="server" ID="price"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Product category:</td>
                <td>
                    <asp:Radiobutton runat="server" GroupName="Category" ID="ca1" Text="Cake"/>
                    <asp:Radiobutton runat="server" GroupName="Category" ID="ca2" Text="Cupcake"/>
                    <asp:Radiobutton runat="server" GroupName="Category" ID="ca3" Text="Babka"/>
                    <asp:Radiobutton runat="server" GroupName="Category" ID="ca4" Text="CakeSupplies"/>
                    <asp:Radiobutton runat="server" GroupName="Category" ID="ca5" Text="New"/>
                </td>
            </tr>
            <tr>
                <td>Product Subcategory:</td>
                <td>
                    <asp:Radiobutton runat="server" GroupName="SubCategory" ID="sca1" Text="None"/>
                    <asp:Radiobutton runat="server" GroupName="SubCategory" ID="sca2" Text="Classic"/>
                    <asp:Radiobutton runat="server" GroupName="SubCategory" ID="sca3" Text="Organic"/>
                </td>
            </tr>
            <tr>
                <td>image</td>
                <td><asp:FileUpload ID="image" runat="server" /></td>
            </tr>
            <tr>
                <td colspan="2" style="align-items: center;">
                    <asp:Button runat="server" ID="addbutt" Text="Upload" OnClick="addbutt_Click" />
                    <br />
                    <asp:Label runat="server" ID="Addlbl"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
