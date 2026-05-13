<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <!-- Contact Start -->
 <div class="container-xxl py-5">
  <div class="container">
        <div class="row g-5">
             <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">          
                 <div class="row g-3">
                     <div class="d-inline-block text-center rounded-pill bg-white text-primary px-3"> <div>Contact Us</div>
                     <h2 class="display-6 mb-5" style="color:#C1A15C">Get in Touch With Us</h2>
                     <p class="mb-4">We are here to answer your queries and support your child’s educational journey. </p></div>
             
                     <div class="col-md-6 wow fadeInUp" data-wow-delay="0.1s"">
                         <div> 
                             <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Enter Your Name" Height="55px" Width="238px" ></asp:TextBox>
                         </div>
                     </div>
                     <div class="col-md-6 ">
                        <div>
                            <asp:TextBox ID="email" class="form-control" placeholder="Your Email" runat="server" Height="55px" Width="238px"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-12">
                        <div> 
                            <asp:TextBox ID="subject" class="form-control" placeholder="Subject" runat="server" Height="55px" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-12">
                        <div>
                             <asp:TextBox ID="message" class="form-control" placeholder="Leave a message here" runat="server" Height="55px" TextMode="MultiLine"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-12 ">    
                        <div class="btn btn-primary py-2 px-3 me-3">
                            <asp:Button ID="button1" runat="server" class="btn btn-primary py-2 px-3 me-3" Text="Send Message" OnClick="button_Click" />
                        </div>
                     </div>
</div>
             </div>
       
       <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
         <div class="position-relative rounded overflow-hidden h-100">
        <iframe class="position-relative w-100 h-100"
         src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3623.0335302158223!2d85.00629077514863!3d24.76003947799498!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f32bca145c8f17%3A0xd44f4efe1c7350d2!2sMANAV%20BHARTI%20NATIONAL%20SCHOOL!5e0!3m2!1sen!2sin!4v1771397571115!5m2!1sen!2sin"
        frameborder="0" style="min-height: 450px; border:0;" allowfullscreen="" aria-hidden="false"
        tabindex="0"></iframe>
    </div>
     </div>
    </div>
  </div>
 
</div>
</asp:Content>

<%--    <div class="d-flex align-items-center mb-3">
        <div class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary" style="width: 50px; height: 50px;">
            <i class="fa fa-phone-alt text-white"></i>
        </div>
        <div class="ms-3">
            <h5 class="text-primary">Mobile</h5>
            <p class="mb-0">+012 345 67890</p>
        </div>
    </div>
    <div class="d-flex align-items-center">
        <div class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary" style="width: 50px; height: 50px;">
            <i class="fa fa-envelope-open text-white"></i>
        </div>
        <div class="ms-3">
            <h5 class="text-primary">Email</h5>
            <p class="mb-0">info@example.com</p>
        </div>
    </div>
</div>--%>

