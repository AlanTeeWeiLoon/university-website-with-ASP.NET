<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeFile="StudentHome.aspx.cs" Inherits="ABU.StudentHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
       <div class="home-sec" id="home" >
           <div class="overlay">
                <div class="container">
                    <div class="row text-center " >         
                        <div class="col-lg-12  col-md-12 col-sm-12">
                            <div class="flexslider set-flexi" id="main-section" >
                                   <ul class="slides move-me">
                                    <!-- Slider 01 -->
                                    <li>
                                    <h3>All Best University</h3>
                                    <h1>Web Applications</h1>
                                         
                                        <asp:Button ID="btnProfile" runat="server" Text="Profile" ForeColor="White" BackColor="Gray" Width="130px" OnClick="btnProfile_Click"/>     
                                               
                                         
                                   </li>
                        <!-- End Slider 01 -->
                        
                        <!-- Slider 02 -->
                        <li>
                            <h3>All Best University</h3>
                           <h1>Developer: Hong Zhao Rui</h1>
                             
                            <asp:Button ID="btnAF" runat="server" Text="Accounting & Finance" ForeColor="White" BackColor="Gray" Width="160px" OnClick="btnAF_Click" />
                             
                            <asp:Button ID="btnBM" runat="server" Text="Business Management" ForeColor="White" BackColor="Gray" Width="160px" OnClick="btnBM_Click" />
                            
                            <asp:Button ID="btnIT" runat="server" Text="Information Technology" ForeColor="White" BackColor="Gray" Width="160px" OnClick="btnIT_Click" />
                            
                            <asp:Button ID="btnDA" runat="server" Text="Design Animation" ForeColor="White" BackColor="Gray" Width="160px" OnClick="btnDA_Click" />
                            
                        </li>
                        <!-- End Slider 02 -->
                        
                        <!-- Slider 03 -->
                        <li>
                            <h3>All Best University</h3>
                           <h1>Group 5</h1>
                            <asp:Button ID="btnView" runat="server" Text="View Assignment" oreColor="White" BackColor="Gray" Width="130px" OnClick="btnView_Click" />
                            <asp:Button ID="btnAnswer" runat="server" Text="Upload Answer" oreColor="White" BackColor="Gray" Width="130px" OnClick="btnAnswer_Click"/>
                        </li>
                        <!-- End Slider 03 -->
                    </ul>
                </div>
            </div>              
               </div>
                </div>
           </div>
           
       </div>


    <br />
       <!--HOME SECTION END-->   
    <div  class="tag-line" >
         <div class="container">
           <div class="row  text-center" >
           
               <div class="col-lg-12  col-md-12 col-sm-12">
               
        <h2 data-scroll-reveal="enter from the bottom after 0.1s" ><i class="fa fa-circle-o-notch"></i> WELCOME TO ALL BEST UNIVERSITY <i class="fa fa-circle-o-notch"></i> </h2>
                   </div>
               </div>
             </div>
    </div>
    <!--HOME SECTION TAG LINE END-->
</asp:Content>
