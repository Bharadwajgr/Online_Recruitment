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
    public partial class Searchjob : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
      

        protected void Button1_Click(object sender, EventArgs e)
        {


            
            try
            {

                SqlCommand cmd = new SqlCommand();
                SqlConnection con = new SqlConnection();
                SqlDataReader dr;
                con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\jobs_dbase.mdf;Integrated Security=True;User Instance=True";
                con.Open();
                cmd.Connection = con;
                cmd.Parameters.Add("@quali", SqlDbType.VarChar, 50).Value = TextBox1.Text;
              
                cmd.CommandText="select * from [emp reg] where [emp reg].[qualification required]=@quali ";

               
            
                
                
                dr = cmd.ExecuteReader();
              
                if (dr.HasRows)
                {

                    Class1.p = TextBox1.Text;
                 Response.Redirect("searchclick.aspx");
                 }
                else
                {
                    sms.Text = "Sorry,your resume has been placed under waiting list";
                }

                dr.Close();
                con.Close();
            }
            catch (Exception ex)
            {
                sms.Text = "Error :" + ex.Message;
            }
        }
        }
    }

