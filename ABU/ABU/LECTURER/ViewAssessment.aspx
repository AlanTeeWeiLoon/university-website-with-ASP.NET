<%@ Page Title="" Language="C#" MasterPageFile="~/LectureDesign.Master" AutoEventWireup="true" CodeBehind="ViewAssessment.aspx.cs" Inherits="ABU.LECTURER.ViewAssessment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="margin-left:30%">
        <h1 style="color:darkslateblue"><u>ASSESSMENT MANAGEMENT</u></h1>
        
        <asp:Button ID="btnCreate" runat="server" Text="Create" OnClick="btnCreate_Click"/>
         <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField HeaderText="Edit" ShowHeader="True" ShowSelectButton="True" />
                <asp:BoundField DataField="AssessmentID" HeaderText="AssessmentID" InsertVisible="False" ReadOnly="True" SortExpression="AssessmentID" />
                <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="AssessmentName" HeaderText="AssessmentName" SortExpression="AssessmentName" />
                <asp:BoundField DataField="Total_Marks" HeaderText="Total_Marks" SortExpression="Total_Marks" />
                <asp:BoundField DataField="Deadline" HeaderText="Deadline" SortExpression="Deadline" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [AssessmentID], [Course], [Year], [AssessmentName], [Total_Marks], [Deadline], [Document], [UploadDate] FROM [Assessment]"></asp:SqlDataSource>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server">
        </asp:EntityDataSource>
        <br />
        <br />
        
</asp:Content>
