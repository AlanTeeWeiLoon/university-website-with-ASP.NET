<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="ViewRegister.aspx.cs" Inherits="ABU.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: x-large;" class="text-left"><strong>Registration Form</strong></h1>
        <asp:Panel ID="PanelTable" runat="server" Height="527px">
        <table class ="w-100" border="1" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color:lightgrey">
            <tr style="font-weight: bold; color: #000000; ">
                <td style="width: 200px; height: 30px; ">Name</td>
                <td style="width: 125px; height: 30px;">Birthday</td>
                <td style="width: 100px; height: 30px;">Gender</td>
                <td style="width: 125px; height: 30px;">Phone</td>
                <td style="width: 150px; height: 30px;" >Email</td>
                <td style="width: 150px; height: 30px;">InterestCourse</td>
                <td style="width: 100px; height: 30px;">Attachment</td>
                <td style="width: 100px; height: 30px;">Reply</td>
                                 
            </tr>
            
          <%=fetchAdmin()%>
        </table>
              
            </asp:Panel>
</asp:Content>
