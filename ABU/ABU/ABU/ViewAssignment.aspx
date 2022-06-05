<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ViewAssignment.aspx.cs" Inherits="ABU.ViewAssignment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <br />
    <br />
    <br />
    <br />

        <h1 style="text-align:center"><strong>Assignment</strong></h1>
        <asp:Panel ID="PanelTable" runat="server" Height="527px">
        <table class ="w-100" border="1" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color: white"">
            <tr style="font-weight: bold;">
                <td style="width: 200px; height: 20px;">Assessment</td>
                <td style="width: 200px; height: 20px;">File Name</td>
                <td style="width: 150px; height: 20px;">Upload Date</td>
                <td style="width: 200px; height: 20px;">Deadline</td>
                <td style="width: 200px; height: 20px;" >Download</td>
                
                                 
            </tr>
        <%=fetchAssignment()%>
        </table>
            </asp:Panel>
</asp:Content>
