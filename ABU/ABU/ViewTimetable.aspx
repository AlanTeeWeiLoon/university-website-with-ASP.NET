<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ViewTimetable.aspx.cs" Inherits="ABU.ViewTimetable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <br />
    <br />
    <br />


        <h1 style="text-align:center"><strong>Timetable</strong></h1> 
    <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: small; color: #666666">
    <table class="nav-justified" style=" height: 64px;">
        <tr style="font-size: small; color: #000000">
            <td style="height: 61px">Course<br />
                <strong __designer:mapid="5">
                    <asp:DropDownList ID="ddlCourse" runat="server" Height="24px" style="font-size: x-small" Width="236px">
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
            <td style="height: 61px">Level<br />
                <strong __designer:mapid="12"> <span style="font-size: small" __designer:mapid="14"><span style="color: #000000" __designer:mapid="15">
                    <asp:DropDownList ID="ddlLvl" runat="server" Height="22px" style="font-size: x-small; margin-left: 30;" Width="249px">
                        <asp:ListItem>-select-</asp:ListItem>
                        <asp:ListItem>Level1</asp:ListItem>
                        <asp:ListItem>Level2</asp:ListItem>
                        <asp:ListItem>Level3</asp:ListItem>
                    </asp:DropDownList>
                    </span></span></strong></td>
            <td style="height: 61px">Day<br />
                    <asp:DropDownList ID="ddlDay" runat="server" Width="164px">
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
            </td>
        </tr>
    </table>

        <asp:Panel ID="Panel1" runat="server" Height="160px">
        <table class ="w-100" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color: white"">
            <tr style = "font-weight: bold; font-size: small;" >
                <td style="width: 252px; height: 41px">Time</td>
                <td style="width: 252px; height: 41px;">Module</td>
                <td style="width: 330px; height: 41px;">ClassRoom</td>
                <td style="width: 203px; height: 41px;">Lecturer</td>
            </tr>

            <%=fetchTimetable() %>

        </table>
    </asp:Panel>
</asp:Content>
