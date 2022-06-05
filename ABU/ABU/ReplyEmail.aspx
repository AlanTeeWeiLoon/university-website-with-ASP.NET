<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="ReplyEmail.aspx.cs" Inherits="ABU.ReplyEmail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <h1>
             <span style="font-family: Verdana, Geneva, Tahoma, sans-serif"><strong>Reply Email</strong></span></h1>
     <p>
         &nbsp;</p>
     <p>
         &nbsp;</p>
<table class="w-100">
    <tr>
        <td style="width: 305px; font-size: medium; color: #000000;" class="text-center">Email:</td>
        <td style="width: 259px">
            <asp:Label ID="lblEmail" runat="server" style="font-size: small" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 305px; font-size: medium; color: #000000; height: 27px;" class="text-center">Message:</td>
        <td style="width: 259px; height: 27px;">
            <asp:TextBox ID="txtMessage" runat="server" Height="70px" Width="251px" style="font-size: small" TextMode="MultiLine"></asp:TextBox>
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
