<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="EditStudent.aspx.cs" Inherits="ABU.EditStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 style="text-align:center"><strong>Edit User</strong></h1>
   
        <div class="text-center">
            <asp:Panel ID="Panel2" runat="server" Height="957px" style="margin-left: 200px; margin-right: 245px; margin-top: 48px; margin-bottom: 60px;" Width="727px">
                <br />
                <br />
                <table class="nav-justified" style="height: 559px">
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
                        <td class="text-center" colspan="2" style="height: 55px; color: #000000;"><br style="font-size: small; color: #000000;" />
                            <br style="color: #000000" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
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
                        <td class="text-center" style="width: 373px; color: #000000;">&nbsp;</td>
                        <td class="text-center" style="width: 354px">
                        </td>
                    </tr>
                    <tr>
                    <td class="text-center" style="width: 373px; color: #000000;"><span style="font-size: small"><span style="color: #000000"><strong>Course:</strong><br />
                            <br />
                            </span>
                            </span>
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
                    <asp:Button ID="btnUpdate" runat="server" BorderStyle="Outset" ForeColor="Black" OnClick="btnUpdate_Click" style="font-size: small" Text="Update" Width="175px" Height="35px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDelete" runat="server" BorderStyle="Outset" ForeColor="Black" Height="35px" style="font-size: small" Text="Delete" Width="175px" OnClick="btnDelete_Click" />
                <br />
                <br />
                
               
            </asp:Panel>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Stud_ID], [Stud_Name], [Stud_Phone], [Stud_Image], [Stud_Email], [Stud_Course], [Stud_Lvl] FROM [Student]"></asp:SqlDataSource>
    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
</asp:Content>
