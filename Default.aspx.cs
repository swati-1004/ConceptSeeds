using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlComan sql = new SqlComan();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadSlider();
            LoadNews();
            LoadNotice();
            //LoadGallery();
        }

    }
    void LoadSlider()
    {
        DataTable dt = sql.GetDataTable("SELECT * FROM Slider WHERE Status='Active'");
        rptCarousel.DataSource = dt;
        rptCarousel.DataBind();
    }

    void LoadNews()
    {
        DataTable dt = sql.GetDataTable("SELECT * FROM FlashNews WHERE Status='Active'");
        rptNews.DataSource = dt;
        rptNews.DataBind();
    }

    void LoadNotice()
    {
        DataTable dt = sql.GetDataTable("SELECT * FROM Notices WHERE Status='Active'");
        rptNotice.DataSource = dt;
        rptNotice.DataBind();
    }
    //void LoadGallery()
    //{
    //    DataTable dt = sql.GetDataTable("SELECT ImagePath FROM GalleryImages WHERE Status='Active'");
    //    rptGalleryCategory.DataSource = dt;
    //    rptGalleryCategory.DataBind();
    //}
}