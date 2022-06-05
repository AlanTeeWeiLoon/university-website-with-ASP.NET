<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeFile="SFeedback.aspx.cs" Inherits="ABU.SFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br />
    <br />
    <br />
    <br />
    <h1 style="text-align:center"><strong>Feedback</strong></h1>

    <table class="w-100" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color: white"">
        <tr>
            <td style="width: 100px">
                <asp:Button ID="btnLecturer" runat="server" Text="Lecturer" style="width: 200px;height:50px" OnClick="btnLecturer_Click"/></td>
            <td style="width: 100px">
                
               
                <asp:Button ID="btnUniversity" runat="server" Height="50px" OnClick="btnUniversity_Click" Text="University" Width="200px" />
                
               
                </td>
        </tr>
    </table>
       
  

<style>
        .radioButtonList { list-style:none; margin: 0; padding: 0;}
        .radioButtonList.horizontal li { display: inline;}

        .radioButtonList label{
            display:inline;
        }
</style>
    <asp:Panel ID="Panel1" runat="server" Height="250px">
    <table class="w-100" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color: white"">
        <tr>
            <td style="width: 354px"><strong>To : (Lecturer Name)</strong></td>
            <td>
                <asp:TextBox ID="txtLecName" runat="server" Width="200px" Height="30" require=""></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 354px"><strong>Short Comments:</strong></td>
            <td>
                <asp:TextBox ID="txtComments" runat="server" Width="400px" Height="30" require=""></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 354px"><strong>Satisfaction Ratings: </strong> </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="1 - 5 (5 is highly satisfied)"  Font-Bold="True" ForeColor="Red"></asp:Label>
                <br />
                <asp:RadioButtonList ID="rdbRate" runat="server" RepeatDirection="Horizontal" Width="300px" Height="30" require="">
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="2"></asp:ListItem>
                    <asp:ListItem Value="3"></asp:ListItem>
                    <asp:ListItem Value="4"></asp:ListItem>
                    <asp:ListItem Value="5"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="width: 354px"></td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" style="width: 200px;height:50px" />
                <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" style="width: 200px;height:50px" />
            </td>
        </tr>
    </table>
        </asp:Panel>
    
    <asp:Panel ID="Panel2" runat="server" Height="250px">

        <table class="w-100" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color: white"">
        <tr>
            <td style="width: 354px"><strong>To:</strong></td>
            <td>
                <asp:TextBox ID="txtUniversity" runat="server" Width="200px" Height="30" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 354px"><strong>Short Comments:</strong></td>
            <td>
                <asp:TextBox ID="txtComments1" runat="server" Width="400px" Height="30" require=""></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 354px"><strong>Satisfaction Ratings: </strong> </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="1 - 5 (5 is highly satisfied)"  Font-Bold="True" ForeColor="Red"></asp:Label>
                <br />
                <asp:RadioButtonList ID="rdbrate1" runat="server" RepeatDirection="Horizontal" Width="300px" Height="30" require="">
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="2"></asp:ListItem>
                    <asp:ListItem Value="3"></asp:ListItem>
                    <asp:ListItem Value="4"></asp:ListItem>
                    <asp:ListItem Value="5"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="width: 354px"></td>
            <td>
                <asp:Button ID="btnSubmit1" runat="server" OnClick="btnSubmit1_Click" Text="Submit" style="width: 200px;height:50px" />
                <asp:Button ID="btnReset1" runat="server" OnClick="btnReset1_Click" Text="Reset" style="width: 200px;height:50px" />
            </td>
        </tr>
    </table>


    </asp:Panel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [Id], [comment], [rate] FROM [Feedback]"></asp:SqlDataSource>
</asp:Content>
