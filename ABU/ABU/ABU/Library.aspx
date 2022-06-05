<%@ Page Title="" Language="C#" MasterPageFile="~/LayoutLibrarian.Master" AutoEventWireup="true" CodeBehind="Library.aspx.cs" Inherits="ABU.Library" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelBackground" runat="server" Height="1505px" style="margin-top: 42px; background-image: url(Img4/library_background.jpg);" Width="1300px">
       <br />
         <br />
       
         <table >
            </table>
                <asp:Panel ID="Panel1" runat="server" style="margin-top: 42px; background-image: url(Img4/main_banner.jpg);">
                    <asp:Panel ID="Panel2" runat="server">
                    <div class="text-right">
                        <br />
                        <asp:TextBox ID="txtBookName" runat="server" Height="20px" placeholder="Search Book Here..." Width="200px"></asp:TextBox>
                        <asp:Button ID="btnSearch" runat="server" Height="25px" Text="Search" Width="100px" OnClick="btnSearch_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                    <div class="auto-style1" style="text-align: center; width: 1299px">
                        <asp:Label ID="Labeltitle" runat="server"  Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="X-Large" ForeColor="#CCCCCC" Text="Recommended Books of ABU. Library"></asp:Label>
                    </div>
                    
                    
                        <div class="text-center">
                            <asp:DataList ID="DataList1" runat="server" border="1" class="w-100" DataKeyField="BookId" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px">
                                <ItemTemplate>
                                    <table>
                                        <tr>
                                            <td class="auto-style1" style="width: 300px; height: 350px">
                                                <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("BookImage") %>' Width="250px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 75px; height: 20px">
                                                <asp:Label ID="Label3" runat="server" ForeColor="#CCCCCC" Text="Book Name : "></asp:Label>
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="#CCCCCC" Text='<%# Eval("BookName") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 75px; height: 20px">
                                                <asp:Label ID="Label4" runat="server" ForeColor="#CCCCCC" Text="Author : "></asp:Label>
                                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Small" ForeColor="#CCCCCC" Text='<%# Eval("Author") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </asp:Panel>

                 </asp:Panel>
                                <asp:Panel ID="Panel3" runat="server">

        <table class ="w-100" border="1" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color: #FFFFCC"">
            <tr style="font-weight: bold;">
                <td style="width: 75px; height: 20px;">Book ID</td>
                <td style="width: 200px; height: 20px;">Book Name</td>
                <td style="width: 125px; height: 20px;">Author</td>
                <td style="width: 200px; height: 20px;">Category</td>
                <td style="width: 75px; height: 20px;">Rak No.</td>
                <td style="width: 150px; height: 20px;" >Image</td>
                <td style="width: 100px; height: 20px;">Status</td>
        
                                 

            </tr>
            <%=fetchBook()%>
        </table>
                    </asp:Panel>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Book] where [Recommend] = 'Recommended'">
            </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>
