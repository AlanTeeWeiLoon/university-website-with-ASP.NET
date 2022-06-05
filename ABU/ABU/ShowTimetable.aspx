<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="ShowTimetable.aspx.cs" Inherits="ABU.ShowTimetable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: x-large; color: #000000">
        <strong>Show Time Table</strong></p>
    <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: small; color: #666666">
        <strong>[According Course]</strong></p>
    <table class="nav-justified" style=" height: 64px;">
        <tr style="font-size: small; color: #000000">
            <td>Course<br />
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
            <td>Level<br />
                <strong __designer:mapid="12"> <span style="font-size: small" __designer:mapid="14"><span style="color: #000000" __designer:mapid="15">
                    <asp:DropDownList ID="ddlLvl" runat="server" Height="22px" style="font-size: x-small; margin-left: 30;" Width="249px">
                        <asp:ListItem>-select-</asp:ListItem>
                        <asp:ListItem>Level1</asp:ListItem>
                        <asp:ListItem>Level2</asp:ListItem>
                        <asp:ListItem>Level3</asp:ListItem>
                    </asp:DropDownList>
                    </span></span></strong></td>
            <td>Day<br />
                    <asp:DropDownList ID="ddlDay" runat="server" Width="128px">
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
        <table class="w-100" border="1" style="width: 993px; height: 50px; font-size: small; color:black;background-color:white;align-items:baseline">
            <tr style = "font-weight: bold; font-size: small;" >
                <td style="height: 41px; width: 125px;">Id</td>
                <td style="height: 41px; width: 304px;">Time</td>
                <td style="width: 356px; height: 41px;">Module</td>
                <td style="width: 330px; height: 41px;">ClassRoom</td>
                <td style="width: 254px; height: 41px;">Lecturer</td>
                 <td style="width: 111px; height: 41px;">Edit</td>
            </tr>

            <%=fetchTimetable() %>

        </table>
    </asp:Panel>


        <p style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: small; color: #666666">
        <strong>[According Lecturer]</strong></p>

    <table class="nav-justified" style=" height: 64px;">
        <tr style="font-size: small; color: #000000">
            <td style="height: 52px; width: 476px">Lecturer:<br />
                    <asp:DropDownList ID="ddlLecturer" runat="server" DataSourceID="SqlDataSource1" DataTextField="Lec_Name" DataValueField="Lec_Name" Height="24px" style="font-size: small" Width="232px">
                    </asp:DropDownList>
                </td>
            <td style="height: 52px">Day<br />
                    <asp:DropDownList ID="ddlDay0" runat="server" Width="128px">
                        <asp:ListItem>Monday</asp:ListItem>
                        <asp:ListItem>Tuesday</asp:ListItem>
                        <asp:ListItem>Wednesday</asp:ListItem>
                        <asp:ListItem>Thursday</asp:ListItem>
                        <asp:ListItem>Friday</asp:ListItem>
                    </asp:DropDownList>
                </td>
        </tr>
        <tr style="font-size: small; color: #000000">
            <td class="text-center" colspan="2">
                <br />
                <asp:Button ID="btnShow2" runat="server" OnClick="btnShow2_Click" Text="Show" Width="127px" />
                <br />
                <br />
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel2" runat="server">
        <table class="w-100" border="1" style="width: 993px; height: 50px; font-size: small; color:black;background-color:white;align-items:baseline">
            <tr style = "font-weight: bold; font-size: small;" >
                <td style="height: 41px; width: 236px;">Id</td>
                <td style="height: 41px; width: 464px;">Time</td>
                <td style="width: 600px; height: 41px;">Course</td>
                <td style="width: 312px; height: 41px;">Level</td>
                <td style="width: 252px; height: 41px;">Module</td>
                <td style="width: 330px; height: 41px;">ClassRoom</td>
                <td style="width: 150px; height: 41px;">Edit</td>
                
            </tr>

            <%=fetchLecTimetable() %>

        </table>
        <br />
        <br />
        <br />
        <br />



    </asp:Panel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Lec_Name], [Lec_Id] FROM [Lecturer]"></asp:SqlDataSource>
</asp:Content>
