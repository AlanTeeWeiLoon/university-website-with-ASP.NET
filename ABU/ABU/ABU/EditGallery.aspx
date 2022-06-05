<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="EditGallery.aspx.cs" Inherits="ABU.EditGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <asp:Panel ID="Panel1" runat="server" Height="279px">
        <h1 style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large"><strong>Add Gallery</strong></h1>
        <table class="nav-justified" style="background-color:white; height: 191px; width: 53%; font-size: small; color: #000000; margin-left: 8px;">
            <tr>
                <td style="width: 87px">&nbsp;&nbsp; Tile:</td>
                <td class="modal-sm" style="width: 103px">
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 87px">&nbsp;&nbsp; Image:</td>
                <td class="modal-sm" style="width: 103px">
                    <asp:FileUpload ID="fuImage" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="width: 87px">&nbsp;</td>
                <td class="modal-sm" style="width: 103px">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                </td>
            </tr>
        </table>
        
    </asp:Panel>
          <p style="font-size: large; font-family: Verdana, Geneva, Tahoma, sans-serif; color: #000000">
        <strong>Gallery</strong></p>
        
         <asp:Panel ID="PanelTable" runat="server" Height="383px">
        <table class ="w-100" border="1" style="margin-top:10px;margin-bottom:25px;background-color:white;color:black;text-align:center;font-size: medium;">
            <tr style="font-weight: bold; color: #000000; font-size: medium;text-align:center;">
                <td style="width: 200px; height: 30px; " class="text-left">Title</td>
                <td style="width: 430px; height: 30px;" class="text-left">Image</td>


            </tr>
            
          <%=fetchGallery()%>
        </table>
              
            </asp:Panel>
   
</asp:Content>
