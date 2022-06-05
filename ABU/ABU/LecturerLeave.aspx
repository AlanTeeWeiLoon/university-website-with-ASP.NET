<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="LecturerLeave.aspx.cs" Inherits="ABU.LecturerLeave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large"><strong>Response Lecturer Leave</strong></h2>
    <br />
    <br />
      <asp:Panel ID="PanelTable" runat="server" Height="527px">
        <table class ="w-100" border="1" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color:white;color:black;text-align:center;font-size: medium;">
            <tr style="font-weight: bold; color: #000000; font-size: medium;text-align:center;">
                <td style="width: 200px; height: 30px; font-weight: bold;">SNo</td>
                <td style="width: 355px; height: 30px; font-weight: bold;">Uploaded Date</td>
                <td style="width: 430px; height: 30px; font-weight: bold;">Lecturer Name</td>
                <td style="width: 355px; height: 30px; font-weight: bold;">Reason</td>
                <td style="width: 355px; height: 30px; font-weight: bold;">Start Date</td>
                <td style="width: 355px; height: 30px; font-weight: bold;">End Date</td>
                <td style="width: 355px; height: 30px; font-weight: bold;">Note</td>
                <td style="width: 355px; height: 30px; font-weight: bold;">Status</td>


                <td style="width: 369px; height: 30px;">Edit</td>
                                 
            </tr>
            
          <%=fetchManageLeave()%>
        </table>
              
            </asp:Panel>
    
</asp:Content>
