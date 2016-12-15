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

namespace myjob
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetImageUrl();
            }
        }

      
        
       
        protected void Timer1_Tick1(object sender, EventArgs e)
        {
            SetImageUrl();
        }

        private void SetImageUrl()
        {
            Random _rand = new Random();
            int i = _rand.Next(1, 6);
            Image3.ImageUrl = "~/images/" + i.ToString() + ".jpg";
        }

    }

}
