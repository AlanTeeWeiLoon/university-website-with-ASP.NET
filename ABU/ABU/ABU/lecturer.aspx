<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="lecturer.aspx.cs" Inherits="ABU.lecturer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="fh5co-loader"></div>
	
	
	
	<aside id="fh5co-hero">
		<div class="flexslider">
			<ul class="slides">
		   	<li style="background-image: url(img1/lecturer.jpeg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 text-center slider-text">
			   				<div class="slider-text-inner">
			   					<h1 class="heading-section">Our Lecturer</h1>
									<h2>The lecturers in our university are very professional</h2>
			   				</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>
		  	</ul>
	  	</div>
	</aside>
	

	<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading" style="left: 0px; top: 37px">
					<h1>Lecturers</h1>
					<p>All of our University's Lecturer are showing here.</p>
				</div>
			</div>
	<br />
	<br />
	<table>
	</table>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Lec_Id" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
				<table style="margin-left:30px;">
					<tr>
						<td>
                            <a href='<%# Eval("Resume") %>'><asp:Image ID="Image1" runat="server" Height="350px" Width="326px" ImageUrl='<%# Eval("Lec_Image") %>' style="margin-left: 0px" /></a>
						</td>
					</tr>
					<tr>
						<td style="height: 52px" class="text-center">
                            <strong>
                            <asp:Label ID="Label1" runat="server" Font-Size="Small" style="color: #000000; font-size: medium;" Text='<%# Eval("Lec_Name") %>'></asp:Label>
                            </strong>
						</td>
					</tr>
					<tr>
						<td style="height: 12px" class="text-center">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Lec_Email") %>'></asp:Label>
						</td>
					</tr>
					<tr>
						<td style="height: 53px" class="text-center">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Description") %>' Font-Size="X-Small" style="color: #000000"></asp:Label>
						</td>
					</tr>
				</table>
				<br />
				<br />
            </ItemTemplate>
        </asp:DataList>
	
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Lec_Id], [Lec_Name], [Lec_Phone], [Lec_Email], [Lec_Image], [Description], [Resume] FROM [Lecturer]"></asp:SqlDataSource>

	<br />
	<br />

	<div id="fh5co-register" style="background-image: url(img1/bg1.jpg);">
		<div class="overlay"></div>
		<div class="row">
			<div class="col-md-8 col-md-offset-2 animate-box">
				<div class="date-counter text-center">
					<h2>Register for our course now!</h2>
					<h3>By ABU</h3>
					<div class="simply-countdown simply-countdown-one"></div>
					<p><strong>Limited Offer, Hurry Up!</strong></p>
					<p><a href="applyRegister.aspx" class="btn btn-primary btn-lg btn-reg">Register Now!</a></p>
				</div>
			</div>
		</div>
	</div>
	<a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
</asp:Content>
