using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gallery : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["cat"] != null)
            {
                int cid = Convert.ToInt32(Request.QueryString["cat"]);
                //LoadImages(cid);
            }
            else
            {
                LoadCategory();
            }
        }
    }

    private void LoadCategory()
    {
        try
        {
            string cs = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"SELECT 
                                c.CategoryID,
                                c.CategoryName,
                                c.EventDate,
                                g.ImagePath AS CoverImage
                            FROM GalleryCategory c
                            OUTER APPLY (
                                SELECT TOP 1 ImagePath
                                FROM GalleryImages
                                WHERE CategoryID = c.CategoryID
                                ORDER BY Id DESC
                            ) g
                            WHERE c.Status = 'Active'
                              AND g.ImagePath IS NOT NULL
                            ORDER BY c.EventDate DESC
                            ";

                using (SqlDataAdapter da = new SqlDataAdapter(query, con))
                {
                    DataTable dt = new DataTable();
                    con.Open();
                    da.Fill(dt);

                    rptGalleryCategory.DataSource = dt;
                    rptGalleryCategory.DataBind();
                }
            }
        }
        catch (Exception ex)
        {

            ScriptManager.RegisterStartupScript(
                this,
                GetType(),
                "showalert",
                "alert('Something Went Wrong ');",
                true
            );
        }
    }
}