<%@ Page Title="" Language="C#" MasterPageFile="~/LectureDesign.Master" AutoEventWireup="true" CodeBehind="CreateAssessment.aspx.cs" Inherits="ABU.LECTURER.CreateAssessment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:30%">
        <h1 style="color:darkslateblue"><u>CREATE ASSESSMENT</u></h1>
        <asp:Label ID="lblMessage" runat="server" ></asp:Label>
        <br />
        <table>
            <tr>
                <td>
                    Course 
                </td>
                <td>
                    <asp:TextBox ID="txtCourse" runat="server"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td>Year</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>---Select Year---</asp:ListItem>
                        <asp:ListItem>Level1</asp:ListItem>
                        <asp:ListItem>Level2</asp:ListItem>
                        <asp:ListItem>Level3</asp:ListItem>                      
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="yearRequired" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Year is required." ValidationGroup="valGroup1"><font color="red">This field is required.</font></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td>
                    Assessment Name 
                </td>
                <td>
                     <asp:TextBox ID="txtAN" runat="server" Width="318px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="anRequired" runat="server" ControlToValidate="txtAN" ErrorMessage="Assessment Name is required." ValidationGroup="valGroup1"><font color="red">This field is required.</font></asp:RequiredFieldValidator>
                   
                </td>
            </tr>
             <tr>
                <td>
                    Select File 
                </td>
                <td>
                     <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:RequiredFieldValidator ID="fileRequired" runat="server" ControlToValidate="FileUpload1" ErrorMessage="File is required." ValidationGroup="valGroup1"><font color="red">This field is required.</font></asp:RequiredFieldValidator>
                   
            </tr>

            <tr>
                <td>
                    Total Marks 
                </td>
                <td>
                     <asp:TextBox ID="txtMarks" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RangeValidator ID="rvMarks" runat="server" ControlToValidate="txtMarks" ErrorMessage="Marks must be within 1 to 100." MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
              <asp:RequiredFieldValidator ID="marksRequired" runat="server" ControlToValidate="txtMarks" ErrorMessage="Marks is required." ValidationGroup="valGroup1"><font color="red">This field is required.</font></asp:RequiredFieldValidator>                                  
                </td>
                    
            </tr>
            <tr>
                <td>
                    Deadline 
                </td>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
                     <asp:Calendar Width="286px"  ID="calendarDeadline" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="16px" NextPrevFormat="FullMonth">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar> 
        </ContentTemplate>
        </asp:UpdatePanel>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnReset" ValidationGroup="valGroup1" runat="server" Text="Reset" OnClick="btnReset_Click" style="margin-left:25%"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUpload" ValidationGroup="valGroup1"  runat="server" OnClick="btnUpload_Click" Text="Upload" />
         <br />
        
    </div>
</asp:Content>
