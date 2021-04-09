<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>CARD INFORMATION</p>
            <p>
                Your card number:
                <asp:TextBox runat="server" ID="textnum"></asp:TextBox>
            </p>
            <p>
                CVV:
                <asp:TextBox runat="server" ID="cvscure"></asp:TextBox>
            </p>
            <p>
                Expiry Year:
                <asp:TextBox runat="server" ID="cardate"></asp:TextBox>
            </p>
        </div>
        <div>

        </div>
        <asp:Button ID="placeorder"  runat="server" Text="Copmlete Order" OnClick="placeorder_Click"/>
    </form>
</body>
</html>
