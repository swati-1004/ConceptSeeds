using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Master : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);
    SqlComan cls = new SqlComan();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = cls.GetDataTable("select * from LoginMaster");
            if (dt.Rows.Count > 0)
            {
                btnSignIn.Visible = true;
                btnSignUp.Visible = false;
                chkRemember.Visible = true;
                checkbox_div.Visible = true;
            }
            else
            {
                btnSignIn.Visible = false;
                btnSignUp.Visible = true;
                chkRemember.Visible = false;
                checkbox_div.Visible = false;
            }
            ExpireAllCookies();
        }



    }

    private void ExpireAllCookies()
    {
        if (HttpContext.Current != null)
        {
            int cookieCount = HttpContext.Current.Request.Cookies.Count;
            for (var i = 0; i < cookieCount; i++)
            {
                var cookie = HttpContext.Current.Request.Cookies[i];
                if (cookie != null)
                {
                    var cookieName = cookie.Name;
                    var expiredCookie = new HttpCookie(cookieName) { Expires = DateTime.Now.AddDays(-1) };
                    HttpContext.Current.Response.Cookies.Add(expiredCookie); // overwrite it
                }
            }

            // clear cookies server side
            HttpContext.Current.Request.Cookies.Clear();
        }
    }
    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        CCommonDB sql = new CCommonDB();

        string redirect = "", loginType = "";

        if ((redirect = sql.AuthenticateUser(ref loginType, this.Session, this.Response,
          txtUsername.Text, txtPassword.Text, chkRemember.Checked.ToString())) != string.Empty)
        {
            //wrapperCookie.Expires = lgnTypeCookie.Expires = lgnTypeCookie1.Expires = lgnTypeCookie2.Expires = Session.Timeout;

            // Redirect the user
            if (redirect != "Activate.aspx")
            {
                Response.Redirect(redirect);
            }
            else
            {
                if ((loginType == "School" || loginType == "Branch" || loginType == "Employee"))
                {
                    Response.Redirect(redirect);
                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<Script language='Javascript'> alert('Unauthorized Access!')</script>");
                    Message.Text = "Unauthorized Access!";
                }
            }

        }
        else
        {
            //ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Page is not inserted successfully, Please try again ')</script>");
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<Script language='Javascript'> alert('Login Failed!')</script>");
            Message.Text = "Login Failed!";
        }
    }
    protected void btnSignUp_Click(object sender, EventArgs e)
    {

        string uid = string.Empty;
        string upass = string.Empty;
        SqlCommand cmd = new SqlCommand("insert into LoginMaster (UserName, Password, Type, CreatedBy,CreatedDate,status) SELECT * FROM (SELECT @UserName as UserName, @Password as Password, @LoginType as Type, @Status as CreatedBy, @date2 as CreatedDate,@st as status) AS tmp WHERE NOT EXISTS (SELECT Type FROM LoginMaster WHERE type ='SuperAdmin')", con);
        // values( @UserName, @Password, @LoginType, @Status, @date2)", con);

        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            uid = CCommonDB.Encrypt(txtUsername.Text.Trim());
            upass = CCommonDB.Encrypt(txtPassword.Text.Trim());

            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@Name", "Admin");
            cmd.Parameters.AddWithValue("@UserName", uid);
            cmd.Parameters.AddWithValue("@Password", upass);
            cmd.Parameters.AddWithValue("@LoginType", "SuperAdmin");
            cmd.Parameters.AddWithValue("@Status", "SuperAdmin");
            cmd.Parameters.AddWithValue("@st", "Active");

            cmd.Parameters.AddWithValue("@date2", System.DateTime.UtcNow.AddMinutes(330).ToString("dd-MMM-yyyy"));
            cmd.ExecuteNonQuery();
            DataTable dt = cls.GetDataTable("select * from LoginMaster");
            if (dt.Rows.Count > 0)
            {
                btnSignIn.Visible = true;
                chkRemember.Visible = true;
                checkbox_div.Visible = true;
                btnSignUp.Visible = false;
            }
            else
            {
                btnSignIn.Visible = false;
                btnSignUp.Visible = true;
                chkRemember.Visible = false;
                checkbox_div.Visible = false;
            }
            // insertion of roles (Default)
            insert_role();

            // insertion of Fee Group (Default)
            insert_fee_group();
        }
        catch (Exception ex)
        {
            Response.Write("Error Occured:" + ex.Message.ToString());
        }
        finally
        {
            uid = string.Empty;
            upass = string.Empty;
            con.Close();
            cmd.Dispose();
        }
    }


    // insertion of role (Default)
    public void insert_role()
    {
        try
        {
            SqlComan sql = new SqlComan();
            DataTable dt = sql.GetDataTable("select * from default_role where status='Active'");

            if (dt.Rows.Count == 0)
            {
                string[] roles = {
                "Enquiry Management",
                "Student Registration",
                "Student Admission",
                "Attendance Management",
                "Subject Planning",
                "Time Table Planning",
                "Fee Generation",
                "Fee Collection",
                "Data Entry",
                "Tele Calling",
                "Email Marketing",
                "Social Media Management",
                "Communication Management",
                "Teaching",
                "Accountancy",
                "Organizing Events",
                "Organizing Travels",
                "Route Planning",
                "Driver Management",
                "Salary Management",
                "Employee Management",
                "Approve Leaves",
                "Income & Expense Management",
                "Examination Management",
                "Library Management",
                "Hostel Management",
                "Cafeteria Management",
                "Data Management"
            };

                string query = @"INSERT INTO default_role 
                            (role_name, addedby, addeddate, status) 
                            VALUES 
                            (@role_name, @addedby, @addeddate, @status)";

                foreach (string role in roles)
                {
                    SqlParameter[] param = new SqlParameter[]
                    {
                    new SqlParameter("@role_name", role),
                    new SqlParameter("@addedby", "SuperAdmin"),
                    new SqlParameter("@addeddate", DateTime.UtcNow.AddMinutes(330)),
                    new SqlParameter("@status", "Active")
                    };

                    sql.ExecuteSql(query, param);
                }
            }
        }
        catch (Exception ex)
        {
            string b = ex.Message.Replace("'", "");
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('" + b + "');", true);
        }
    }

    // insertion of Fee Group (Default)

    public void insert_fee_group()
    {
        try
        {
            SqlComan sql = new SqlComan();
            DataTable dt = sql.GetDataTable("select * from group_name where status='Active'");
            if (dt.Rows.Count == 0)
            {
                sql.ExecuteSql("insert into group_name(name,status) values ('Alumni','Fixed')");
                sql.ExecuteSql("insert into group_name(name,status) values ('Default Group','Fixed')");
                sql.ExecuteSql("insert into group_name(name,status) values ('Faculty & Staff','Fixed')");
                sql.ExecuteSql("insert into group_name(name,status) values ('Govt. Officers','Fixed')");
                sql.ExecuteSql("insert into group_name(name,status) values ('Physically Handicapped','Fixed')");
                sql.ExecuteSql("insert into group_name(name,status) values ('Siblings','Fixed')");
                sql.ExecuteSql("insert into group_name(name,status) values ('Others','Fixed')");
            }
        }
        catch (Exception ex)
        {
            string b = ex.Message.Replace("'", "");
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('" + b + "');", true);
        }
    }
}