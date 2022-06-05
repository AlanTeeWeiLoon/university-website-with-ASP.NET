<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="ABU.CreateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align:center"><strong>New User</strong></h1>
   
        <div class="text-center">
            <asp:Panel ID="Panel2" runat="server" Height="957px" style="margin-left: 200px; margin-right: 245px; margin-top: 48px; margin-bottom: 60px;" Width="727px">
                <br />
                <br />
                <table class="nav-justified" style="height: 559px">
                     <tr>
                        <td class="text-center" colspan="2" style="height: 55px; color: #000000;"><span style="font-size: small; color: #000000"><strong>Role:</strong></span><br style="font-size: small; color: #000000;" />
                            <br style="color: #000000" />
                            <asp:Button ID="btnStudent" runat="server" Height="22px" OnClick="Student_Click" Text="Student" Width="97px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnLecturer" runat="server" Height="22px" OnClick="Lecturer_Click" Text="Lecturer" Width="97px" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center" colspan="2" style="height: 223px">
                            <asp:Image ID="Image1" runat="server" Height="223px" Width="203px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 11px" class="text-center">
                            <asp:FileUpload ID="fuImage" runat="server" style="margin-left: 174px" Width="299px" />
                        </td>
                    </tr>
                   
                    <tr>
                        <td class="text-center" colspan="2" style="height: 48px; color: #000000; background-color: #CCCCCC;"><span style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; color: #000000; font-size: medium"><strong>User ID:&nbsp;&nbsp;&nbsp;&nbsp; </strong></span>
                            &nbsp;<asp:Label ID="UserID" runat="server" style="font-size: small; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; color: #808080;" Text="[UserID]"></asp:Label>
                            </td>
                    </tr>
                    <tr>
                        <td class="text-center" colspan="2" style="height: 30px; color: #000000;"><span style="font-size: small; color: #000000"><strong>
                            <br />
                            Name:</strong></span><span style="color: #000000"><br style="font-size: small" />
                            <br />
                            </span>
                            <asp:TextBox ID="txtName" runat="server" Height="24px" Width="271px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center" style="width: 373px; height: 103px; color: #000000;"><span style="font-size: small"><span style="color: #000000"><strong>Phone:</strong><br /> </span> </span><span style="color: #000000;">
                            <span style="font-size: x-small">
                            <br />
                            </span>
                            </span>
                            <asp:TextBox ID="txtPhone" runat="server" Height="24px" style="font-size: small" Width="236px"></asp:TextBox>
                        </td>
                        <td class="text-center" style="width: 354px; height: 103px;"><span style="font-size: small"><span style="color: #000000"><strong>Email:</strong><br />
                            <br />
                            </span>
                            </span>
                            <asp:TextBox ID="txtEmail" runat="server" Height="24px" style="font-size: x-small" Width="236px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center" style="width: 373px; color: #000000;"><span style="font-size: small"><span style="color: #000000"><strong>Password:</strong><br />
                            <br />
                            </span>
                            </span>
                            <asp:TextBox ID="txtPassword" runat="server" Height="24px" style="font-size: x-small" Width="236px" Placeholder="at least 6 characters, must include Capital"></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="6 characters or more,include Capital" ValidationExpression="(?=.*[A-Z])[A-Za-z\d]{6,}" style="font-size: xx-small; color: #FF3300"></asp:RegularExpressionValidator>
                        </td>
                        <td class="text-center" style="width: 354px"><span style="font-size: small"><span style="color: #000000"><strong>Retype Password:</strong><br />
                            <br />
                            </span>
                            </span>
                            <asp:TextBox ID="txtRetype" runat="server" Height="24px" style="font-size: x-small" Width="236px" Placeholder="please confirm your password"></asp:TextBox>
                            <br />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not same"  Display="Dynamic" ControlToCompare="txtPassword" ControlToValidate="txtRetype" EnableClientScript="False" style="font-size: xx-small; color: #FF3300"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                    <td class="text-center" style="width: 373px; color: #000000;"><span style="font-size: small"><span style="color: #000000"><strong>Course:</strong><br />
                            <br />
                            </span>
                            </span>
                            <asp:DropDownList ID="ddlCourse" runat="server" Height="24px" style="font-size: x-small" Width="236px">
                                 <asp:ListItem>-select-</asp:ListItem>
                                <asp:ListItem>Information Technology</asp:ListItem>
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
                    </table>
                
                        
                    <asp:Panel ID="Panel3" runat="server" style="margin-top: 19px" Height="91px">
                    <table>
                    <tr>
                        <td class="text-center" style="width: 721px; height: 70px;"><span style="font-size: small"><span style="color: #000000"><strong>Level:</strong><br />
                            <br />
                            <asp:DropDownList ID="ddlLvl" runat="server" Height="22px" style="font-size: x-small; margin-left: 30;" Width="249px">
                                <asp:ListItem>-select-</asp:ListItem>
                                <asp:ListItem>Level1</asp:ListItem>
                                <asp:ListItem>Level2</asp:ListItem>
                                <asp:ListItem>Level3</asp:ListItem>
                            </asp:DropDownList>
                            </span>
                            </span>
                        </td>
                    </tr>
                </table>
                    
                </asp:Panel>
                
                <br />
                    <br />
                    <asp:Button ID="btnRegisterLecturer" runat="server" BorderStyle="Outset" ForeColor="Black" OnClick="btnRegisterLecturer_Click" style="font-size: small" Text="Register Lecturer" Width="175px" />
                <br />
                <br />
                
               
                <asp:Button ID="btnRegisterStudent" runat="server" BorderStyle="Outset" ForeColor="Black" style="font-size: small" Text="Register Student" Width="175px" OnClick="btnRegisterStudent_Click" />
                
               
            </asp:Panel>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Lec_Id], [Lec_Name], [Lec_Password], [Lec_Phone], [Lec_Email], [Lec_Image] FROM [Lecturer]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Stud_ID], [Stud_Name], [Stud_Password], [Stud_Phone], [Stud_Email], [Stud_Image], [Stud_Lvl], [Stud_Course] FROM [Student]"></asp:SqlDataSource>
    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
</asp:Content>
