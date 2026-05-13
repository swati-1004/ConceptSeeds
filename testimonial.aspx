<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="testimonial.aspx.cs" Inherits="testimonial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
                
                <div class="testimonial-text bg-light text-center p-4">
                <p class="mb-0">This school feels like family, where teachers guide patiently, friends support unconditionally, learning feels exciting, and every student is valued respected encouraged daily.</p>
                </div>
            </div>
            <div class="testimonial-item text-center">
                <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial02.jpg" style="width: 80px; height: 80px;">
                
                <div class="testimonial-text bg-light text-center p-4">
                <p class="mb-0">School life gave me knowledge, confidence, leadership skills, supportive mentors, joyful memories, strong ethics, and opportunities to discover my true potential here always.</p>
                </div>
            </div>
            <div class="testimonial-item text-center">
                <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial03.jpg" style="width: 80px; height: 80px;">
               
                <div class="testimonial-text bg-light text-center p-4">
                <p class="mb-0">My school shaped my confidence, taught discipline, encouraged creativity, supported dreams, built friendships, inspired learning, and helped me grow academically every day always.</p>
                </div>
            </div>
            <div class="testimonial-item text-center">
                <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial04.jpg" style="width: 80px; height: 80px;">
                
                <div class="testimonial-text bg-light text-center p-4">
                <p class="mb-0">Teachers here motivated me to explore talents, ask questions, respect values, face challenges bravely, and enjoy learning in a safe environment every day.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Testimonial End -->

</asp:Content>

