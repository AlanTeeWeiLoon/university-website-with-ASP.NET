<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="LeaveApprove.aspx.cs" Inherits="ABU.LeaveApprove" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h2 style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large"><strong>Response Lecturer Leave</strong></h2>
    <br />
    <br />
    <table class="w-100" style="width: 1112px; height: 160px;background-color:white; margin-bottom: 3px;">
        <tr>
            <td style="width: 294px; height: 95px; font-size: medium;">

                Name</td>
            <td style="height: 95px">

                <asp:Label ID="lblName" runat="server" style="font-size: small" Text="Label"></asp:Label>

            </td>
        </tr>
        <tr>
            <td style="width: 294px; height: 95px; font-size: medium;">

                Reason for Requested Leave</td>
            <td style="height: 95px">

                <asp:Label ID="lblReason" runat="server" style="font-size: small" Text="Label"></asp:Label>

            </td>
        </tr>
        <tr>
            <td style="height: 95px; width: 294px; font-size: medium;">

                Dates Requested</td>
            <td style="height: 123px">

                <asp:Label ID="lblDate" runat="server" style="font-size: small" Text="Label"></asp:Label>

            </td>
        </tr>
        <tr>
            <td style="width: 294px; height: 116px; font-size: medium;">

                Notes</td>
            <td style="height: 116px">

                <asp:Label ID="lblNotes" runat="server" style="font-size: small" Text="Label"></asp:Label>

            </td>
        </tr>
        <tr>
            <td style="height: 65px; width: 294px; font-size: medium;">

                Status</td>
            <td style="height: 130px">

                <asp:DropDownList ID="ddlStatus" runat="server" Height="34px" style="font-size: small" Width="160px">
                    <asp:ListItem>Pending...</asp:ListItem>
                    <asp:ListItem>Approve</asp:ListItem>
                    <asp:ListItem>Deny</asp:ListItem>
                </asp:DropDownList>

            </td>
        </tr>

        <tr>
            <td style="height: 65px; " colspan="2" class="text-center">

                <asp:Button ID="btnUpdate" runat="server" ForeColor="Black" Height="37px" OnClick="btnUpdate_Click" style="font-size: small" Text="Update" Width="196px" />
            </td>
        </tr>
    </table>
</asp:Content>
