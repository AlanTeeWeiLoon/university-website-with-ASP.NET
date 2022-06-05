<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="ABU.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <aside id="fh5co-hero">
		<div class="flexslider">
			<ul class="slides">
		   	<li style="background-image: url(img1/contactus.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 text-center slider-text">
			   				<div class="slider-text-inner">
			   					<h1 class="heading-section">Feedback</h1>
								   <h2>We will very appreciate if you drop down your feedback and we will keep making improve on it!</h2>
									
			   				</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>
		  	</ul>
	  	</div>
	</aside>

	<div id="fh5co-contact">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-md-push-1 animate-box">
					
					<div class="fh5co-contact-info">
						<h3>Contact Information</h3>
						<ul>
							<li class="address" style="left: 0px; top: 0px; font-size: small">Jalan Teknologi 5, Technology Park Malaysia, <br>  Bukit Jalil, Kuala Lumpur 57000, Malaysia.</li>
							<li class="phone" style="font-size: small"><a href="tel://03-2345678">+ 1235 2355 98</a></li>
							<li class="email" style="font-size: small"><a href="caemas@gmail.com">info@yahoo.com</a></li>
	
						</ul>
					</div>

				</div>
				<div class="col-md-6 animate-box">
					<h3>Get In Touch</h3>

						<div class="row form-group">
							<div class="col-md-6">
								<!-- <label for="fname">First Name</label> -->
                                <asp:TextBox ID="txtName" runat="server" placeholder="Enter your Name" BorderStyle="Inset" BorderWidth="2px" Height="50px" Width="541px" BorderColor="#CCCCCC"></asp:TextBox>
							</div>
							<div class="col-md-6">
								<!-- <label for="lname">Last Name</label> -->
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="email">Email</label> -->
								<asp:TextBox ID="txtEmail" runat="server" required="" placeholder="Enter your email address" BorderStyle="Inset" BorderWidth="2px" Height="50" Width="544" BorderColor="#CCCCCC"></asp:TextBox>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="subject">Subject</label> -->
								<asp:TextBox ID="txtPurpose" runat="server" required="" placeholder="What to ask in this message?" BorderStyle="Inset" BorderWidth="2px" Height="50" Width="544" BorderColor="#CCCCCC"></asp:TextBox>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="message">Message</label> -->
								<asp:TextBox ID="txtAddOn" runat="server" placeholder="Say something to us" BorderStyle="Inset" BorderWidth="2px" Height="200" Width="544" BorderColor="#CCCCCC"></asp:TextBox>
							</div>
						</div>
						<div class="form-group">
							&nbsp;<asp:Button ID="btnSend" runat="server" BackColor="#0033CC" ForeColor="White" Height="32px" OnClick="btnSend_Click" style="font-size: small; font-family: 'Times New Roman', Times, serif" Text="Send Message" Width="204px" />
						</div>

	
				</div>
			</div>
			
		</div>
	</div>

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
