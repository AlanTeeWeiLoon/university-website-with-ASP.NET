<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="createTimetable.aspx.cs" Inherits="ABU.createTimetable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>    <asp:Label ID="Label1" runat="server" Text="Create Time Table" ForeColor="Black" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: x-large"></asp:Label>
    </strong>
    <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="572px" style="margin-left: 218px" Width="652px">
        <br />
         <br />
        <table class="nav-justified" style="height: 430px; width: 92%; margin-left: 30px;">
            <tr style="font-size: medium; color: #000000">
                <td class="text-left" style="height: 50px; width: 286px; font-size: small"><strong>Course:<br />
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
                <td style="height: 50px; font-size: small"><strong>Lvl:<br /> <span style="font-size: small"><span style="color: #000000">
                    <asp:DropDownList ID="ddlLvl" runat="server" Height="22px" style="font-size: x-small; margin-left: 30;" Width="249px">
                        <asp:ListItem>-select-</asp:ListItem>
                        <asp:ListItem>Level1</asp:ListItem>
                        <asp:ListItem>Level2</asp:ListItem>
                        <asp:ListItem>Level3</asp:ListItem>
                    </asp:DropDownList>
                    </span></span></strong></td>
            </tr>
            <tr>
                <td class="text-center" style="height: 70px; font-size: small; font-family: 'Bahnschrift SemiLight'; color: #000000; width: 286px;"><strong>Day:&nbsp; </strong></td>
                <td class="text-left" style="height: 70px; font-size: small; font-family: 'Bahnschrift SemiLight'; color: #000000">
                    <asp:DropDownList ID="ddlDay" runat="server" Width="128px">
                        <asp:ListItem>Monday</asp:ListItem>
                        <asp:ListItem>Tuesday</asp:ListItem>
                        <asp:ListItem>Wednesday</asp:ListItem>
                        <asp:ListItem>Thursday</asp:ListItem>
                        <asp:ListItem>Friday</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-center" style="height: 81px; font-size: small; font-family: 'Bahnschrift SemiLight'; color: #000000; width: 286px;"><strong>Time:</strong></td>
                <td class="text-left" style="height: 81px; font-size: small; font-family: 'Bahnschrift SemiLight'; color: #000000">
                    <asp:DropDownList ID="ddltfrom" runat="server" style="font-size: small" Width="87px" Height="33px">
                        <asp:ListItem>08:00</asp:ListItem>
                        <asp:ListItem>09:00</asp:ListItem>
                        <asp:ListItem>10:00</asp:ListItem>
                        <asp:ListItem>11:00</asp:ListItem>
                        <asp:ListItem>12:00</asp:ListItem>
                        <asp:ListItem>13:00</asp:ListItem>
                        <asp:ListItem>14:00</asp:ListItem>
                        <asp:ListItem>15:00</asp:ListItem>
                        <asp:ListItem>16:00</asp:ListItem>
                        <asp:ListItem>17:00</asp:ListItem>
                        <asp:ListItem>18:00</asp:ListItem>
                        <asp:ListItem>19:00</asp:ListItem>
                        <asp:ListItem>20:00</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="to"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="ddltto" runat="server" style="font-size: small" Width="87px" Height="30px">
                        <asp:ListItem>08:00</asp:ListItem>
                        <asp:ListItem>09:00</asp:ListItem>
                        <asp:ListItem>10:00</asp:ListItem>
                        <asp:ListItem>11:00</asp:ListItem>
                        <asp:ListItem>12:00</asp:ListItem>
                        <asp:ListItem>13:00</asp:ListItem>
                        <asp:ListItem>14:00</asp:ListItem>
                        <asp:ListItem>15:00</asp:ListItem>
                        <asp:ListItem>16:00</asp:ListItem>
                        <asp:ListItem>17:00</asp:ListItem>
                        <asp:ListItem>18:00</asp:ListItem>
                        <asp:ListItem>19:00</asp:ListItem>
                        <asp:ListItem>20:00</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="height: 88px; font-size: small; font-family: 'Bahnschrift SemiLight'; color: #000000; width: 286px;" class="text-center"><strong>Module:</strong></td>
                <td class="text-left" style="height: 88px; font-size: small; font-family: 'Bahnschrift SemiLight'; color: #000000;">
                    <asp:TextBox ID="txtModule" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 80px; font-size: small; font-family: 'Bahnschrift SemiLight'; color: #000000; width: 286px;" class="text-center"><strong>Room:</strong></td>
                <td class="text-left" style="height: 80px; font-size: small; font-family: 'Bahnschrift SemiLight'; color: #000000;">
                    <asp:DropDownList ID="ddlBlock" runat="server" Height="25px" style="font-size: xx-small" Width="99px">
                        <asp:ListItem>Block</asp:ListItem>
                        <asp:ListItem>block A</asp:ListItem>
                        <asp:ListItem>block B</asp:ListItem>
                        <asp:ListItem>block C</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlRoom" runat="server" Height="25px" style="font-size: xx-small" Width="99px">
                        <asp:ListItem>RoomNo</asp:ListItem>
                        <asp:ListItem Value="No.1">1</asp:ListItem>
                        <asp:ListItem Value="No.2">2</asp:ListItem>
                        <asp:ListItem Value="No.3">3</asp:ListItem>
                        <asp:ListItem Value="No.4">4</asp:ListItem>
                        <asp:ListItem Value="No.5">5</asp:ListItem>
                        <asp:ListItem Value="No.6">6</asp:ListItem>
                        <asp:ListItem Value="No.7">7</asp:ListItem>
                        <asp:ListItem Value="No.8">8</asp:ListItem>
                        <asp:ListItem Value="No.9">9</asp:ListItem>
                        <asp:ListItem Value="No.10">10</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-center" style="height: 77px; font-size: small; font-family: 'Bahnschrift SemiLight'; color: #000000; width: 286px;"><strong>Lecturer:</strong></td>
                <td class="text-left" style="height: 77px; font-size: small; font-family: 'Bahnschrift SemiLight'; color: #000000">
                    <asp:DropDownList ID="ddlLecturer" runat="server" DataSourceID="SqlDataSource1" DataTextField="Lec_Name" DataValueField="Lec_Name" Height="24px" style="font-size: small" Width="232px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-center" colspan="2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Lec_Name] FROM [Lecturer]"></asp:SqlDataSource>
                    <asp:Button ID="btnUpdate" runat="server" BackColor="#0066CC" Height="28px" style="color: #FFFFFF; font-size: x-small; font-family: 'Bahnschrift SemiLight'" Text="Update" Width="129px" OnClick="btnUpdate_Click" />
                </td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
