<%@ Page Title="" Language="C#" MasterPageFile="~/LayoutLibrarian.Master" AutoEventWireup="true" CodeFile="UpdateRecommendedBook.aspx.cs" Inherits="ABU.UpdateRecommendedBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelBackground" runat="server" Height="650px" style="margin-top: 42px; background-image: url(Img4/library_background.jpg);" Width="1300px">
         <br />
    <h1 style="text-align:center"><strong>Update Recommended Book</strong></h1>
    <table class="w-100" style="margin-left:auto;margin-right:auto;margin-top:50px;margin-bottom:50px">
        <tr>
            <td style="width: 176px; font-size: small;"><strong>Book ID:</strong></td>
            <td style="width: 211px" class="datepicker-inline">
                <asp:TextBox ID="txtBookId" runat="server"  Width="200px" Height="30px"></asp:TextBox>
            </td>
        </tr>
            <tr>
            <td style="width: 176px; font-size: small;"><strong>Book Name: </strong> </td>
            <td style="width: 211px" class="datepicker-inline">
                <asp:TextBox ID="txtBookName" runat="server"  Width="200px" Height="30px"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td style="width: 176px; font-size: small;"><strong>Author : </strong>   </td>
            <td style="width: 211px" class="datepicker-inline">
                <asp:TextBox ID="txtAuthor" runat="server"  Width="200px" Height="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 176px; font-size: small;"><strong>Category : </strong>   </td>
            <td style="width: 211px" class="datepicker-inline">
                <asp:DropDownList ID="ddlCategory" runat="server"  Width="200px" Height="30px">
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
            <td style="width: 211px" class="datepicker-inline">
                <asp:DropDownList ID="ddlRakNo" runat="server"  Width="200px" Height="30px">
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
            <td style="width: 211px; height: 46px;" class="text-right">
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" Height="30px" Width="100px"/>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
         </asp:Panel>
</asp:Content>
