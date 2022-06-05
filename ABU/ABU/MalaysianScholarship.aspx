<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="MalaysianScholarship.aspx.cs" Inherits="ABU.MalaysianScholarship" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center" style="font-size: small">
        <strong style="box-sizing: border-box !important; font-weight: bold; color: rgb(237, 27, 36); font-family: Roboto-Regular; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(243, 255, 188);  text-decoration-style: initial; text-decoration-color: initial;">Please fill the<span>&nbsp;</span></strong><span style="box-sizing: border-box !important; color: rgb(237, 27, 36); font-family: Roboto-Regular; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(243, 255, 188);  text-decoration-style: initial; text-decoration-color: initial;"><strong style="box-sizing: border-box !important; font-weight: bold;">ABU 
        Malaysian Scholarships &amp; Merit Awards</strong></span><strong style="box-sizing: border-box !important; font-weight: bold; color: rgb(237, 27, 36); font-family: Roboto-Regular; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(243, 255, 188);  text-decoration-style: initial; text-decoration-color: initial;">&nbsp;Form online and submit to us.</strong></h2>
    <h2 class="text-left" style="font-size: small">
        <strong>
        <br />
        <br />
        <span style="font-size: medium">ABU MALAYSIAN SCHOLARSHIPS & MERIT AWARDS 2020 APPLICATION FORM</span></strong></h2>
    <br />
    <br />
    <br />
    <p>
    Please note that this form will only assist in sending you further relevant details.
            You will still be required to send us complete documents for your application such as your recent academic transcripts and results. We will contact you for the complete information about the course you are interested in, 
            entry level, your current qualifications and contact numbers.</p>
    <p style="color: #FF0000">
        By filling this form, you will be taken to have consented to us for processing your personal information in accordance with the Notice.</p>
    <table class="nav-justified">
        <tr>
            <td class="text-justify" style="width: 574px; font-size: small;"><span style="color: #FF0000">*</span>Name:<br />
                <asp:TextBox ID="txtName" runat="server" Width="431px" required="required" Height="24px" style="font-size: small"></asp:TextBox>
                
            </td>
            <td class="text-justify"><span style="color: #FF0000; font-size: small;">*</span><span style="font-size: small">Gender:<br />
                </span>
                <asp:DropDownList ID="ddlGender" runat="server" Height="24px" Width="436px" style="font-size: small">
                    <asp:ListItem>- Select -</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr style="font-size: small">
            <td class="text-justify" style="width: 574px">&nbsp;</td>
            <td class="text-justify">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-justify" style="height: 52px; width: 574px; font-size: small;"><span style="color: #FF0000">*</span>Email:<br />
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="433px" required="required" Height="24px" style="font-size: small"></asp:TextBox>
            </td>
            <td class="text-justify" style="height: 52px; font-size: small;">&nbsp;</td>
           
        </tr>
        <tr style="font-size: small">
            <td class="text-justify" style="width: 574px"><br />
            </td>
            <td class="text-justify">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-justify" style="width: 574px"><span style="font-size: small">Contact No.(Home)<br />
                </span>
                <asp:TextBox ID="txtHPhone" runat="server" Width="433px" Height="24px" style="font-size: small"></asp:TextBox>

            </td>
            <td class="text-justify"><span style="color: #FF0000; font-size: small;">*</span><span style="font-size: small">Contact No.(Phone)<br />
                </span>
                <asp:TextBox ID="txtPhone" runat="server" Width="433px" required="required" Height="24px" style="font-size: small"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="text-justify" style="width: 574px; height: 25px">
            </td>
            <td class="text-justify" style="height: 25px">
            </td>
        </tr>
        <tr>
            <td class="text-justify"><span style="color: #FF0000; font-size: small;">*</span><span style="font-size: small">NRIC No.<br />
                </span>
                <asp:TextBox ID="txtIC" runat="server" Width="433px" required="required" Height="24px" style="font-size: small"></asp:TextBox>
            </td>
            <td class="text-justify" style="width: 574px; font-size: small;"><span style="color: #FF0000">*</span>Date of Birth:<br />
                <asp:TextBox ID="txtBirth" runat="server" Width="433px" Height="24px" style="font-size: small"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img1/calendar.png" Height="25px" Width="25px" ImageAlign="AbsBottom" OnClick="ImageButton1_Click"/>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender">
                    </asp:Calendar>
            </td>
        </tr>
        <tr style="font-size: small">
            <td class="text-justify" style="width: 574px"><br />
            </td>
            <td class="text-justify">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-justify" style="width: 574px; height: 50px; font-size: small;"><span style="color: #FF0000">*</span>Course Interested:<br />
                <asp:DropDownList ID="ddlCourse" runat="server" Height="24px" Width="436px" style="font-size: small">
                    <asp:ListItem>- Select -</asp:ListItem>
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
            <td class="text-justify" style="height: 50px"><span style="color: #FF0000; font-size: small;">*</span><span style="font-size: small">Current Qualification:<br />
                </span>
                <asp:DropDownList ID="ddlQualify" runat="server" Height="24px" Width="436px" style="font-size: small">
                    <asp:ListItem>- Select -</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>SPM</asp:ListItem>
                    <asp:ListItem>O-level</asp:ListItem>
                    <asp:ListItem>UEC</asp:ListItem>
                    <asp:ListItem>A-level</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr style="font-size: small">
            <td class="text-justify" style="width: 574px"><br />
            </td>
            <td class="text-justify">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-justify" style="width: 574px; font-size: small;"><span style="color: #FF0000">*</span>Educational Document:<br />
                <asp:FileUpload ID="fuEducation" runat="server" Height="24px" />
            </td>
            <td class="text-justify">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-justify" style="width: 574px">&nbsp;</td>
            <td class="text-justify">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-justify" style="width: 574px">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="169px" BackColor="#3366CC" ForeColor="White" Font-Size="Small" Height="51px" OnClick="btnSubmit_Click" />
            </td>
            <td class="text-justify">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-justify" style="width: 574px">
                &nbsp;</td>
            <td class="text-justify">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-justify" style="width: 574px">
                &nbsp;</td>
            <td class="text-justify">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
