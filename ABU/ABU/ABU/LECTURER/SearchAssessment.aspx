<%@ Page Title="" Language="C#" MasterPageFile="~/LectureDesign.Master" AutoEventWireup="true" CodeBehind="SearchAssessment.aspx.cs" Inherits="ABU.LECTURER.SearchAssessment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="margin-left:30%">
        <h1> SEARCH ASSESSMENT</h1>
        <table class="w-100">
            <tr>
                <td>Assessment Name</td>
                <td>
                    <asp:TextBox ID="txtAN" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />

                </td>
            </tr>
        </table>
        <br />
          <asp:Panel ID="Panel1" runat="server">
            <table class="w-100" border="1">
                <tr style ="font-weight:bold;">
                    <td style="width: 375px">Course</td>
                    <td style="width: 375px">Year</td>
                    <td style="width: 300px">Assessment Name</td>                       
                     <td style="width: 300px">Submittion Date</td>  
                    <td style="width: 300px">Download</td>                  
                </tr>
                <%=fetchData()%>
            </table>

        </asp:Panel>
    </div>
</asp:Content>
