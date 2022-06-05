<%@ Page Title="" Language="C#" MasterPageFile="~/LectureDesign.Master" AutoEventWireup="true" CodeBehind="ViewTimetable.aspx.cs" Inherits="ABU.LECTURER.ViewTimetable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:30%">
        <h1 style="color:darkslateblue"><u>SEARCH TIMETABLE</u></h1>
        <table class="nav-justified" style=" height: 64px;">
        <tr style="font-size: small; color: #000000">
            <td style="height: 198px">Course<br />
                <strong __designer:mapid="5">
                    <asp:DropDownList ID="ddlCourse" runat="server">
                        <asp:ListItem>-select-</asp:ListItem>
                        <asp:ListItem>Information Techonology</asp:ListItem>
                        <asp:ListItem>Computer Science</asp:ListItem>
                        <asp:ListItem>Business</asp:ListItem>
                        <asp:ListItem>Management</asp:ListItem>
                        <asp:ListItem>Accounting</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Design</asp:ListItem>
                        <asp:ListItem>Animation</asp:ListItem>
                    </asp:DropDownList>
                    </strong></td>
            <td style="height: 198px">Level<br />
                <strong __designer:mapid="12"> <span style="font-size: small" __designer:mapid="14"><span style="color: #000000" __designer:mapid="15">
                    <asp:DropDownList ID="ddlLvl" runat="server" >
                        <asp:ListItem>-select-</asp:ListItem>
                        <asp:ListItem>Level1</asp:ListItem>
                        <asp:ListItem>Level2</asp:ListItem>
                        <asp:ListItem>Level3</asp:ListItem>
                    </asp:DropDownList>
                    </span></span></strong></td>
            <td style="height: 198px">Day<br />
                    <asp:DropDownList ID="ddlDay" runat="server" Width="202px">
                        <asp:ListItem>Monday</asp:ListItem>
                        <asp:ListItem>Tuesday</asp:ListItem>
                        <asp:ListItem>Wednesday</asp:ListItem>
                        <asp:ListItem>Thursday</asp:ListItem>
                        <asp:ListItem>Friday</asp:ListItem>
                    </asp:DropDownList>
                </td>
        </tr>
        <tr style="font-size: small; color: #000000">
            <td class="text-center" colspan="3">
                <br />
                <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Show" Width="125px" />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="TT_Course" HeaderText="Course" SortExpression="TT_Course" />
                        <asp:BoundField DataField="TT_Lvl" HeaderText="Level" SortExpression="TT_Lvl" />
                        <asp:BoundField DataField="TT_Day" HeaderText="Day" SortExpression="TT_Day" />
                        <asp:BoundField DataField="TT_Time" HeaderText="Time" SortExpression="TT_Time" />
                        <asp:BoundField DataField="TT_Module" HeaderText="Module" SortExpression="TT_Module" />
                        <asp:BoundField DataField="TT_Room" HeaderText="Room" SortExpression="TT_Room" />
                        <asp:BoundField DataField="TT_Lecturer" HeaderText="Lecturer" SortExpression="TT_Lecturer" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TT_Course], [TT_Lvl], [TT_Day], [TT_Time], [TT_Module], [TT_Room], [TT_Lecturer] FROM [TimeTable]"></asp:SqlDataSource>
                <br />
                <br />
            </td>
        </tr>
    </table>
    <br />
    <br />
    </div>    
</asp:Content>
