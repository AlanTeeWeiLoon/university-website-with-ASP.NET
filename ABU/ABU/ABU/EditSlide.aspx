<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="EditSlide.aspx.cs" Inherits="ABU.EditSlide" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p style="font-size: large; font-family: Verdana, Geneva, Tahoma, sans-serif; color: #000000">
        <strong>Edit Slide Show</strong></p>

         <asp:Panel ID="PanelTable" runat="server" Height="527px">
        <table class ="w-100" border="1" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color:white;color:black;text-align:center;font-size: medium;">
            <tr style="font-weight: bold; color: #000000; font-size: medium;text-align:center;">
                <td style="width: 200px; height: 30px; ">Title</td>
                <td style="width: 430px; height: 30px;">Image</td>
                <td style="width: 355px; height: 30px;">Link</td>
                <td style="width: 369px; height: 30px;">Edit</td>
                                 
            </tr>
            
          <%=fetchSlide()%>
        </table>
              
            </asp:Panel>
    

</asp:Content>
