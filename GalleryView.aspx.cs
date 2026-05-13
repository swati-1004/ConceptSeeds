using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GalleryView : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // ⭐ if id exists → load
            if (Request.QueryString["cat"] != null)
            {
                int cid = Convert.ToInt32(Request.QueryString["cat"]);
                LoadImages(cid);
            }
            else
            {
                // ⭐ nothing show
                rptImages.Visible = false;
                lblMsg.Visible = true;
            }
        }
    }

    void LoadImages(int cid)
    {
        try
        {
            using (SqlConnection con = new SqlConnection(cs))
            using (SqlDataAdapter da = new SqlDataAdapter(@"
            SELECT 
                g.ImagePath,
                g.Status,
                c.CategoryName
            FROM GalleryImages g
            INNER JOIN GalleryCategory c
                ON g.CategoryID = c.CategoryID
            WHERE g.CategoryID = @cid AND g.Status = 'Active'", con))
            {
                da.SelectCommand.Parameters.Add("@cid", SqlDbType.Int).Value = cid;


                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    lblTitle.Text = dt.Rows[0]["CategoryName"].ToString();
                    ////lblEventName.Text = dt.Rows[0]["CategoryName"].ToString();

                    rptImages.DataSource = dt;
                    rptImages.DataBind();

                    lblMsg.Visible = false;
                }
                else
                {
                    lblMsg.Text = "No Images Found";
                    lblMsg.Visible = true;

                    rptImages.DataSource = null;
                    rptImages.DataBind();
                }
            }
        }
        catch (Exception)
        {
            lblMsg.Text = "Something went wrong. Please try again later.";
            lblMsg.Visible = true;
        }
    }
}