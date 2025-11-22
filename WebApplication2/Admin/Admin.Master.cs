using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Admin
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["breadCrum"] = "";
            if (Session["admin"] == null)   
            {
                Response.Redirect("../User/Login.aspx");
            }
        }

        protected void lbLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../User/Login.aspx");
        }
    }
}