<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Post.aspx.cs" Inherits="blog_Post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Glob" Runat="Server">
    <style>
        .tdcontent {
            align-content: center;
            text-align: center;
            align-items: center;
            vertical-align: central;
        }

        .postcontent {
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 16px;
            top: 25px;
            left: 100px;
        }

        .titlecom {
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 30px;
            color:#5b6570; 
            font-weight: 600;
        }

        .linecomment {
            height: 2px;
            width: 80px;
            background-color: #5b6570;
        }

        .textboxcom {
            color: #5b6570;
            width: 620px;
            height: 55px;
            padding: 12px 20px;
            margin: 8px 0;
            border: 1px solid #ccc;
            box-sizing: border-box;
            display: inline-block;
            border-radius: 4px;
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 15px;
            background-color: #ededed;
        }

        .textmulti {
            color: #5b6570;
            width:620px;
            height: 150px;
            padding: 12px 20px;
            margin: 8px 0;
            border: 1px solid #ccc;
            box-sizing: border-box;
            display: inline-block;
            border-radius: 4px;
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 15px;
            background-color: #ededed;
        }

        .buttcom {
            margin-top: 15px;
            background-color: #5b6570;
            border: none;
            text-decoration: none;
            cursor: pointer;
            width: 100px;
            height: 45px;
            text-align: center;
            color: #fff;
            font-family: 'Gill Sans MT', sans-serif;
            font-size: 20px;
            border-radius: 4px;
        }
        
        .buttcom:hover {
            background-color: #808080;
        }
    </style>
    <section style="height:2500px; position:relative; top: 0px; left:0px; width: 1265px;">
        <table style="width:1265px; height: 920px; position:absolute; top: 40px;">
            <tr style="width:100%; height: 140px;">
                <td class="tdcontent">
                    <p style="font-size: 30px; font-weight: 600; position: absolute; left: 100px; top:0;" class="postcontent">Apple Pie From Scratch</p>
                    <p class="postcontent" style=" position: absolute; left: 110px; top:80px; color: #8c8c8c;">by shaden on Apr 4, 2021</p>
                </td>
            </tr>
            <tr>
               <td class="tdcontent"> <img src="/Assets/Img/Home/pie--08.jpg" alt=" pie image" style="height:720px; width:1080px;" /></td>
            </tr>
            <tr>
                <td class="tdcontent">
                    <p class="postcontent" style="left:80px; margin-right:80px; position: absolute; top:900px">
                        An apple pie is a pie in which the principal filling ingredient is apple, originated in England. 
                        It is often served with whipped cream, ice cream, or cheddar cheese. It is generally double-crusted, 
                        with pastry both above and below the filling; the upper crust may be solid or latticed. So, let's start 
                        to make our Apple pie.
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <div style="left:80px; margin-right:80px; position: absolute; top:1250px">
                    <p><a href="#" style="border-bottom: dashed 1px ; color: #5b6570;text-decoration: none; display: inline-block;">newer post</a>&nbsp;&nbsp;&nbsp;<i class="fas fa-arrow-circle-right" style="color: #5b6570; font-size: 20px;"></i></p>
                    <p><i class="fas fa-arrow-circle-left" style="color: #5b6570; font-size: 20px;" ></i>&nbsp&nbsp;&nbsp;<a href="#"style=" text-decoration: none; border-bottom: dashed 1px; color: #5b6570; display: inline-block;">older post</a></p>
                    </div>
                </td>
            </tr>
        </table>
        <!-- form comment -->
        <div style=" position: absolute; top: 700px; left: 40px;"> 
                <div style="margin: 20px;position: absolute; top: 1080px">
                    <p class="titlecom" >Leave a comment</p> 
                    <p class="linecomment"></p>
                    <p> 
                        <asp:TextBox ID="Name" runat="server" placeholder="Name" CssClass="textboxcom"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                            runat="server" controltovalidate ="Name"
                            ErrorMessage="please write your name" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </p> 
                    <p > 
                         <asp:TextBox ID="email" runat="server" Placeholder="Email" CssClass="textboxcom"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                            runat="server" controltovalidate ="email"
                            ErrorMessage="please write your email" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </p> 
                    <p > 
                        <asp:textbox runat="server" ID="comment" placeholder="Your comment"  TextMode="MultiLine" CssClass="textmulti"> 
                        </asp:textbox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                            runat="server" controltovalidate ="comment"
                            ErrorMessage="please write your comment" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </p>
                    <br /> 
                    <asp:Button ID="postcomment" runat="server" Text="Post" CssClass="buttcom" OnClick="postcomment_Click" /> 
                </div> 
                <!-- Comment shows box -->
                <div style="position: absolute; top: 700px; left: 40px;">
                    <p class="titlecom">Comment</p>
                    <p class="linecomment"></p>
                    <asp:Repeater ID="Repeater1" runat="server"> 
                        <ItemTemplate> 
                            <div class="showcomment"> 
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Name") %>'>'></asp:Label>
                                <br>
                                </br>
                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("Comment") %>'></asp:Label><br /> 
                            </div> 
                        </ItemTemplate> 
                    </asp:Repeater> 
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Comment]"></asp:SqlDataSource>
                </div> 
        </div> 
    </section>
</asp:Content>

