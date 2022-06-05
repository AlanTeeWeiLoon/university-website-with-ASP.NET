<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="SProfile.aspx.cs" Inherits="ABU.SProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
    <br />
    <br />
    <br />

        <h1 style="text-align:center"><strong>Profile</strong></h1>
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
                <asp:TextBox ID="txtPhoneNo" runat="server"  Width="300px" Height="30px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 176px; font-size: small;"><strong>Email : </strong>   </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtEmail" runat="server"  Width="300px" Height="30px" ReadOnly="True"></asp:TextBox>
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
            <td style="width: 176px; font-size: small; height: 30px;"></td>
            <td style="width: 266px; height: 30px;">
                </td>
        </tr>
       
       
        <tr>
            <td style="width: 176px; height: 46px;" class="text-center">
                &nbsp;</td>
            <td style="width: 266px; height: 46px;" class="text-center">
                <asp:Button ID="btnEditS" runat="server" Height="39px" OnClick="btnEditS_Click" Text="Edit Profile" Width="108px" />
            </td>
        </tr>
    </table>
</asp:Content>
