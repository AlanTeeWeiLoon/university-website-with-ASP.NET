<%@ Page Title="" Language="C#" MasterPageFile="~/LectureDesign.Master" AutoEventWireup="true" CodeFile="LectureMenu.aspx.cs" Inherits="ABU.LECTURER.LectureMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:30%">
        
        <h1><u>WELCOME TO LECTURER PAGE</u></h1><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LECTURER/CreateAssessment.aspx" ImageHeight="150px" ImageUrl="~/LECTURER/Image/uploadAssessment.jpg" ImageWidth="130px">Create Assessment</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/LECTURER/ApplyLeave.aspx" ImageHeight="150px" ImageUrl="~/LECTURER/Image/ApplyLeave.png" ImageWidth="130px">Leave Application</asp:HyperLink>
             <br />    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Create Assessment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Leave Application<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/LECTURER/SearchAssessment.aspx" ImageHeight="150px" ImageUrl="~/LECTURER/Image/SearchAssessment.png" ImageWidth="130px">Search Assessment</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/LECTURER/ViewTimetable.aspx" ImageHeight="150px" ImageUrl="~/LECTURER/Image/viewTimeTable.jpg" ImageWidth="130px">Time Table</asp:HyperLink>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search Assessment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Time Table<br />
            <br />
        <br />
        <br />
        <br />
        <br />
            
    </div>
</asp:Content>
