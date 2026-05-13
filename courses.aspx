<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="courses.aspx.cs" Inherits="courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

             <!-- Courses Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Administration & Notices</h6>
                <h1 class="mb-5" style="color:#C1A15C">Leadership with Purpose and Integrity</h1>
            </div>
            <div class="row g-4 justify-content-center">
                <div class="col-lg-4 col-sm-12 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="course-item bg-light">
                        <div class="position-relative overflow-hidden">
                            <img class="img-fluid" src="uploads/director.jpg" alt="">
                            <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
                                <a href="#" class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;">Read More</a>
                                <a href="#" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Join Now</a>
                            </div>
                        </div>
                        <div class="text-center p-4 pb-0">
                            <h3 class="mb-0">DIRECTOR'S MESSAGE</h3>
                            <hr />
                            <strong class="mb-4">As the Director of Manav Bharti National School, I am committed to fostering quality education, discipline, and holistic development through strong English-medium learning, shaping confident, ethical, and future-ready global citizens for tomorrow.</strong>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="course-item bg-light">
                        <div class="position-relative overflow-hidden">
                            <img class="img-fluid" src="uploads/principal.jpg" alt="">
                            <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
                                <a href="#" class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;">Read More</a>
                                <a href="#" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Join Now</a>
                            </div>
                        </div>
                        <div class="text-center p-4 pb-0">
                            <h3 class="mb-0">PRINCIPAL'S MESSAGE</h3>
                            <hr />
                            <strong class="mb-4">As Principal, I guide Manav Bharti National School toward academic excellence, moral integrity, and personal growth through balanced English-medium education that blends rigor, creativity, and values, nurturing confident learners for a brighter future ahead</strong>
                        </div>
                     
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12 wow fadeInUp" data-wow-delay="0.3s"<%-- style="height:100%"--%>>
                    <div class="course-item bg-light">
                        <div class="position-relative overflow-hidden<%-- bottom-0 start-0 mb-4--%>">
                            <a href="uploads/notice.jpg" data-fancybox="gallery" data-caption="">
                                <img class="img-fluid" src="uploads/notice.jpg" height="100%" width="100%"/>
                            </a>
                            <hr />
                            <div class="w-100 d-flex justify-content-center bottom-0">
                                <h1 >Notice Board</h1>

                            </div> 
                            <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-0 mt-0">
                            </div>
                        </div>
               <marquee scrollamount="3" direction="up" onmousemove="this.stop();" onmouseout="this.start();" style=" height:390px;   border: 1px solid #ddd;">                
                    <div class="row" style="border-bottom:1px solid black; padding:10px; ">
                         <div class="col-12">
                             <div class="box">
                                 <div class="box_img">
                                  >>  <span style="font-size:12px; margin-top:-40px"> Notice-1</span>
                                 </div>
                                 <div class="box_content">
                                     <b class="box_text">Admission Cum Registration is going for Class Pre Nursery to IX. (2024-25)</b>
                                 </div>
                             </div>
                         </div>
                    </div>
                    
                    <div class="row" style="border-bottom:1px solid black; padding:10px; ">
                         <div class="col-12">
                             <div class="box">
                                 <div class="box_img">
                                  >>  <span style="font-size:12px; margin-top:-40px"> Notice-2</span>
                                 </div>
                                 <div class="box_content">
                                     <b class="box_text">We have Started Japanese classes and Cricket Academy in our School</b>
                                 </div>
                             </div>
                         </div>
                    </div>

                   <div class="row" style="border-bottom:1px solid black; padding:10px; ">
     <div class="col-12">
         <div class="box">
             <div class="box_img">
              >>  <span style="font-size:12px; margin-top:-40px"> Notice-3</span>
             </div>
             <div class="box_content">
                 <b class="box_text">Admission Cum Registration is going for Class Pre Nursery to IX. (2024-25)</b>
             </div>
         </div>
     </div>
</div>
               </marquee>
<%--                            **********************************************************************--%>
                        </div>

                    </div>
                    </div>
                </div>
            </div>
    <!-- Courses End -->

</asp:Content>

