<%@ Page Title="" Language="C#" MasterPageFile="~/LayoutLibrarian.Master" AutoEventWireup="true" CodeFile="HomeLibrarian.aspx.cs" Inherits="ABU.HomeLibrarian" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="banner" id="top">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1" style="margin-bottom:300px">
                    <div class="banner-caption">
                        <div class="line-dec"></div>
                        <h2>Library Management System</h2>
                        <span>All Best University, Malaysia.</span>
                    </div>
                    <p></p>
                    <asp:Panel ID="Panel1" runat="server" Height="85px">
                        <table class="nav-justified" style="height: 64px; width: 87%; margin-left: 78px">
                            <tr>
                                <td style="width: 361px">
                                    <asp:TextBox ID="txtID" runat="server" Height="65px" Width="349px" Placeholder="      Enter ID"></asp:TextBox>
                                </td>
                                <td class="datepicker-inline" style="width: 402px">
                                    <asp:DropDownList ID="ddlCategory" runat="server" Height="65px" Width="275px">
                                        <asp:ListItem>Student</asp:ListItem>
                                        <asp:ListItem>Lecturer</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:Button ID="btnSearch" runat="server" BorderStyle="Inset" Height="65px" Text="Search" Width="200px" BackColor="#0099FF" BorderWidth="2px" ForeColor="White" Font-Bold="true" OnClick="btnSearch_Click"/>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Panel ID="Panel2" runat="server">
        <table class ="w-100" style="margin-left:auto;margin-right:auto;margin-top:10px;margin-bottom:25px;background-color: #FFFFCC"">
            <tr style="font-weight: bold;">
                <td style="width: 100px">ID No.</td>
                <td style="width: 250px">Name</td>
                <td style="width: 150px">Borrow</td>
                <td style="width: 150px">Return</td>
            </tr>
            <%=fetchBorrow()%>
        </table>
    </asp:Panel>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
