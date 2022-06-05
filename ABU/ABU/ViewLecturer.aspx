<%@ Page Title="" Language="C#" MasterPageFile="~/LayoutLibrarian.Master" AutoEventWireup="true" CodeFile="ViewLecturer.aspx.cs" Inherits="ABU.ViewLecturer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelBackground" runat="server" Height="650px" style="margin-top: 42px; background-image: url(Img4/library_background.jpg);" Width="1300px">
        <br />
        <h1 style="text-align:center"><strong>View Lecturer</strong></h1>
                    <table class="w-100" style="margin-left:auto;margin-right:auto;margin-top:50px;margin-bottom:25px">
        <tr>
            <td style="width: 184px; font-size: small; height: 40px;"><strong>Lecturer ID:</strong></td>
            <td style="width: 266px; height: 40px;">
                <asp:TextBox ID="txtLecID" runat="server" Width="200px" Height="30px" required=""></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 184px; height: 41px;"></td>
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
                <td style="width: 100px">Lecturer ID</td>
                <td style="width: 200px">Lecturer Name</td>
                <td style="width: 75px">Book ID</td>
                <td style="width: 200px">Book Name</td>
                <td style="width: 150px">Borrow Date</td>
                <td style="width: 150px">Expire Date</td>
                <td style="width: 100px">Days Left</td>

                                 
            </tr>
            <%=fetchLecturer()%>
        </table>
    </asp:Panel>
        </asp:Panel>
</asp:Content>
