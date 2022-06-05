<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="ViewScholarship.aspx.cs" Inherits="ABU.ViewScholarship" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1 style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: x-large;" class="text-left"><strong>Scholarship Applicant</strong></h1>
        <asp:Panel ID="PanelTable" runat="server" Height="527px">
        <table class ="w-100" border="1" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color:white;color:black;font-size:small">
            <tr style="font-weight: bold; color: #000000; ">
                <td style="width: 200px; height: 30px; ">Name</td>
                <td style="width: 100px; height: 30px;">Gender</td>
                <td style="width: 125px; height: 30px;">Birthday</td>
                <td style="width: 125px; height: 30px;">IC/Passport</td>
                <td style="width: 125px; height: 30px;">HomePhone</td>
                <td style="width: 125px; height: 30px;">Phone</td>
                <td style="width: 150px; height: 30px;" >Email</td>
                <td style="width: 150px; height: 30px;">Nationality</td>
                <td style="width: 150px; height: 30px;">InterestCourse</td>
                <td style="width: 150px; height: 30px;">Qualification</td>
                <td style="width: 100px; height: 30px;">Attachment</td>
                <td style="width: 100px; height: 30px;">Reply</td>
                                 
            </tr>
            
          <%=fetchScholarship()%>
        </table>
              
            </asp:Panel>
</asp:Content>
