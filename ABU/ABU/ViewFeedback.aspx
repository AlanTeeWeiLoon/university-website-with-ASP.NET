<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="ViewFeedback.aspx.cs" Inherits="ABU.CheckFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: x-large; color: #000000">
        <strong>View Feedback</strong></p>
         <asp:Panel ID="PanelTable" runat="server" Height="527px">
        <table class ="w-100" border="1" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color:white;color:black">
            <tr style="font-weight: bold; color: #000000; font-size: small;">
                <td style="width: 200px; height: 30px; ">Name</td>
                <td style="width: 125px; height: 30px;">Email</td>
                <td style="width: 125px; height: 30px;">Purpose</td>
                <td style="width: 405px; height: 30px;">Add On</td>
                <td style="width: 100px; height: 30px;">Reply</td>
                                 
            </tr>
            
          <%=fetchFeedback()%>
        </table>
              
            </asp:Panel>
</asp:Content>
