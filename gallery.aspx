<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
            <style>
    .team-item img {
           width: 100%;
           height: 250px; 
           object-fit: cover;

    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     
 <div class="container-xxl py-5">
     <div class="container">
         <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
             <h6 class="section-title bg-white text-center text-primary px-3">Gallery</h6>
             <h1 class="mb-5">Celebrating Growth, Values, and Achievements</h1>
         </div>
         <div class="row g-4">
             <asp:Repeater ID="rptGalleryCategory" runat="server">
             <ItemTemplate>
  

                 <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
    <div class="team-item bg-light">
        
        <div class="overflow-hidden" height="80%" width="100%">
            <a href="GalleryView.aspx?cat=<%# Eval("CategoryID") %>">
                 <img  class="img-fluid" src="uploads/gallery/<%# Eval("CoverImage").ToString() != "noimage.png" ? Eval("CoverImage") : "" %>" alt='<%#Eval("CategoryName") %>'>
               <div style="height:20%; width:100%;" class="text-center bg-dark text-light pt-3 pb-2">
                   <p> <%#Eval("CategoryName") %></p>
               </div>
            </a>
        </div>
        
        
    </div>
</div>
             </ItemTemplate>
             </asp:Repeater>

           <%--  <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                 <div class="team-item bg-light">
                     
                     <div class="overflow-hidden" height="80%" width="100%">
                         <a href="GalleryView.aspx">
                            <img class="img-fluid" src="img/pic3a.jpg" alt="">
                            <div style="height:20%; width:100%;" class="text-center bg-dark text-light pt-3 pb-2">
                                <p>Celebrating Outstanding Student Achievements</p>
                            </div>
                         </a>
                     </div>
                     
                     
                 </div>
             </div>
             <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                 <div class="team-item bg-light">
                     <div class="overflow-hidden">
                         <a href="exibition.aspx">
                         <img class="img-fluid" src="img/pic03.jpg" alt="">
                                                          <div style="height:20%; width:100%;" class="text-center bg-dark text-light pt-3 pb-2">
    <p>Where Curiosity Meets Scientific Creativity</p>
</div>
                             </a>
                     </div>
                     
                 </div>
             </div>
             <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                 <div class="team-item bg-light">
                     <div class="overflow-hidden">
                         <a href="gardening.aspx">
                         <img class="img-fluid" src="img/pic1a.jpg" alt="">
                                                          <div style="height:20%; width:100%;" class="text-center bg-dark text-light pt-3 pb-2">
    <p>Learning Sustainability Through School Gardening</p>
</div>
                             </a>
                     </div>
                     
                 </div>
             </div>
             <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                 <div class="team-item bg-light">
                     <div class="overflow-hidden">
                         <a href="cultural.aspx">
                         <img class="img-fluid" src="img/cultural01.jpg" alt="">
                             <div style="height:20%; width:100%;" class="text-center bg-dark text-light pt-3 pb-2"> 
                                 <p>Celebrating Culture, Talent, and Rich Tradition</p></div>
                             </a>
                     </div>
                     
                 </div>
             </div>
             <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                 <div class="team-item bg-light">
                     <div class="overflow-hidden">
                         <a href="sports.aspx">
                         <img class="img-fluid" src="img/sportsBanner.jpg" alt="">
                         <div style="height:20%; width:100%;" class="text-center bg-dark text-light pt-3 pb-2"> 
    <p>Celebrating Strength, Teamwork, and Sportsmanship</p></div>
                             </a>
                     </div>
                     
                 </div>
             </div>
            --%>

         </div>
     </div>
 </div>
 

</asp:Content>

