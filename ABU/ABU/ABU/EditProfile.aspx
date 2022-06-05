<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="ABU.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br />
    <br />
    <br />
    <br />

        <h1 style="text-align:center"><strong>Edit Profile</strong></h1>
    <table class="w-100" style="margin-left:auto;margin-right:auto;margin-top:50px;margin-bottom:50px">
        <tr>
            <td style="font-size: small;" colspan="2" class="text-center">
                <asp:Image ID="Stud_Image" runat="server" Height="250px" Width="200px" />
            </td>
            
        </tr>
            <tr>
            <td style="width: 176px; font-size: small;">&nbsp;</td>
            <td style="width: 266px">
                &nbsp;</td>
            
        </tr>
            <tr>
            <td style="width: 176px; font-size: small;"><strong> Name: </strong> </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtStudName" runat="server"  Width="300px" Height="30px" ReadOnly="True" ></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 176px; font-size: small;"><strong>Phone No. : </strong>   </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtPhoneNo" runat="server"  Width="300px" Height="30px" require =""></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 176px; font-size: small;"><strong>Email : </strong>   </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtEmail" runat="server"  Width="300px" Height="30px" require =""></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 176px; font-size: small;"><strong>Course : </strong>   </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtCourse" runat="server"  Width="300px" Height="30px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 176px; font-size: small;"><strong>Level : </strong>   </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtLvl" runat="server"  Width="300px" Height="30px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
       
       
        <tr>
            <td style="width: 176px; font-size: small;">&nbsp;</td>
            <td style="width: 266px">
                &nbsp;</td>
        </tr>
       
       
        <tr>
            <td style="width: 176px; height: 46px;" class="text-center">
                 <asp:Label ID="lblMessage" runat="server" style="font-size: small"></asp:Label>

            </td>
            <td style="width: 266px; height: 46px;" class="text-center">
                <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" Height="50px" Width="100px" />
            </td>
        </tr>
    </table>

</asp:Content>
