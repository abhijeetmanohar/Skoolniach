using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

public partial class admin_adminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

            if (Session["user"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            if (Session["user"] != null)
            {

                name.Text = "Hi! " + Session["user"].ToString();
            }
        
       
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Logout.aspx");
        
       
    }

}
