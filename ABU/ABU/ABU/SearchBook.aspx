<%@ Page Title="" Language="C#" MasterPageFile="~/LayoutLibrarian.Master" AutoEventWireup="true" CodeFile="SearchBook.aspx.cs" Inherits="ABU.SearchBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelBackground" runat="server" Height="650px" style="margin-top: 42px; background-image: url(Img4/library_background.jpg);" Width="1300px">
        <br />
            <h1 style="text-align:center"><strong>Search Book</strong></h1>
    <table class="w-100" style="margin-left:auto;margin-right:auto;margin-top:50px;margin-bottom:25px">
        <tr>
            <td style="width: 168px; font-size: small; height: 40px;"><strong>Book Name/ ID:</strong></td>
            <td style="width: 266px; height: 40px;">
                <asp:TextBox ID="txtBookNameID" runat="server" Width="200px" Height="30px" required=""></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 168px; height: 41px;"></td>
            <td style="height: 41px">
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" Height="30px" Width="100px"/>
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" Height="30px" Width="100px"/>
            </td>
        </tr>
    </table>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <table class ="w-100" border="1" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color: #FFFFCC"">
            <tr style="font-weight: bold;">
                <td style="width: 75px; height: 20px;">Book ID</td>
                <td style="width: 200px; height: 20px;">Book Name</td>
                <td style="width: 125px; height: 20px;">Author</td>
                <td style="width: 200px; height: 20px;">Category</td>
                <td style="width: 75px; height: 20px;">Rak No.</td>
                <td style="width: 150px; height: 20px;" >Image</td>
                <td style="width: 100px">Edit</td>
                <td style="width: 100px">Recommend</td>
                                 

            </tr>
            <%=fetchBook()%>
        </table>
    </asp:Panel>
        </asp:Panel>
</asp:Content>
