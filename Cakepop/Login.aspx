<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>Username:</td>
                <td><asp:TextBox runat="server" ID="txtuser"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><asp:TextBox runat="server" ID="txtPass" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2"><asp:Button runat="server" Text="Login" ID="logbutton" OnClick="logbutton_Click" /></td>
            </tr>
            <tr>
                <td colspan="2"><asp:label runat="server" ID="loginmsg"></asp:label> </td>
            </tr>
        </table>
    </form>
</body>
</html>
