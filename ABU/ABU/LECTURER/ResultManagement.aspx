<%@ Page Title="" Language="C#" MasterPageFile="~/LectureDesign.Master" AutoEventWireup="true" CodeBehind="ResultManagement.aspx.cs" Inherits="ABU.LECTURER.ResultManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="margin-left:30%">
         <h1 style="color:darkslateblue">Result Management</h1>
          <table>           
            <tr>
                <td>Select Year :</td>
                <td><asp:DropDownList ID="ddlYear" runat="server">
                    <asp:ListItem>---Select Year---</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                    </td>
            </tr>
        </table>
           <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search"  />
        
         <br />
         <br />
         <br />
          <a href="MarkAssessment.aspx.cs">MarkAssessment.aspx.cs</a><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:TemplateField>
                       <HeaderTemplate></HeaderTemplate>
                       <ItemTemplate><%#Container.DataItemIndex + 1 %></ItemTemplate>
                  </asp:TemplateField>
                  <asp:CommandField ShowSelectButton="True" />
                  <asp:BoundField DataField="AssessmentName" HeaderText="AssessmentName" SortExpression="AssessmentName" />
                  <asp:BoundField DataField="Total_Marks" HeaderText="Total_Marks" SortExpression="Total_Marks" />
                  <asp:BoundField DataField="Deadline" HeaderText="Deadline" SortExpression="Deadline" />
              </Columns>
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#E9E7E2" />
              <SortedAscendingHeaderStyle BackColor="#506C8C" />
              <SortedDescendingCellStyle BackColor="#FFFDF8" />
              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [AssessmentName], [Total_Marks], [Deadline] FROM [Assessment]"></asp:SqlDataSource>
         <br />
         
     </div>
       
</asp:Content>
