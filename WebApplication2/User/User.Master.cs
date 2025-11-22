using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.User
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Request.Url.AbsoluteUri.ToString().Contains("Default.aspx"))
            {
                form1.Attributes.Add("class", "sub_page");
            }
            else
            {
                // If the page is other than Menu remove the attributes for the class
                form1.Attributes.Remove("class");
                // Load the control
                Control sliderUserController = (Control)Page.LoadControl("SliderUserController.ascx");
                // Add the control to the panel
                panelSliderUC.Controls.Add(sliderUserController);
            }

            if (Session["userId"] != null)
            {
                lbLoginOrLogout.Text = "Logout";
                WebApplication2.Connection.Utils utils = new WebApplication2.Connection.Utils();
                Session["cartCount"] = utils.cartCount(Convert.ToInt32(Session["userId"]));
            }
            else
            {
                lbLoginOrLogout.Text = "Login";
                Session["cartCount"] = 0;
            }
        }

        protected void lbLoginOrLogout_Click(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }

        protected void lbRegisterOrProfile_Click(object sender, EventArgs e)
        {
            if (Session["userId"] != null)
            {
                lbRegisterOrProfile.ToolTip = "User Profile";
                Response.Redirect("Profile.aspx");
            }
            else
            {
                lbRegisterOrProfile.ToolTip = "User Registration";
                Response.Redirect("Registeration.aspx");
            }
        }
    }
}