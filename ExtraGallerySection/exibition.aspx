<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="exibition.aspx.cs" Inherits="exibition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
            <style>
 
    .team-item img {
           width: 100%;
           height: 350px; 
           object-fit: cover;

    }
</style>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <div class="container-xxl py-5">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3">Science Innovation</h6>
            <h1 class="mb-5">Where Curiosity Meets Scientific Creativity</h1>
        </div>
        <div class="row g-4">
            <div class="col-lg-6 col-md-12 wow fadeInUp" data-wow-delay="0.1s">
                <div class="team-item bg-light">
                    <div class="overflow-hidden">
<%--                        <img class="img-fluid" src="uploads/exibition/scienceEvent01a.jpg" alt="">--%>
                            <a href="uploads/exibition/scienceEvent01a.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/exibition/scienceEvent01a.jpg" />
</a>
                    </div>
                    
                </div>
            </div>
            <div class="col-lg-6 col-md-12 wow fadeInUp" data-wow-delay="0.3s">
                <div class="team-item bg-light">
                    <div class="overflow-hidden">
<%--                        <img class="img-fluid" src="uploads/exibition/scienceEvent02.jpg" alt="">--%>
                                                    <a href="uploads/exibition/scienceEvent02.jpg" data-fancybox="gallery" data-caption="">
  <img src="uploads/exibition/scienceEvent02.jpg" />
</a>
                    </div>
                    
                </div>
            </div>
           

        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.umd.js"></script>

</asp:Content>

