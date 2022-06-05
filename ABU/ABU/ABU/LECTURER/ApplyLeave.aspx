<%@ Page Title="" Language="C#" MasterPageFile="~/LectureDesign.Master" AutoEventWireup="true" CodeBehind="ApplyLeave.aspx.cs" Inherits="ABU.LECTURER.ApplyLeave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:30%">
        <h1 style="color:darkslateblue"><u> LEAVE APPLICATION</u></h1>
        <table>
            <tr>
                <td>Name </td>
                <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Reason for requested leave </td>
                <td><asp:DropDownList ID="rdbOperator" runat="server">
                    <asp:ListItem>---Select Reason---</asp:ListItem>
                    <asp:ListItem>Annual Leave</asp:ListItem>
                    <asp:ListItem>Emergency Leave</asp:ListItem>
                    <asp:ListItem>Sick Leave</asp:ListItem>
                    <asp:ListItem>Unpaid Leave</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please select one reason" ControlToValidate="rdbOperator" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Dates Requested  </td>
                <td>From <asp:TextBox ID="StartDate" runat="server" TextMode="Date"></asp:TextBox>To <asp:TextBox ID="EndDate" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please select a start date." ControlToValidate="StartDate" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please select a end date." ControlToValidate="EndDate" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Notes </td>
                <td><asp:TextBox ID="txtNotes" runat="server" Height="131px" Width="365px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter something " ControlToValidate="StartDate" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <h1 style="margin-left:30%"><asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            
        </h1>
    </div>
</asp:Content>
