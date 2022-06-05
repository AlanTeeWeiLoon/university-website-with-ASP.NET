<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="SchoolGallery.aspx.cs" Inherits="ABU.SchoolGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1 style="text-align:center"><strong>School Gallery</strong></h1>
    <p style="text-align:center; font-size: x-small;">Our school always held a lot of funny event and competition</p>
    <p style="text-align:center; font-size: x-small; color: #FF9900;">*You can view clearly by clicking the picture</p>
    <table>
    </table>


    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="280px" Width="300px" RepeatDirection="Horizontal" RepeatColumns="4" style="margin-top: 27px">
        <ItemTemplate>
            <table style="margin-left:50px;">
                  <tr>
                      <td style="text-align:center; background-color:white; width: 231px;">
                          <a href='<%#Eval("Image") %>'><asp:Image ID="Image1" runat="server" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="307px" Width="231px" ImageUrl='<%# Eval("Image") %>' style="margin-top: 1px"/></a>
                      </td>
                  </tr>
                  <tr>
                      <td style="text-align:center; background-color:lightgray; height:50px; width: 231px;border-bottom-left-radius:10px;border-bottom-right-radius:10px">
                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>' Font-Bold="True" Font-Names="Calibri" ForeColor="Black"></asp:Label>
                      </td>
                  </tr>
                 
              </table>
             <br />
             <br />
        </ItemTemplate>


    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [Image], [Category], [Link] FROM [Template] where [Category] = 'Gallery'"></asp:SqlDataSource>
 
     

</asp:Content>
