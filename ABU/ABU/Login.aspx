<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="ABU.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    =0,<asp:Panel ID="Panel1" runat="server" Height="525px" style="background-image:url(img1/ABU5.jpg);">
        <asp:Panel ID="Panel2" runat="server" Height="528px" style="margin-left: 303px; margin-top: 0px; opacity :0.85" Width="511px" BackColor="lightgray">
            <h1 style ="text-align:center;font-family :'Berlin Sans FB' ; ">&nbsp;</h1>

            <h1 style="text-align:center;font-family :'Berlin Sans FB' ; ">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/img1/graduation.png" Height ="100px" Width ="100px"/>
            </h1>
            <h1 style="text-align:center;font-family :'Berlin Sans FB' ; ">Login</h1>
            <table class="nav-justified">
                <tr>
                    <td class="text-center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:TextBox ID="txtID" runat="server" BackColor="white" Width="308px" Placeholder="Enter your ID" EnableTheming="True" TextMode="SingleLine" Height="40px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center" style="height: 25px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:TextBox ID="txtPassword" runat="server" BackColor="White" Width="308px" Placeholder="Enter your Password" Height="40px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="height: 26px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size: 10px; color: #0000FF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </span>
                        <asp:LinkButton ID="btnForget" runat="server" OnClick="btnForget_Click" style="font-size: xx-small">Forget Password?</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="116px" ForeColor="Black" BackColor="White" BorderColor="Black" BorderWidth="2px" Height="31px" style="font-size: x-small" OnClick="btnLogin_Click" />
                    </td>
                </tr>
            </table>

        </asp:Panel>
    </asp:Panel>

</asp:Content>
