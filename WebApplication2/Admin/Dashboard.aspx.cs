using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Admin
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["breadCrum"] = "";
                if (Session["admin"] == null)
                {
                    Response.Redirect("../User/Login.aspx");
                }
                else
                {
                    WebApplication2.Connection.DashboardCount dashboard = new Connection.DashboardCount();
                    Session["category"] = dashboard.Count("CATEGORY");
                    Session["product"] = dashboard.Count("PRODUCT");
                    Session["orders"] = dashboard.Count("ORDER");
                    Session["delivered"] = dashboard.Count("DELIVERED");
                    Session["pending"] = dashboard.Count("PENDING");
                    Session["users"] = dashboard.Count("USERS");
                    Session["sold"] = dashboard.Count("SOLDAMOUNT");
                    Session["feedback"] = dashboard.Count("CONTACT");
                }
            }
        }
    }
}