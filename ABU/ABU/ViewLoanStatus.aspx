<%@ Page Title="" Language="C#" MasterPageFile="~/LayoutLibrarian.Master" AutoEventWireup="true" CodeFile="ViewLoanStatus.aspx.cs" Inherits="ABU.ViewLoanStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <asp:Panel ID="PanelBackground" runat="server" Height="650px" style="margin-top: 42px; background-image: url(Img4/library_background.jpg);" Width="1300px">
           <br />
        <h1 style="text-align:center"><strong>Loan Status</strong></h1>
        <asp:Panel ID="PanelTable" runat="server" Height="527px">
        <table class ="w-100" border="1" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color: #FFFFCC"">
            <tr style="font-weight: bold;">
                <td style="width: 75px">Student ID</td>
                <td style="width: 200px">Student Name</td>
                <td style="width: 75px">Book ID</td>
                <td style="width: 200px">Book Name</td>
                <td style="width: 150px">Borrow Date</td>
                <td style="width: 150px">Expire Date</td>
                <td style="width: 100px">Days Left</td>
                <td style="width: 100px">Fine</td>
                <td style="width: 150px">Manage</td>

                                 
            </tr>
            
            <%=fetchLoan()%>
        </table>
            </asp:Panel>
        </asp:Panel>
</asp:Content>
