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

namespace myjob
{
    public partial class companyhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
              lbl1.Text = "login Date:"+DateTime.Now.ToLocalTime();
               
                Label1.Text = Label1.Text + Class1.s;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("seekersinbox.aspx");
        }
    }
}
