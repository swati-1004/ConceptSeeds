<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GalleryView.aspx.cs" Inherits="GalleryView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style>
    .team-item img {
           width: 100%;
           height: 270px; 
           object-fit: cover;

    }
</style>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div class="container-xxl py-5">
    <div class="container">
       <div class="text-center wow fadeInUp page-title-content" data-wow-delay="0.1s">
            
            <h2 class="pb-4"><asp:Label ID="lblTitle" runat="server" /></h2>          
<%--        <h3 class="text-center pt-3 text-primary"><asp:Label ID="lblEventName" runat="server" /></h3>--%>

            <asp:Label ID="lblMsg" runat="server" Text="No Image Found"  CssClass="text-center text-danger fs-4" Visible="false"></asp:Label>
         </div>
       <div class="row g-4">

          <asp:Repeater ID="rptImages" runat="server">
             <ItemTemplate>

                <div class="col-md-4 wow fadeInUp" data-wow-delay="0.5s">
                <div class="team-item bg-light">
                    <div class="overflow-hidden single-gallery">         
                        <a href="uploads/gallery/<%# Eval("ImagePath")  %>" data-fancybox="gallery" data-caption="">
                        <img src="uploads/gallery/<%# Eval("ImagePath")  %>" /> </a>
                    </div>
                </div>
            </div>

             </ItemTemplate>
          </asp:Repeater>
       </div>
    </div>
  </div>
        
<script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.umd.js"></script>

</asp:Content>

