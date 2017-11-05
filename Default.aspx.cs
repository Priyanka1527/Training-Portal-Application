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
public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["portalConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand("select * from reg where email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'");
        cmd.Connection = con;
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        con.Close();
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["un"] = TextBox1.Text;
            if (RadioButton2.Checked)
                Response.Redirect("student.aspx");
            else
            {
                if(TextBox2.Text=="admin")
                Response.Redirect("admin.aspx");
              
            }
        }
        else
            Label1.Text = "Incorrect ID or Password";
    }
}
