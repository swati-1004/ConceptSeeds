using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class disclosure : System.Web.UI.Page
{
    SqlComan sql = new SqlComan();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadDisclosure();
        }
    }

    void LoadDisclosure()
    {
        DataTable dt = sql.GetDataTable("SELECT * FROM Disclosure WHERE Status='Active'");

        rptDisclosure.DataSource = dt;

        rptDisclosure.DataBind();
    }
}