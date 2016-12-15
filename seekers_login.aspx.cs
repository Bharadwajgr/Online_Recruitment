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
    public partial class seekers_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

    
        protected void Button1_Click(object sender, EventArgs e)
        {

            Class1.p = TextBox1.Text;

            try
            {
             
              SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\jobs_dbase.mdf;Integrated Security=True;User Instance=True";
                con.Open();
                SqlCommand cmd = new SqlCommand("select  * from [post resume] where [user name] = @uname and password = @pwd", con);
                cmd.Parameters.Add("@uname", SqlDbType.VarChar, 50).Value = TextBox1.Text;
                cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 50).Value = TextBox2.Text;

               /* Object obj = cmd.ExecuteScalar();
                if (obj == null)
                */
                      
                    SqlDataReader reader=cmd.ExecuteReader();
                    if (!reader.HasRows)
                    {
                        lblsmg.Text = "Sorry! Invalid Login!";
                    }
                    else
                    {
                        Session.Add("uname", TextBox1.Text);
                        lblsmg.Text = " valid Login!";
                        Response.Redirect("seekershome.aspx");

                       // FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, false);

                          

                    }

                    con.Close();
            }
            catch (Exception ex)
            {
                lblsmg.Text = "Error :" + ex.Message;
            }
             



        }




        }
    }

