<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gardening.aspx.cs" Inherits="gardening" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
        .team-item img {
    width: 100%;
    height: 300px;          /* choose height as per design */
    object-fit: cover;     /* prevents stretching */
}
    </style>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="container-xxl py-5">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3">Eco Education</h6>
            <h1 class="mb-5">Learning Sustainability Through School Gardening</h1>
        </div>
        <div class="row g-4">
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="team-item bg-light">
                    <div class="overflow-hidden">
                        <%--<img class="img-fluid" src="uploads/gardening/gd01.jpg" alt="">--%>
                                                <a href="uploads/gardening/gd01.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/gardening/gd01.jpg" />
</a>
                    </div>
                    
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="team-item bg-light">
                    <div class="overflow-hidden">
<%--                        <img class="img-fluid" src="uploads/gardening/gd5.jpg" alt="">--%>
                                                                        <a href="uploads/gardening/gd5.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/gardening/gd5.jpg" />
</a>
                    </div>
                    
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="team-item bg-light">
                    <div class="overflow-hidden">
                        
<%--                        <img class="img-fluid" src="uploads/gardening/gd6.jpg" alt="">--%>
                                                                        <a href="uploads/gardening/gd6.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/gardening/gd6.jpg" />
</a>
                            
                    </div>
                    
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                <div class="team-item bg-light">
                    <div class="overflow-hidden">
<%--                        <img class="img-fluid" src="uploads/gardening/gd04.jpg" alt="">--%>
                                                                        <a href="uploads/gardening/gd04.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/gardening/gd04.jpg" />
</a>
                    </div>
                    
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
    <div class="team-item bg-light">
        <div class="overflow-hidden">
<%--            <img class="img-fluid" src="uploads/gardening/gd2.jpg" alt="">--%>
                                                            <a href="uploads/gardening/gd2.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/gardening/gd2.jpg" />
</a>
        </div>
        
    </div>
</div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
    <div class="team-item bg-light">
        <div class="overflow-hidden">
<%--            <img class="img-fluid" src="uploads/gardening/gd003.jpg" alt="">--%>
                                                            <a href="uploads/gardening/gd003.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/gardening/gd003.jpg" />
</a>
        </div>
        
    </div>
</div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
    <div class="team-item bg-light">
        <div class="overflow-hidden">
<%--            <img class="img-fluid" src="uploads/gardening/gd07.jpg" alt="">--%>
                                                            <a href="uploads/gardening/gd07.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/gardening/gd07.jpg" />
</a>
        </div>
        
    </div>
</div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
    <div class="team-item bg-light">
        <div class="overflow-hidden">
<%--            <img class="img-fluid" src="uploads/gardening/gd8.jpg" alt="">--%>
                                                            <a href="uploads/gardening/gd8.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/gardening/gd8.jpg" />
</a>
        </div>
        
    </div>
</div>

        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.umd.js"></script>

</asp:Content>

