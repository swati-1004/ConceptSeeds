<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reward.aspx.cs" Inherits="reward" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style>
           

        .team-item img {
               width: 100%;
               height: 230px; 
               object-fit: cover;
    
        }
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="container-xxl py-5">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3">Celebrating Student Achievements</h6>
            <h1 class="mb-5">Honouring hard work, dedication, and success of our students.</h1>
        </div>
        <div class="row g-4">
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="team-item bg-light">
                    <div class="overflow-hidden">
<%--                        <img class="img-fluid" src="uploads/Reward/r1.jpg" alt="">--%>
                             <a href="uploads/Reward/r1.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/Reward/r1.jpg" />
</a>
                    </div>
                    
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="team-item bg-light">
                    <div class="overflow-hidden">
<%--                        <img class="img-fluid" src="uploads/Reward/r5.jpg" alt="">--%>
                                                                                                <a href="uploads/Reward/r5.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/Reward/r5.jpg" />
</a>
                    </div>
                    
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="team-item bg-light">
                    <div class="overflow-hidden">
<%--                        <img class="img-fluid" src="uploads/Reward/r03.jpg" alt="">--%>
                                                                                                <a href="uploads/Reward/r03.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/Reward/r03.jpg" />
</a>
                    </div>
                    
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                <div class="team-item bg-light">
                    <div class="overflow-hidden">
<%--                        <img class="img-fluid" src="uploads/Reward/r4.jpg" alt="">--%>
                                                                                                <a href="uploads/Reward/r4.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/Reward/r4.jpg" />
</a>
                    </div>
                    
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
    <div class="team-item bg-light">
        <div class="overflow-hidden">
<%--            <img class="img-fluid" src="uploads/Reward/r2.jpg" alt="">--%>
                         <a href="uploads/Reward/r2.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/Reward/r2.jpg" />
</a>
        </div>
        
    </div>
</div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
    <div class="team-item bg-light">
        <div class="overflow-hidden">
<%--            <img class="img-fluid" src="uploads/Reward/r6.jpg" alt="">--%>
                      <a href="uploads/Reward/r6.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/Reward/r6.jpg" />
</a>
        </div>
        
    </div>
</div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
    <div class="team-item bg-light">
        <div class="overflow-hidden">
<%--            <img class="img-fluid" src="uploads/Reward/result.jpg" alt="">--%>
                            <a href="uploads/Reward/result.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/Reward/result.jpg" />
</a>
        </div>
        
    </div>
</div>
            

        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.umd.js"></script>

</asp:Content>

