using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


  
public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void button_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;

        using (SqlConnection con = new SqlConnection(cs))
        {
            string query = "INSERT INTO ContactMessages (Name, Email, Subject, Message) VALUES (@Name,@Email,@Subject,@Message)";

            SqlCommand cmd = new SqlCommand(query, con);

            // PARAMETERS
            cmd.Parameters.AddWithValue("@name", name.Text.Trim());
            cmd.Parameters.AddWithValue("@email", email.Text.Trim());
            cmd.Parameters.AddWithValue("@subject", subject.Text.Trim());
            cmd.Parameters.AddWithValue("@message", message.Text.Trim());

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        } 
            name.Text = "";
            email.Text = "";
            subject.Text = "";
            message.Text = "";

            Response.Write("<script>alert('Registration Successful')</script>");
        //}
    }
}
