using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class ArrangementReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {try
        {
        lblARDay.Text = DateTime.Now.ToString("dddddddddd");
        lblARDate.Text = DateTime.Now.ToString();
         }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {try
        {
        Response.Redirect("~/vice/Dashboard.aspx");
         }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void btnPrint_Click(object sender, EventArgs e)
    {
        try
        {
        lblARDay.Text = DateTime.Now.ToString("dddddddddd");
        lblARDate.Text = DateTime.Now.ToString();
             }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
   
}