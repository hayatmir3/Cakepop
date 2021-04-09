<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>We read register</title>
    <style type="text/css">
        .tableposi{
            position:relative;
            left:380px;
            top: 80px;
        }
        td {
            font-family: "Calisto MT";
            position:relative;
            padding: 25px;
            width: auto;
            left:0 ;
            top:0;
        }
        .img{
            position:absolute;
            height:720px;
            width: 1240px;
            margin:0;
            padding:0;
            z-index:-1;
        }
         .opa{
            position:absolute;
            left:170px;
            height:720px;
            width: 900px;
            margin:0;
            padding:0;
            z-index:-1;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="img">
            <p class="img" style="background-image:url(Assets/Img/regbg-01.png);"></p>
            <p class="opa" style="background: rgba(255,255,255,.6);" > </p>
            <h3 class="tableposi"> Please fill out the fields below..</h3>
            <table class="tableposi">
                <tr>
                    <td> Name:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                            runat="server" controltovalidate ="Name"
                            ErrorMessage="please write your name" Display="Dynamic">
                        </asp:RequiredFieldValidator>

                        <br />
                        <asp:TextBox ID="Name" runat="server"></asp:TextBox>

                    </td>
                    <td> E-mail:<br />
                        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                            runat="server" ErrorMessage="Enter valid email"
                            controltovalidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Password:<br />
                        <asp:TextBox ID="password" runat="server"></asp:TextBox>
                    </td>
                      <td class="auto-style1">Confirm password:<br />
                        <asp:TextBox ID="retypepassword" runat="server"></asp:TextBox>
                          <asp:CompareValidator ID="CompareValidator1" runat="server" 
                              ErrorMessage="password don't match"  ControlToCompare="password"
                               ControlToValidate="retypepassword"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>I am:<br />
                          <asp:DropDownList ID="DropDownList1" runat="server">
                              <asp:ListItem>Female</asp:ListItem>
                              <asp:ListItem>Male</asp:ListItem>
                            </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"> which of the following types of books do you prefer to read?<br />
                        <p>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Mystery"  /> 
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Comics"  />
                        <asp:CheckBox ID="CheckBox3" runat="server" Text="Adventure" />
                        <asp:CheckBox ID="CheckBox4" runat="server" Text="Fantasy" />
                        <asp:CheckBox ID="CheckBox5" runat="server" Text="Fiction" />
                        <asp:CheckBox ID="CheckBox6" runat="server" Text="Other" />
                        </p>
                   </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="regbutton" runat="server" Text="Register"  />
                    </td>
                </tr>
            </table>
        </div>

    </form>
</body>
</html>
