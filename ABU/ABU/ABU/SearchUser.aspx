<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="SearchUser.aspx.cs" Inherits="ABU.SearchUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 style="font-family: Verdana, Geneva, Tahoma, sans-serif"><strong>Search User</strong></h1>
     <p style="font-family: Verdana, Geneva, Tahoma, sans-serif" class="text-center">
         <asp:Button ID="Button1" runat="server" style="font-size: small" Text="Student" Width="242px" OnClick="Button1_Click" />
         <asp:Button ID="Button2" runat="server" style="font-size: small" Text="Lecturer" Width="242px" OnClick="Button2_Click" />
     </p>


    <asp:Panel ID="Panel1" runat="server">
    <table class="w-100" border="1" style="background-color:white; width: 883px; height: 39px; font-size: small; text-align:center; color: #000000;" align="center">
        <tr style="font-weight:bold;">
            <td>Id</td>
            <td>Name</td>
            <td>Phone</td>
            <td>Email</td>
            <td>ProfilePic</td>
            <td>Course</td>
            <td>Level</td>
            <td>Edit</td>
        </tr>

        <%=fetchSData()%>
           
    </table>
     </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
    <table class="w-100" border="1" style="background-color:white; width: 883px; height: 39px; font-size: small; text-align:center; color: #000000;" align="center">
        <tr style="font-weight:bold;">
            <td>Id</td>
            <td>Name</td>
            <td>Phone</td>
            <td>Email</td>
            <td>ProfilePic</td>
            <td>Course</td>
            <td>Edit</td>
        </tr>

        <%=fetchLData()%>
           
    </table>
     </asp:Panel>
    <br />
    <br />
    <br />

</asp:Content>
