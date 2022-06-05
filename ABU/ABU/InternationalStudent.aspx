<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="InternationalStudent.aspx.cs" Inherits="ABU.InternationalStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <aside id="fh5co-hero">
		<div class="flexslider">
			<ul class="slides">
		   	<li style="background-image: url(img1/international.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 text-center slider-text">
			   				<div class="slider-text-inner">
			   					<h1 class="heading-section">International Student</h1>
									<h2>Welcome to ABU</h2>
			   				</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>
		  	</ul>
	  	</div>
	</aside>

	<br />
	<br />
	<h1 style="text-align :center ">International Student</h1>
    <br />
	<p class="text-center" style="width: 1008px; margin-left:auto;margin-right:auto; font-size: small;">ABU Scholarships & Merit Awards for international students are available to new international students. The application criteria includes academic success, financial need, community involvement, sports excellence, references from instructors or employers.</p>
    <p class="text-center" style="width: 831px; margin-left:auto;margin-right:auto"></p>


	<asp:Panel ID="Panel1" runat="server" Height="300px" BackImageUrl="~/img1/international2.jpg">
    </asp:Panel>

	<br />
	<br />
	<p>The Merit Awards are fee Awards leading to rebates/discounts as follows:</p>
	<h2>Scholarships & Merit Awards</h2>
    
        <table style="box-sizing: border-box !important; border-collapse: collapse; border-spacing: 0px; background-color: rgb(255, 255, 255); font-family: Roboto-Regular; font-size: 16px; width: 1146px; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            <tbody style="box-sizing: border-box !important;">
                <tr style="box-sizing: border-box !important; font-size: 14px; font-family: Roboto-Regular;">
                    <th style="box-sizing: border-box !important; padding: 15px; text-align: left; border-bottom: 1px solid rgb(204, 204, 204); border-top: 1px solid rgb(204, 204, 204);">Countries Applicable</th>
                    <th style="box-sizing: border-box !important; padding: 15px; text-align: left; border-bottom: 1px solid rgb(204, 204, 204); border-top: 1px solid rgb(204, 204, 204);">Qualifications&nbsp;</th>
                    <th style="box-sizing: border-box !important; padding: 15px; text-align: left; border-bottom: 1px solid rgb(204, 204, 204); border-top: 1px solid rgb(204, 204, 204); width: 390px;">Minimum Score in<span>&nbsp;</span><span style="box-sizing: border-box !important; color: rgb(255, 0, 0);">2020/2021</span>&nbsp;Final Result</th>
                    <th style="box-sizing: border-box !important; padding: 15px; text-align: left; border-bottom: 1px solid rgb(204, 204, 204); border-top: 1px solid rgb(204, 204, 204);">ABU Merit Awards</th>
                </tr>
                <tr style="box-sizing: border-box !important; font-size: 14px; font-family: Roboto-Regular;">
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250);">&nbsp;All Countries</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250);">&nbsp;A-Levels</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250); width: 390px;">AAA</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250);">30% Discount</td>
                </tr>
                <tr style="box-sizing: border-box !important; font-size: 14px; font-family: Roboto-Regular;">
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left;">&nbsp;</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left;">&nbsp;A-Levels</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; width: 390px;">AAB&nbsp;</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left;">20% Discount</td>
                </tr>
                <tr style="box-sizing: border-box !important; font-size: 14px; font-family: Roboto-Regular;">
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250);">&nbsp;</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250);">&nbsp;A-Levels</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250); width: 390px;">ABB/AAC</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250);">10% Discount</td>
                </tr>
                <tr style="box-sizing: border-box !important; font-size: 14px; font-family: Roboto-Regular;">
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250);">All Countries</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250);">International Baccalaureate</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250); width: 390px;">37 Points</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250);">30%&nbsp;Discount</td>
                </tr>
                <tr style="box-sizing: border-box !important; font-size: 14px; font-family: Roboto-Regular;">
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250);">&nbsp;</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250);">International Baccalaureate</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250); width: 390px;">31&nbsp;- 36 Points</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250);">20%&nbsp;Discount</td>
                </tr>
                <tr style="box-sizing: border-box !important; font-size: 14px; font-family: Roboto-Regular;">
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250);">&nbsp;</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250);">International Baccalaureate</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250); width: 390px;">26 -&nbsp;30 Points</td>
                    <td style="box-sizing: border-box !important; padding: 15px; text-align: left; background: rgb(250, 250, 250);">10% Discount</td>
                </tr>
            </tbody>
        </table>
   <br />
	
        <h2 >Required Documents</h2>
    
    <div id="collapseTwo" aria-expanded="true" class="panel-collapse collapse in" style="box-sizing: border-box !important; display: block; color: rgb(51, 51, 51); font-family: quot;font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
        <div class="panel-body" style="box-sizing: border-box !important; padding: 15px; border-top: 1px solid rgb(221, 221, 221);">
            <div style="box-sizing: border-box !important; overflow-x: auto;">
                <p style="box-sizing: border-box !important; margin: 0px 0px 20px; font-size: 16px; font-family: Roboto-Regular; color: rgb(77, 77, 77); text-align: left;">
                    The following documents should be submitted for the Scholarship Application:</p>
                <ul style="box-sizing: border-box !important; margin-top: 0px; margin-bottom: 10px; text-align: left;">
                    <li style="box-sizing: border-box !important; font-size: 16px; font-family: Roboto-Regular; color: rgb(77, 77, 77); padding: 10px;">Application Form</li>
                    <li style="box-sizing: border-box !important; font-size: 16px; font-family: Roboto-Regular; color: rgb(77, 77, 77); padding: 10px;">Passport Copy</li>
                    <li style="box-sizing: border-box !important; font-size: 16px; font-family: Roboto-Regular; color: rgb(77, 77, 77); padding: 10px;">4 Passport Size Photographs</li>
                    <li style="box-sizing: border-box !important; font-size: 16px; font-family: Roboto-Regular; color: rgb(77, 77, 77); padding: 10px;">Academic Results &amp; Transcripts</li>
                    <li style="box-sizing: border-box !important; font-size: 16px; font-family: Roboto-Regular; color: rgb(77, 77, 77); padding: 10px;">Testimonials and Certificates of Achievements (Sports, Academic, Co-Curricular etc) would be an added advantage</li>
                </ul>
                <p style="box-sizing: border-box !important; margin: 0px; font-size: 16px; font-family: Roboto-Regular; color: rgb(237, 27, 36); text-align: left;">
                    Applications will not be considered if the required information and/or documents are incomplete or not submitted.</p>
            </div>
        </div>
    </div>
	<p></p>
    
        <h2>Conditions of the Awards</h2>

    <div id="collapseThree" aria-expanded="true" class="panel-collapse collapse in" style="box-sizing: border-box !important; display: block; color: rgb(51, 51, 51); font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial;">
        <div class="panel-body" style="box-sizing: border-box !important; padding: 15px; border-top: 1px solid rgb(221, 221, 221);">
            <div style="box-sizing: border-box !important; overflow-x: auto;">
                <p style="box-sizing: border-box !important; margin: 0px 0px 20px; font-size: 16px; font-family: Roboto-Regular; color: rgb(77, 77, 77); text-align: justify;">
                    1. All Awards leading to fees rebate/discount are on first come first serve basis and you may secure by paying Enrolment Fees.<br style="box-sizing: border-box !important;" />
                    <br style="box-sizing: border-box !important;" />
                    2. All applicants must meet the minimum entry requirements &amp; maintain the CGPA of 3.0 in order to enjoy the Fee Awards in the subsequent years (where relevant). Failure to meet such academic requirement will result in the award terminated/ suspended.<br style="box-sizing: border-box !important;" />
                    <br style="box-sizing: border-box !important;" />
                    3. All Awards offered by ABU to any student are at the absolute discretion of Scholarships &amp; Merit Awards Committee.<br style="box-sizing: border-box !important;" />
                    <br style="box-sizing: border-box !important;" />
                    4. Awards are limited to course/tuition fees only. All other fees &amp; expenses including Registration Fees, Accommodation Fees, Deposits, Partners University Fees, Student ID, Resit or Retake fees, Living and Travel expenses; as determined by the Award shall be borne by the Award holder.<br style="box-sizing: border-box !important;" />
                    <br style="box-sizing: border-box !important;" />
                   <br style="box-sizing: border-box !important;" />
                    5. Meet all requirements pertaining to completion of assignments, projects and examinations as required by the course of study.<br style="box-sizing: border-box !important;" />
                    <br style="box-sizing: border-box !important;" />
                    6. All Awards are applicable for studies at ABU in Malaysia only and are not applicable for study at overseas partner universities.</p>
            </div>
        </div>
    </div>
    
    <h2>Scholarship Application</h2>
    <div id="collapseFour" aria-expanded="true" class="panel-collapse collapse in" style="box-sizing: border-box !important; display: block; color: rgb(51, 51, 51); font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial;">
        <div class="panel-body" style="box-sizing: border-box !important; padding: 15px; border-top: 1px solid rgb(221, 221, 221);">
            <div style="box-sizing: border-box !important; overflow-x: auto;">
                <p style="box-sizing: border-box !important; margin: 0px 0px 20px; font-size: 16px; font-family: Roboto-Regular; color: rgb(77, 77, 77); text-align: left;">
                    To apply for scholarships, please fill this application form and submit online:</p>
                <p style="box-sizing: border-box !important; margin: 0px 0px 20px; font-size: 16px; font-family: Roboto-Regular; color: rgb(77, 77, 77); text-align: left;">
                    <asp:Button ID="InternationalScholarship" runat="server" Height="45px" OnClick="InternationalScholarship_Click" Text="Application Form" Width="663px" />
                </p>
                
                <p style="box-sizing: border-box !important; margin: 0px 0px 20px; font-size: 16px; font-family: Roboto-Regular; color: rgb(77, 77, 77); text-align: left;">

                   
                    

                    
                    <br /><br />
                    <span style="color: rgb(255, 51, 0)">*The deadline for this Scholarship applications is 30th January 2022. We must receive the full set of documents for scholarship application on or before this date.</span></p>
                 
            </div>
        </div>
    </div>
    <p></p>



	<div id="fh5co-course-categories">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Course categories</h2>
					<p>Our University has a total of 4 major courses.</p>
				</div>
			</div>
			<div class="row" style="margin-left:170px">
				<div class="col-md-3 col-sm-6 text-center animate-box">
					<div class="services">
						<a href="businessmanagement.aspx">
						<span class="icon">
							<img src="img1/manage.png" width="40" style="margin-top:30px"/>
						</span> </a>
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

	<a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
</asp:Content>
