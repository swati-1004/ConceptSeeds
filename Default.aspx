<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        .flash-news{
    position:absolute;
    bottom:0;               
    left:0;
    width:100%;
    background:#021770;
    color:white;
    z-index:9999;
    padding:2px 0;
    display:flex;
    align-items:center;
    line-height:18px;
}

.news-title{
    margin:8px;
    padding-left:10px;
    font-weight:600;
}

        .flash-news marquee {
            flex: 1;
            margin:8px 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5 position-relative" >
  
        <div class="owl-carousel header-carousel position-relative" >
            <asp:Repeater ID="rptCarousel" runat="server">
              <ItemTemplate>
                   <div class="owl-carousel-item <%# Container.ItemIndex == 0 ? "active" : "" %> position-relative overflow-hidden" style="width:100%; height:85vh;">
                      <img class="img-fluid" src="<%# ResolveUrl("~/uploads/slider/") + Eval("Image")  %>" alt="" style="width: 100%; height: 100%; object-fit: cover;">
             
                   <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(24, 29, 56, .7);">
                       <div class="container">
                       <div class="row justify-content-start">
                            <div class="col-sm-10 col-lg-8">
                                <h5 class="text-
                                    text-uppercase mb-3 animated slideInDown" style="color:#C1A15C"><%# Eval("Title") %></h5>
                                <h1 class="display-3 text-white animated slideInDown">Manav Bharti National School Empowers Its Students</h1>
                                <p class="fs-5 text-white mb-4 pb-2"><%# Eval("Sub_Title") %></p>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft" style="color:#C1A15C">Read More</a>
                                <a href="contact.aspx" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Join Now</a>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>

       </ItemTemplate>
            </asp:Repeater>
        </div>

        <div class="flash-news">
            <strong class="news-title"> <u>Latest News :</u> </strong>
            <marquee behavior="scroll" direction="left" scrollamount="4">
              <strong> 
                  <asp:Repeater ID="rptNews" runat="server">
                    <ItemTemplate>
                        <span><i class="bell fa fa-bell "></i> <%# Eval("News_Details") %>  || </span>
                    </ItemTemplate>
                  </asp:Repeater>
              </strong>
            </marquee>
        </div>
    </div>

    <!-- Carousel End -->


    <!-- Service Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                            <i class="fa fa-3x fa-graduation-cap text-primary mb-4"></i>
                            <h5 class="mb-3" style="color:#C1A15C">Skilled Instructors</h5>
                            <p>Our experienced and dedicated teachers focus on conceptual clarity, discipline, and personal attention to ensure every student achieves academic excellence.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                            <i class="fa fa-3x fa-globe text-primary mb-4"></i>
                            <h5 class="mb-3" style="color:#C1A15C">Smart & Online Learning</h5>
                            <p>We integrate smart classrooms and digital tools to enhance learning, making education interactive, engaging, and future-ready.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                            <i class="fa fa-3x fa-home text-primary mb-4"></i>
                            <h5 class="mb-3" style="color:#C1A15C">Home Assignments & Projects</h5>
                            <p>Well-structured assignments and projects encourage independent thinking, creativity, and practical application of classroom learning.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="service-item text-center pt-3">
                        <div class="p-4">
                            <i class="fa fa-3x fa-book-open text-primary mb-4"></i>
                            <h5 class="mb-3" style="color:#C1A15C">Well-Equipped Library</h5>
                            <p>Our library provides a rich collection of books and learning resources that support academic growth, curiosity, and reading habits.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->


    <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s" style="min-height: 400px;">
                    <div class="position-relative h-100">
                        <img class="img-fluid position-absolute w-100 h-100" src="uploads/schoolPic.jpg" alt="" style="object-fit: cover;">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                    <h6 class="section-title bg-white text-start text-primary pe-3">About Us</h6>
                    <h1 class="mb-4" style="color:#C1A15C">Welcome to Manav Bharti National School </h1>
                    <p class="mb-4">Established in 1998, Manav Bharti National School is a co-educational, English medium day school dedicated to providing high-quality education that nurtures the academic, social, and personal growth of every student.</p> 
                    <p class="mb-4">Recognized by the Central Board of Secondary Education (CBSE), New Delhi, our school offers a robust curriculum designed to empower students at the secondary level and prepare them for future success.</p>
                    <p class="mb-4">Our campus, located in Kendui near Govt. ITI on Bodhgaya Road, Gaya, boasts a spacious, well-designed building with a secure high boundary wall. 
                        The school is equipped with state-of-the-art facilities, including a fully furnished administrative block, an exte</p>
                    <div class="row gy-2 gx-4 mb-4">
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Qualified Teachers</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Sports & Play Facilities</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Safe & Secure Campus</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Well-Equipped Classrooms</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Library & Learning Resources</p>
                        </div>
                        <div class="col-sm-6">
                            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Clean Water & Washrooms</p>
                        </div>
                    </div>
                    <a class="btn btn-primary py-3 px-5 mt-2" href="">Read More</a>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->


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
                <div class="col-lg-4 col-sm-12 wow fadeInUp" data-wow-delay="0.3s">
                    
                    <div class="course-item bg-light">
                        
                        <div class="position-relative overflow-hidden">
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

                                       <asp:Repeater ID="rptNotice" runat="server">
                   <ItemTemplate>
                       <li>
                           <div class="events-date">
                               <span style="font-size: 18px">
                                   <%# Convert.ToDateTime(Eval("Notice_Date")).ToString("dd") %>
                               </span>
                               <span>
                                   <%# Convert.ToDateTime(Eval("Notice_Date")).ToString("MMM, yyyy") %>
                                   </span>
                           </div>
                           <div>
                               <h5>
                                   <a target="_blank" href='<%# ResolveUrl("~/uploads/notices/") + Eval("Image")  %>'><%# Eval("Notice_Title") %>
                                   </a>
                               </h5>
                               <p class="text-black"><%# Eval("Notice_Details") %></p>

                               <a target="_blank" href='<%# ResolveUrl("~/uploads/notices/") + Eval("Image")  %>' class="read-more">View/Download

                               </a>
                           </div>

                       </li>
                   </ItemTemplate>
               </asp:Repeater>
                    </div>
               </marquee>
                        </div>
   
 
                    </div>
            </div>
        </div>
    </div>
    <!-- Courses End -->


    <!-- Categories Start -->
    <div class="container-xxl py-5 category">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Campus Life</h6>
                <h1 class="mb-5" style="color:#C1A15C">Shaping Skills Beyond Classroom Walls</h1>
            </div>
            <div class="row g-3">
                <div class="col-lg-7 col-md-6">
                    <div class="row g-3">
                        <div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s">
                            <a class="position-relative d-block overflow-hidden" href="">
                                <img class="img-fluid" src="uploads/campusPic/img1.jpg" alt="">
                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
                                    <h5 class="m-0">School Events</h5>
                                    <small class="text-primary">A Vibrant Assembly That Builds Confidence and Unity</small>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s">
                            <a class="position-relative d-block overflow-hidden" href="">
                                <img class="img-fluid" src="uploads/campusPic/img2.jpg" alt="">
                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
                                    <h5 class="m-0">Teaching Methodology</h5>
                                    <small class="text-primary">Focused Learning in a Disciplined Environment</small>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.5s">
                            <a class="position-relative d-block overflow-hidden" href="">
                                <img class="img-fluid" src="uploads/campusPic/img4.jpg" alt="">
                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
                                    <h5 class="m-0">Student Development</h5>
                                    <small class="text-primary">Encouraging Interaction and Collaborative Learning</small>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="0.7s" style="min-height: 350px;">
                    <a class="position-relative d-block h-100 overflow-hidden" href="">
                        <img class="img-fluid position-absolute w-100 h-100" src="uploads/campusPic/img3.jpg" alt="" style="object-fit: cover;">
                        <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin:  1px;">
                            <h5 class="m-0">Social Responsibility</h5>
                            <small class="text-primary">Nurturing Nature, Shaping Responsible Citizens</small>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Categories End -->


   


    <!-- Team Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Our Faculty</h6>
                <h1 class="mb-5" style="color:#C1A15C">Guiding Students Toward Excellence</h1>
            </div>
            <div class="row g-4">
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item bg-light">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="uploads/team/team01.jpg" alt="" style="height:40vh; width:100%">
                        </div>
                        <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                            <div class="bg-light d-flex justify-content-center pt-2 px-1">
                            </div>
                        </div>
                        <div class="text-center p-4">
                            <h5 class="mb-0" style="color:#C1A15C">Excellence Through Guidance</h5> <hr />
                            <small>Our teachers mentor students with dedication and expertise, guiding them toward academic success and growth.</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="team-item bg-light">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="uploads/team/team02.jpg" alt="" style="height:40vh; width:100%">
                        </div>
                        <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                            <div class="bg-light d-flex justify-content-center pt-2 px-1">
                          <%--      <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-instagram"></i></a>
                           --%> </div>
                        </div>
                        <div class="text-center p-4">
                            <h5 class="mb-0" style="color:#C1A15C">Learning Through Engagement</h5><hr />
                            <small>Teachers encourage active participation, and collaborative learning to strengthen conceptual understanding</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="team-item bg-light">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="uploads/team/team03.jpg" alt="" style="height:40vh; width:100%;">
                        </div>
                        <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                            <div class="bg-light d-flex justify-content-center pt-2 px-1">
                         <%--       <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-instagram"></i></a>
                            --%></div>
                        </div>
                        <div class="text-center p-4">
                            <h5 class="mb-0" style="color:#C1A15C">Building Strength and Discipline</h5><hr />
                            <small>Educators focus on physical fitness and discipline, nurturing confidence, teamwork, and overall well-being.</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="team-item bg-light">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="uploads/team/team04.jpg" alt="" style="height:40vh; width:100%;">
                        </div>
                        <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                            <div class="bg-light d-flex justify-content-center pt-2 px-1">
                         <%--       <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-instagram"></i></a>
                            --%></div>
                        </div>
                        <div class="text-center p-4">
                            <h5 class="mb-0" style="color:#C1A15C">Nurturing Young Foundations</h5><hr />
                            <small>Our teachers create a caring and joyful learning environment, ensuring strong foundational development for learners.</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Team End -->


    <!-- Testimonial Start -->
    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="text-center">
                <h6 class="section-title bg-white text-center text-primary px-3">Stories</h6>
                <h1 class="mb-5" style="color:#C1A15C">Our Students Say!</h1>
            </div>
            <div class="owl-carousel testimonial-carousel position-relative">
                <div class="testimonial-item text-center">
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial01.jpg" style="width: 80px; height: 80px;">
                    <%--<h5 class="mb-0">Client Name</h5>
                    <p>Profession</p>--%>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0">This school feels like family, where teachers guide patiently, friends support unconditionally, learning feels exciting, and every student is valued respected encouraged daily.</p>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial02.jpg" style="width: 80px; height: 80px;">
                    <%--<h5 class="mb-0">Client Name</h5>
                    <p>Profession</p>--%>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0">School life gave me knowledge, confidence, leadership skills, supportive mentors, joyful memories, strong ethics, and opportunities to discover my true potential here always.</p>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial03.jpg" style="width: 80px; height: 80px;">
                    <%--<h5 class="mb-0">Client Name</h5>
                    <p>Profession</p>--%>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0">My school shaped my confidence, taught discipline, encouraged creativity, supported dreams, built friendships, inspired learning, and helped me grow academically every day always.</p>
                    </div>
                </div>
                <div class="testimonial-item text-center">
                    <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial04.jpg" style="width: 80px; height: 80px;">
                    <%--<h5 class="mb-0">Client Name</h5>
                    <p>Profession</p>--%>
                    <div class="testimonial-text bg-light text-center p-4">
                    <p class="mb-0">Teachers here motivated me to explore talents, ask questions, respect values, face challenges bravely, and enjoy learning in a safe environment every day.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->

</asp:Content>

