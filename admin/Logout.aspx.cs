using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            System.Web.Security.FormsAuthentication.SignOut();
            Session["user"] = null;
            Session["category"] = null;
            Response.Redirect("~/Login.aspx", false);
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
}