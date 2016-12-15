using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace myjob
{
    public partial class job_detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {


           
                SqlCommand cmd = new SqlCommand();
                SqlConnection con = new SqlConnection();
                SqlDataReader dr;
                con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\jobs_dbase.mdf;Integrated Security=True;User Instance=True";
                con.Open();
                cmd.Connection = con;


               // cmd.Parameters.Add("@quali", SqlDbType.VarChar, 50).Value = TextBox1.Text;
               // cmd.Parameters.Add("@exp", SqlDbType.VarChar, 50).Value = DropDownList5.Text;
                  cmd.CommandText = "select * from [emp reg] ,[post resume] where [post resume].qualification=[emp reg].[qualification required] and [post resume].exp>=[emp reg].[experience required] and [post resume].fun_area=[emp reg].[company type] and [post resume].skill=[emp reg].[skills required]";
                  dr = cmd.ExecuteReader();

               
                    // Response.Redirect("companydetails");  








               

                dr.Close();
                con.Close();
            }
           

        
    }
}
