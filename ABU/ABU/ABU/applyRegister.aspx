<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="applyRegister.aspx.cs" Inherits="ABU.applyRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align:center"><strong>Register for Course</strong></h1>
    <asp:Panel ID="Panel1" runat="server" Height="515px" style="margin-top: 42px; background-image: url(img1/ABU3.jpg);">
        <asp:Panel ID="Panel2" runat="server" Height="546px" style="margin-left: 255px; margin-right: 291px; margin-top: 48px" Width="727px">
            <br />
            <br />
            <table class="nav-justified" style="width: 99%; height: 422px;">
                <tr>
                    <td style="height: 9px; width: 388px"><p style="color:white; height: 3px; font-size: small; font-family: 'Bell MT';">&nbsp;<span style="color: #FF5050; font-size: xx-small;">*</span>Name:</p></td>
                    <td style="height: 9px; width: 388px"> </td>
                </tr>
                <tr>
                    <td style="width: 388px; height: 63px;">
                        <asp:TextBox ID="txtName" runat="server" BackColor="White" BorderColor="Silver" BorderStyle="Inset" Width="199px" Height="25px"></asp:TextBox>
                    </td>
                    <td style="width: 388px; height: 63px;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 388px; "><p style="color:white; height: -10px; font-size: small; font-family: 'Bell MT';">Birthday:</p> </td>
                    <td style="width: 388px; "><p style="color:white; font-family: 'Bell MT'; font-size: small;">Gender:</p> </td>
                </tr>
                <tr>
                    <td style="width: 388px;height:66px">
                        <asp:TextBox ID="Calendar" runat="server" BackColor="White" BorderColor="Silver" BorderStyle="Inset" Width="199px" Height="25px"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img1/calendar.png" Height="25px" Width="25px" ImageAlign="AbsBottom" OnClick="ImageButton1_Click"/>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender">
                        </asp:Calendar>
                    </td>
                    <td style="width: 388px; height:66px;">
                        <asp:DropDownList ID="ddlGender" runat="server" Height="25px" Width="169px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 388px"><p style="color:white; height: 18px; font-family: 'Bell MT'; font-size: small;"><span style="color: #FF5050; font-size: xx-small;">*</span>Email:</p></td>
                    <td style="width: 388px"><p style="color:white; font-family: 'Bell MT'; font-size: small;"><span style="color: #FF5050; font-size: xx-small;">*</span>Phone:</p> </td>
                </tr>
                <tr>
                    <td style="width: 388px; height: 51px;">
                        <asp:TextBox ID="txtEmail" runat="server" BackColor="White" BorderColor="Silver" BorderStyle="Inset" Width="199px" TextMode="Email" Height="25px"></asp:TextBox>
                    </td>
                    <td style="width: 388px; height: 51px;">
                        <asp:TextBox ID="txtPhone" runat="server" BackColor="White" BorderColor="Silver" BorderStyle="Inset" Width="199px" TextMode="Phone" Height="25px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><p style="color:white; font-family: 'Bell MT'; font-size: small;"><span style="color: #FF5050; font-size: xx-small;">*</span>Select Course:</p> </td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 37px">
                        <asp:DropDownList ID="ddlCourse" runat="server" Height="25px" Width="531px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Information Techonology</asp:ListItem>
                            <asp:ListItem>Computer Science</asp:ListItem>
                            <asp:ListItem>Business</asp:ListItem>
                            <asp:ListItem>Management</asp:ListItem>
                            <asp:ListItem>Accounting</asp:ListItem>
                            <asp:ListItem>Finance</asp:ListItem>
                            <asp:ListItem>Design</asp:ListItem>
                            <asp:ListItem>Animation</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><p style="color:white; font-family: 'Bell MT'; font-size: small;"><span style="color: #FF5050; font-size: xx-small;">*</span>Insert your Transcript(*.pdf):</p></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 25px">
                        <asp:FileUpload ID="fuResult" runat="server" Width="530px" Height="25px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 25px">
                       
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2" style="height: 25px;color:black;text-align:center";>
                        <asp:Button ID="btnRegister" runat="server" Text="Register" Font-Bold="True" BorderStyle="Inset" Width="150px" Height="50px" BackColor="#CCCCCC" OnClick="btnRegister_Click" />
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ApplicantId], [AName], [ABirth], [AGender], [APhone], [AEmail], [ACourse], [Transcript] FROM [Applicant]"></asp:SqlDataSource>
        </asp:Panel>
    </asp:Panel>
    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
</asp:Content>
