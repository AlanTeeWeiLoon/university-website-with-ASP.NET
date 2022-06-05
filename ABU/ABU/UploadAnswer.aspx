<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="UploadAnswer.aspx.cs" Inherits="ABU.UploadAnswer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <br />
    <br />
    <br />

     <h1 style="text-align:center"><strong>Answer Upload</strong></h1> 
  
        <table class="w-100" style="margin-left:auto;margin-right:auto;margin-top:50px;margin-bottom:50px" >
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
                <td style="width: 228px">Assessment Name:</td>
                <td>    
                    <asp:DropDownList ID="ddlAssID" runat="server" DataSourceID="SqlDataSource1" DataTextField="AssessmentName" DataValueField="AssessmentName" Height="16px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [AssessmentName] FROM [Assessment]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 228px">Select File:</td>
                <td>  
                    <asp:FileUpload ID="FileUpload" runat="server" />  
                </td>
            </tr>
            <tr>
                <td style="width: 228px; height: 30px;">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
                <td style="height: 30px">  
                    <asp:Button ID="btnSubmit" runat="server"  Text="Submit" OnClick="submit_click" />  
                </td>
            </tr>
        </table>
    <br />
    <asp:Panel ID="Panel1" runat="server">
                <table class ="w-100" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color: white"">
            <tr style="font-weight: bold;">
                <td style="width: 250px">File Name</td>
                <td style="width: 200px">Upload Date</td>
                <td style="width: 150px">File</td>
                <td style="width: 150px">Remove</td>

            </tr>
            <%=fetchfile()%>
        </table>

    </asp:Panel>
</asp:Content>
