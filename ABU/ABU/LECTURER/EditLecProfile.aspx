<%@ Page Title="" Language="C#" MasterPageFile="~/LectureDesign.Master" AutoEventWireup="true" CodeBehind="EditLecProfile.aspx.cs" Inherits="ABU.EditLecProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:30%">
        <h1 style="color:darkslateblue"><u>USER PROFILE</u></h1>
        <br />
        <asp:Image ID="LecImage" runat="server" Height="250px" Width="250px" />
        <table>
            <tr>
                <td>Name</td>
                <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Contact Number</td>
                <td><asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Course</td>
                <td><asp:TextBox ID="txtCourse" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
        <asp:Label ID="lbl1" runat="server" />

    </div>
</asp:Content>
