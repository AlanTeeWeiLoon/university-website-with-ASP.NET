<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="EditSlidePage.aspx.cs" Inherits="ABU.EditSlidePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; color: #000000">
        <strong>Edit Slide Page</strong></p>
    <table class="nav-justified" style="background-color:white; height: 339px; width: 70%; margin-left: 153px;">
        <tr>
            <td class="modal-sm" style="width: 175px; font-size: small; color: #000000; text-align: center; height: 68px;">Title:</td>
            <td style="width: 163px; height: 68px;">
                <asp:TextBox ID="txtTitle" runat="server" Height="36px" Width="174px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 11px; width: 175px; font-size: small; color: #000000;" class="text-center">Image:</td>
            <td style="height: 50px; width: 163px">
                <asp:Image ID="Image" runat="server" Height="81px" Width="190px" />
                <asp:FileUpload ID="fuImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 175px; font-size: small; color: #000000; text-align: center;">Link:</td>
            <td style="width: 163px">
                <asp:TextBox ID="txtLink" runat="server" Height="36px" style="margin-bottom: 4" Width="174px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                <asp:Button ID="btnUpdate" runat="server" ForeColor="Black" Height="30px" OnClick="btnUpdate_Click" style="font-size: x-small" Text="Update" Width="159px" />
            </td>
        </tr>
    </table>

</asp:Content>
