<%@ Page Title="" Language="C#" MasterPageFile="~/LayoutLibrarian.Master" AutoEventWireup="true" CodeFile="ManageFine.aspx.cs" Inherits="ABU.ManageFine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelBackground" runat="server" Height="650px" style="margin-top: 42px; background-image: url(Img4/library_background.jpg);" Width="1300px">
         <br />
    <h1 style="text-align:center"><strong>Manage Fine</strong></h1>
    <table class="w-100" style="margin-left:auto;margin-right:auto;margin-top:50px;margin-bottom:50px">
        <tr>
            <td style="width: 176px; font-size: small;"><strong>Student ID:</strong></td>
            <td style="width: 211px" class="datepicker-inline">
                <asp:TextBox ID="txtStudId" runat="server"  Width="200px" Height="30px" required=""></asp:TextBox>
            </td>
        </tr>
            <tr>
            <td style="width: 176px; font-size: small;"><strong>Student Name: </strong> </td>
            <td style="width: 211px" class="datepicker-inline">
                <asp:TextBox ID="txtStudName" runat="server"  Width="200px" Height="30px" required=""></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 176px; font-size: small;"><strong>Total Arrears : </strong>   </td>
            <td style="width: 211px" class="datepicker-inline">
                <asp:TextBox ID="txtArrear" runat="server"  Width="200px" Height="30px" required=""></asp:TextBox>
            </td>
        </tr>
            <tr>
            <td style="width: 176px; font-size: small;"><strong>Enter Amount : </strong>   </td>
            <td style="width: 211px" class="datepicker-inline">
                <asp:TextBox ID="txtAmount" runat="server"  Width="200px" Height="30px" require=""></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 176px; height: 46px;">
                <asp:Label ID="lblMessage" runat="server" style="font-size: small"></asp:Label>
            </td>
            <td style="width: 211px; height: 46px;" class="text-right">
                <asp:Button ID="btnEnter" runat="server" Text="Enter" OnClick="btnEnter_Click" Height="30px" Width="100px"/>
                <asp:Button ID="btnReset" runat="server" Height="30px" OnClick="btnReset_Click" Text="Reset" Width="100px" />
                
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
         </asp:Panel>
</asp:Content>
