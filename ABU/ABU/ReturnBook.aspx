<%@ Page Title="" Language="C#" MasterPageFile="~/LayoutLibrarian.Master" AutoEventWireup="true" CodeFile="ReturnBook.aspx.cs" Inherits="ABU.ReturnBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="PanelBackground" runat="server" Height="650px" style="margin-top: 42px; background-image: url(Img4/library_background.jpg);" Width="1300px">
        <br />

    <h1 style="text-align:center"><strong>Return Book</strong></h1>
    <table class="w-100" style="margin-left:auto;margin-right:auto;margin-top:50px;margin-bottom:50px">
                    <tr>
            <td style="width: 241px; font-size: small;" class="datepicker-inline"><strong>Category: </strong> </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtCategory" runat="server"  Width="200px" Height="30px" required="" ReadOnly="True"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 241px; font-size: small;" class="datepicker-inline"><strong>Student / Lecturer ID: </strong> </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtID" runat="server"  Width="200px" Height="30px" required="" ReadOnly="True"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 241px; font-size: small;" class="datepicker-inline"><strong>Name :   </strong>   </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtName" runat="server"  Width="200px" Height="30px" required="" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 241px; font-size: small;" class="datepicker-inline"><strong>Book ID :   </strong>   </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtBookID" runat="server"  Width="200px" Height="30px" required=""></asp:TextBox>
            </td>
        </tr>


        <tr>
            <td style="width: 241px; height: 46px;">
                <asp:Label ID="lblMessage" runat="server" style="font-size: small"></asp:Label>
            </td>
            <td style="width: 266px; height: 46px;">        
                <asp:Button ID="btnReturn" runat="server"  OnClick="btnReturn_Click" Text="Return" Height="30px" Width="100px" onclientclick="return confirm('Is ');" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" Height="30px" Width="100px"  />
            </td>
        </tr>
         
    </table>
            
    <asp:Panel ID="Panel1" runat="server">
        <table class ="w-100" border="1" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color: #FFFFCC"">
            <tr style="font-weight: bold;">
                <td style="width: 75px">ID</td>
                <td style="width: 200px">Name</td>
                <td style="width: 75px">Book ID</td>
                <td style="width: 200px">Book Name</td>
                <td style="width: 150px">Borrow Date</td>
                <td style="width: 150px">Expire Date</td>
                <td style="width: 100px">Days Left</td>

                                 
            </tr>
            <%=fetchReturn()%>
        </table>
        </asp:Panel>
         
        </asp:Panel>
</asp:Content>
