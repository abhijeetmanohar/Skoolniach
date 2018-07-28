using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Drawing.Imaging;
using System.Drawing;

public partial class teacher_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection c = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");

        try
        {
            if (!IsPostBack)
            {
                Panel1.Visible = false;

                c.Open();
                SqlCommand cmd = new SqlCommand("select ZeroPeriod from Monday where Id='" + Session["user"].ToString() + "'", c);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (dr["ZeroPeriod"].ToString() == "Free")
                    {
                        lblMsg.Text = "You're not assigned as a class teacher.";
                        ddlPeriod.Visible = false;
                        lblP.Visible = false;
                        MSA.Visible = false;
                    }
                    else
                    {
                       
                        lblClass.Text = dr["ZeroPeriod"].ToString();
                        
                    }

                }
                c.Close();
                
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("~/teacher/Dashboard.aspx");
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Something went wrong";
        }
    }
    
    protected void Save_Click(object sender, EventArgs e)
    {
        try
        {
            lblPeriod.Text = ddlPeriod.Text;
            ddlPeriod.Visible = false;
            MSA.Visible = false;
            Panel1.Visible = true;
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }

    }
}