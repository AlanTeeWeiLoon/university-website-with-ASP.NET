<%@ Page Title="" Language="C#" MasterPageFile="~/LayoutLibrarian.Master" AutoEventWireup="true" CodeFile="EditBook.aspx.cs" Inherits="ABU.EditBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelBackground" runat="server" Height="650px" style="margin-top: 42px; background-image: url(Img4/library_background.jpg);" Width="1300px">
   <br />
   

        <h1 style="text-align:center"><strong>Edit Book</strong></h1>
    <table class="w-100" style="margin-left:auto;margin-right:auto;margin-top:50px;margin-bottom:50px">
            <tr>
            <td style="width: 176px; font-size: small;"><strong>Book Name: </strong> </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtBookName" runat="server"  Width="200px" Height="30px" required=""></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 176px; font-size: small;"><strong>Author : </strong>   </td>
            <td style="width: 266px">
                <asp:TextBox ID="txtAuthor" runat="server"  Width="200px" Height="30px" required=""></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 176px"><strong><span style="font-size: small">Category :</span></strong>   </td>
            <td style="width: 266px">
                <asp:DropDownList ID="ddlCategory" runat="server"  Width="200px" Height="30px" required="">
                    <asp:ListItem>Business</asp:ListItem>
                    <asp:ListItem>Information Technology</asp:ListItem>
                    <asp:ListItem>Science</asp:ListItem>
                    <asp:ListItem>Story</asp:ListItem>
                    <asp:ListItem>Magazine</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 176px; font-size: small;"><strong>Rak No. : </strong>   </td>
            <td style="width: 266px">
                <asp:DropDownList ID="ddlRakNo" runat="server"  Width="200px" Height="30px" required="">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList> 
            </td>
        </tr>
       
        <tr>
            <td style="width: 176px; height: 46px;">
                <asp:Label ID="lblMessage" runat="server" style="font-size: small"></asp:Label>
            </td>
            <td style="width: 266px; height: 46px;">
                <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" Height="30px" Width="100px" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" Height="30px" Width="100px"  />
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
        </asp:Panel>
</asp:Content>
