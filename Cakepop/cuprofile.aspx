<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cuprofile.aspx.cs" Inherits="cuprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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

        .tdfir {
            width:605px;
            vertical-align: top;
        }

        .buttfir {
            margin-top: 15px;
            margin-left: 15px;
            background-color: #5b6570;
            border: none;
            text-decoration: none;
            cursor: pointer;
            width: 260px;
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
    <section style="height:1000px; position:relative; top: 85px; right:0px; width: 1265px;">
        <table style="width:1265px; height: 720px; position:absolute; top: 85px;"> 
            <tr>
                <td class="tdfir">
                    <p class="titlefir">Customer<br /> information<br /><span class="linefir"></span></p>
                </td>
                <td class="tdfir">
                    <div style="margin-left:25px">
                        <asp:button runat="server" ID="toprofileinfo" Text="profile" CssClass="buttfir" />
                        <asp:button runat="server" ID="toprofileorde" Text="order" CssClass="buttfir" /><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [Customer_id] = @Customer_id" InsertCommand="INSERT INTO [Customer] ([Customer_id], [Customer_pass], [Email], [Fname], [Lname]) VALUES (@Customer_id, @Customer_pass, @Email, @Fname, @Lname)" SelectCommand="SELECT * FROM [Customer] WHERE ([Customer_id] = @Customer_id)" UpdateCommand="UPDATE [Customer] SET [Customer_pass] = @Customer_pass, [Email] = @Email, [Fname] = @Fname, [Lname] = @Lname WHERE [Customer_id] = @Customer_id">
                            <DeleteParameters>
                                <asp:Parameter Name="Customer_id" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Customer_id" Type="String" />
                                <asp:Parameter Name="Customer_pass" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Fname" Type="String" />
                                <asp:Parameter Name="Lname" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:QueryStringParameter Name="Customer_id" QueryStringField="id" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Customer_pass" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Fname" Type="String" />
                                <asp:Parameter Name="Lname" Type="String" />
                                <asp:Parameter Name="Customer_id" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <div>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Customer_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:CommandField ShowEditButton="True" />
                                    <asp:BoundField DataField="Customer_id" HeaderText="Customer_id" ReadOnly="True" SortExpression="Customer_id" />
                                    <asp:BoundField DataField="Customer_pass" HeaderText="Customer_pass" SortExpression="Customer_pass" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                                    <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
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
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </section>
</asp:Content>

