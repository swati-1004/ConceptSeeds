<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sports.aspx.cs" Inherits="sports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style>
           .team-item img {
 width: 100%;
 height:400px; 
 object-fit: cover;
            }

    .team-item img {
           width: 100%;
           height: 280px; 
           object-fit: cover;

    }
</style>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <div class="container-xxl py-5">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3">Sports Fest</h6>
            <h1 class="mb-5">Celebrating Strength, Teamwork, and Sportsmanship</h1>
        </div>
        <div class="row g-4">
            <div class="col-lg-12 col-md-6 bigBanner wow fadeInUp" data-wow-delay="0.1s">
                <div class="team-item bg-light">
                    <div class="overflow-hidden">
<%--                        <img class="img-fluid" src="uploads/sports/sp01a.jpg" alt="">--%>
                            <a href="uploads/sports/sp01a.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/sports/sp01a.jpg" />
</a>
                    </div>
                    
                </div>
            </div>
            <div class="col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="team-item bg-light">
                    <div class="overflow-hidden">
<%--                        <img class="img-fluid" src="uploads/sports/sp02.jpg" alt="">--%>
                            <a href="uploads/sports/sp02.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/sports/sp02.jpg" />
</a>
                    </div>
                    
                </div>
            </div>
            <div class="col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="team-item bg-light">
                    <div class="overflow-hidden">
                        
<%--                        <img class="img-fluid" src="uploads/sports/sp3.jpg" alt="">--%>
                                                    <a href="uploads/sports/sp3.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/sports/sp3.jpg" />
</a>
                            
                    </div>
                    
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                <div class="team-item bg-light">
                    <div class="overflow-hidden">
<%--                        <img class="img-fluid" src="uploads/sports/sp4.jpg" alt="">--%>
                                                    <a href="uploads/sports/sp4.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/sports/sp4.jpg" />
</a>
                    </div>
                    
                </div>
            </div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
    <div class="team-item bg-light">
        <div class="overflow-hidden">
<%--            <img class="img-fluid" src="uploads/sports/sp5.jpg" alt="">--%>
                                        <a href="uploads/sports/sp5.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/sports/sp5.jpg" />
</a>
        </div>
        
    </div>
</div>
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
    <div class="team-item bg-light">
        <div class="overflow-hidden">
<%--            <img class="img-fluid" src="uploads/sports/sp6.jpg" alt="">--%>
                                        <a href="uploads/sports/sp6.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/sports/sp6.jpg" />
</a>
        </div>
        
    </div>
</div>

        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.umd.js"></script>

</asp:Content>

