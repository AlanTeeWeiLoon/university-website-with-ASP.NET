<%@ Page Title="" Language="C#" MasterPageFile="~/LectureDesign.Master" AutoEventWireup="true" CodeBehind="MarkAssessment.aspx.cs" Inherits="ABU.LECTURER.MarkAssessment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:30%">
        <h1 style="color:darkslateblue">MARK ASSESSMENT</h1>
        <asp:Panel ID="PanelTable1" runat="server" >
            <table>
                           
                <%=fetchData() %>
            </table>
        </asp:Panel>
        <br />
        <table>
            <tr>
                <td> <asp:TextBox ID="txtMarks" runat="server" Width="50px" TextMode="Number"></asp:TextBox> </td>
                <td>/<asp:Label ID="lblMarks" runat="server"></asp:Label> Marks</td>
            </tr>
        </table>
   
        <br />
        <asp:Button ID ="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <asp:Label ID="Label1" runat="server" ></asp:Label>
 
    </div>
</asp:Content>
