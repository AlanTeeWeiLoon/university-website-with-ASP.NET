<%@ Page Title="" Language="C#" MasterPageFile="~/LayoutLibrarian.Master" AutoEventWireup="true" CodeFile="BorrowBook.aspx.cs" Inherits="ABU.BorrowBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelBackground" runat="server" Height="650px" style="margin-top: 42px; background-image: url(Img4/library_background.jpg);" Width="1300px">
    <br />
    
        <h1 style="text-align:center"><strong>Borrow Book</strong></h1>
    <table class="w-100" style="margin-left:auto;margin-right:auto;margin-top:50px;margin-bottom:50px">
        <tr>
            <td style="width: 221px; font-size: small;" class="datepicker-inline"><strong>Category: </strong> </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtCategory" runat="server"  Width="200px" Height="30px" required="" ReadOnly="True"></asp:TextBox>
            </td>
            
        </tr>
            <tr>
            <td style="width: 221px; font-size: small;" class="datepicker-inline"><strong>Student / Lecturer ID: </strong> </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtID" runat="server"  Width="200px" Height="30px" required="" ReadOnly="True"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 221px; font-size: small;" class="datepicker-inline"><strong>Name : </strong>   </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtName" runat="server"  Width="200px" Height="30px" required="" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 221px; font-size: small;" class="datepicker-inline"><strong>Book ID : </strong>   </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtBookID" runat="server"  Width="200px" Height="30px" required=""></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 221px; font-size: small;" class="datepicker-inline"><strong>Borrow Date : </strong>   </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtBrwDate" runat="server"  Width="200px" Height="30px" required="" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 221px; font-size: small;" class="datepicker-inline"><strong>Expire Date : </strong>   </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtExpDate" runat="server"  Width="200px" Height="30px" required="" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 221px; height: 46px;">
                <asp:Label ID="lblMessage" runat="server" style="font-size: small"  Width="200px" Height="30px"></asp:Label>
            </td>
            <td style="width: 266px; height: 46px;">
                <asp:Button ID="btnBorrow" runat="server" Text="Borrow" OnClick="btnBorrow_Click" Height="30px" Width="100px" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" Height="30px" Width="100px" />
            </td>
        </tr>
    </table>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Lecturer]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Borrow]"></asp:SqlDataSource>
        </p>
        </asp:Panel>
</asp:Content>
