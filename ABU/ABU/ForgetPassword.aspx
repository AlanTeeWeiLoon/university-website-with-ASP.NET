<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="ABU.ForgetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1>
         <span style="font-family: Verdana, Geneva, Tahoma, sans-serif"><strong>Forgot Password</strong></span></h1>
     <p>
         &nbsp;</p>
     <p>
         &nbsp;</p>
<table class="w-100">
    <tr>
        <td style="width: 305px; font-size: medium; color: #000000;" class="text-center">Email:</td>
        <td style="width: 259px">
            <asp:TextBox ID="txtEmail" runat="server" Height="30px" Width="251px" style="font-size: small"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 305px; height: 23px;"></td>
        <td style="height: 23px; width: 259px">
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" ForeColor="Black" Height="38px" style="font-size: x-small" Width="93px" />
            &nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td style="width: 305px">&nbsp;</td>
        <td style="width: 259px">
            <asp:Label ID="lblMessage" runat="server" Text="lblMessage" style="font-size: x-small"></asp:Label>
        </td>
    </tr>
</table>
    <br />
    <br />
    <br />
</asp:Content>
