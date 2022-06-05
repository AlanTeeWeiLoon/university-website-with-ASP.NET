<%@ Page Title="" Language="C#" MasterPageFile="~/LayoutLibrarian.Master" AutoEventWireup="true" CodeFile="ViewRecommendedBook.aspx.cs" Inherits="ABU.ViewRecommendedBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Panel ID="PanelBackground" runat="server" Height="650px" style="margin-top: 42px; background-image: url(Img4/library_background.jpg);" Width="1300px">
              <br />
        <h1 style="text-align:center"><strong>Recommended Book</strong></h1>

        <table class ="w-100" border="1" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color: #FFFFCC"">
            <tr style="font-weight: bold;">
                <td style="width: 75px; height: 20px;">Book ID</td>
                <td style="width: 200px; height: 20px;">Book Name</td>
                <td style="width: 125px; height: 20px;">Author</td>
                <td style="width: 200px; height: 20px;">Category</td>
                <td style="width: 75px; height: 20px;">Rak No.</td>
                <td style="width: 150px; height: 20px;" >Image</td>
                <td style="width: 100px">Remove</td>
                                 
            </tr>
            <%=fetchBook()%>
        </table>
        </asp:Panel>
</asp:Content>
