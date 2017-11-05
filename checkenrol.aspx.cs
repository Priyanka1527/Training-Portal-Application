using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class checkenrol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null)
            Response.Redirect("home.aspx");

        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["portalConnectionString"].ToString());
            SqlCommand cmd = new SqlCommand("select course_name from course");
            cmd.Connection = con;
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.AppendDataBoundItems = true;
            DropDownList1.DataTextField = "course_name";
            DropDownList1.DataBind();
          
        }
    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
}
