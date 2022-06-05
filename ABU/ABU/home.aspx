<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ABU.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	

    <div id="sliderFrame" style="width: 950px; margin-left: 81px; height: 445px; margin-top: 25px;">
        <div id="slider" style="width: 940px; height: 420px; margin-left: 81px; margin-top: 25px; left: -29px; top: -1px;">
			<asp:Repeater runat="server" ID="rpt">
				<ItemTemplate>
					<a href='<%# Eval("Link") %>'><asp:Image runat="server" ID="img" ImageUrl='<%# Eval("Image") %>' /></a>
				</ItemTemplate>
			</asp:Repeater>


            
        </div>
        <div id="htmlcaption" style="display: none;">
            <em>HTML</em> caption. Link to <a href="http://www.google.com/">Google</a>.
        </div>
        <br />
        <br />
        <br />
        <br />
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [Image], [Link] FROM [Template] where [Category] = 'Slide'"></asp:SqlDataSource>

	<br />
	<br />
	<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading" style="left: 0px; top: 37px">
					<h1>Competition & Event</h1>
					<p>Every upcoming event and competiton will be show in here.</p>
				</div>
			</div>
	

	<table>
	</table>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" Height="173px" Width="84px" RepeatColumns="3" RepeatDirection="Horizontal">
        <ItemTemplate>
		<table style="margin-left:50px;">
			   <tr>
				   <td>
                       <asp:Image ID="Image1" runat="server" Height="320px" Width="287px" ImageUrl='<%# Eval("Image") %>' />
				   </td>
			   </tr>
			   <tr>
				   <td style="height: 51px;background-color:#00000008">
                       &nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>' Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Small"></asp:Label>
				     
				   </td>
			   </tr>
			   <tr>
				   <td style="height: 39px;background-color:#00000008;">
                       &nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label2" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
				       
				   </td>
			   </tr>
			   <tr>
				   <td style="height: 42px;background-color:#00000008;">
                       &nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label3" runat="server" Text='<%# Eval("Description") %>' Font-Names="Arial Narrow" Font-Size="X-Small"></asp:Label>
				   </td>
			   </tr>
           </table>
			
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [Image], [Category], [Description], [Date] FROM [Template] where [Category] = 'Event'"></asp:SqlDataSource>
	<br />
	<br />
	<br />


	<div id="fh5co-counter" class="fh5co-counters" style="background-image: url(img1/back.jpg);" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="row">
						<div class="col-md-3 col-sm-6 text-center animate-box">
							<span class="icon"><i class="icon-world"></i></span>
							<span class="fh5co-counter js-counter" data-from="0" data-to="1927" data-speed="2000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">Opened In</span>
						</div>
						<div class="col-md-3 col-sm-6 text-center animate-box">
							<span class="icon"><i class="icon-study"></i></span>
							<span class="fh5co-counter js-counter" data-from="0" data-to="12700" data-speed="2000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">Student</span>
						</div>
						<div class="col-md-3 col-sm-6 text-center animate-box">
							<span class="icon"><i class="icon-bulb"></i></span>
							<span class="fh5co-counter js-counter" data-from="0" data-to="35" data-speed="2000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">Courses</span>
						</div>
						<div class="col-md-3 col-sm-6 text-center animate-box">
							<span class="icon"><i class="icon-head"></i></span>
							<span class="fh5co-counter js-counter" data-from="0" data-to="108" data-speed="2000" data-refresh-interval="50"></span>
							<span class="fh5co-counter-label">Certified Lecturers</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-course-categories">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Course categories</h2>
					<p>Our University has a total of 4 major courses.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<span class="icon">
							<a href="itcomputer.aspx">
							<img src="img1/IT.png" width="40" style="margin-top:30px"/></a>
						</span>
						<div class="desc">
							<h3><a href="itcomputer.aspx">Computing & IT</a></h3>
							<p>ABU's computing and technology program has a strong influence in the industry and is an obvious choice for school leavers. ABU provides a variety of professional programs which are very industry driven and related</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<a href="businessmanagement.aspx">
						<span class="icon">
							<img src="img1/manage.png" width="40" style="margin-top:30px"/>
						</span></a>
						<div class="desc">
							<h3><a href="businessmanagement.aspx">Business $ Management</a></h3>
							<p>In the era of global transformation, the requirement to provide leadership and insight to business leaders has become imperative. At ABU's School of Business Administration, we continue to provide high-quality international courses.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
					<a href="accountingfinance.aspx">
						<span class="icon">		
							<i class="icon-banknote"></i>
						</span>
						</a>
						<div class="desc">
							<h3><a href="accountingfinance.aspx">Accounting & Finance</a></h3>
							<p>ABU's accounting and finance are an excellent springboard for individuals wishing to embark on a career. This course series covers in-depth knowledge of core areas and provides students with skills that are essential for the future.</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<span class="icon">
							<a href="designanimation.aspx"><img src="img1/web-design.png" width="40" style="margin-top:30px"/></a>
						</span>
						<div class="desc">
							<h3><a href="designanimation.aspx">Design & Animation</a></h3>
							<p>ABU's design and animation degree can meet the needs of creative people like you! Please be prepared to embark on a journey that is highly relevant to the industry to enhance your practical knowledge in various fields of media and design.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	



	

	   <!-- Scroll to up, icon problem  -->
	   <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>


	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>





</asp:Content>
