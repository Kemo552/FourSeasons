using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication2.User
{
    public partial class Menu : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getCategories();
                getProducts();
            }
        }

        private void getProducts()
        {
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("Product_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "SELECT");
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            rProducts.DataSource = dt;
            rProducts.DataBind();
        }

        private void getCategories()
        {
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("Category_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "ACTIVECAT");
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            rCategories.DataSource = dt;
            rCategories.DataBind();
        }

        protected void rProducts_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (Session["userId"] != null)
            {
                bool isCartItemUpdated = false;
                int i = isItemExistInCart(Convert.ToInt32(e.CommandArgument));
                if (i == 0)
                {
                    // adding new item in cart
                    con = new SqlConnection(Connection.GetConnectionString());
                    cmd = new SqlCommand("Cart_Crud", con);
                    cmd.Parameters.AddWithValue("@Action", "INSERT");
                    cmd.Parameters.AddWithValue("@UserId", Session["userId"]);
                    cmd.Parameters.AddWithValue("@ProductId", e.CommandArgument);
                    cmd.Parameters.AddWithValue("@Quantity", 1);
                    cmd.CommandType = CommandType.StoredProcedure;

                    try {
                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('Error -'" + ex.Message + ");</script>");
                    }
                    finally
                    {
                        con.Close();
                    }
                }
                else
                {
                    // Adding existing item to cart
                    WebApplication2.Connection.Utils utils = new WebApplication2.Connection.Utils();
                    isCartItemUpdated = utils.updateCartQuantity(i+1,  Convert.ToInt32(e.CommandArgument), Convert.ToInt32(Session["userId"]));
                }
                lblMsg.Visible = true;
                lblMsg.Text = "Item added successfully to your cart";
                lblMsg.CssClass = "alert alert-success";
                Response.AddHeader("REFRESH", "1;URL=Cart.aspx"); // refreshing the page after 1 second of adding an item
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        int isItemExistInCart(int productId)
        {
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("Cart_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "GETBYID");
            cmd.Parameters.AddWithValue("@UserId", Session["userId"]);
            cmd.Parameters.AddWithValue("@ProductId", productId);
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);

            int quantity = 0;
            if (dt.Rows.Count > 0)
            {
                quantity = Convert.ToInt32(dt.Rows[0]["Quantity"]);
            }
            return quantity;
        }


    }
}