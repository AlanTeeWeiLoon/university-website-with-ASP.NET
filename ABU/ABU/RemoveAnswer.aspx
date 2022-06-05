<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeFile="RemoveAnswer.aspx.cs" Inherits="ABU.RemoveAnswer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <br />
    <br />
    <br />
    <br />

    <h1 style="text-align:center"><strong>Remove Answer</strong></h1>
           <table class="w-100" style="margin-left:auto;margin-right:auto;margin-top:50px;margin-bottom:50px" >
            <tr>
                <td style="width: 228px">ID:</td>
                <td><asp:TextBox ID="txtid" runat="server" Width="210px"></asp:TextBox>    
                    </td>
            </tr>
            <tr>
                <td style="width: 228px">File Name:</td>
                <td>    
                    <asp:TextBox ID="txtfilename" runat="server" Width="210px"></asp:TextBox>  
                </td>
            </tr>
            <tr>
                <td style="width: 228px">Upload Date: </td>
                <td>    
                    <asp:TextBox ID="txtuploaddate" runat="server" TextMode="Date" require ="" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 228px">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
                <td>  
                    <asp:Button ID="btnRemove" runat="server"  Text="Remove" OnClick="btnRemove_click" style="height: 26px" />  
                </td>
            </tr>
        </table>
    <br />
        <asp:Panel ID="Panel1" runat="server">
                <table class ="w-100" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color: white"">
            <tr style="font-weight: bold;">
                <td style="width: 50px">ID.</td>
                <td style="width: 250px">File Name</td>
                <td style="width: 200px">Upload Date</td>
                <td style="width: 150px">File</td>
                

            </tr>
            <%=fetchfile()%>
        </table>

    </asp:Panel>
</asp:Content>
