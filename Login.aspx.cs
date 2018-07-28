using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
public partial class Login : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source=LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
               
            }
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }

    protected void Submit(object sender, EventArgs e)
    {
        try
        {
            String user = txtUserId.Value;
            String category = ddlCategory.SelectedValue;
            c.Open();
            SqlCommand cmd = new SqlCommand("select * from Login where UserId='" + txtUserId.Value + "' and Category='" + ddlCategory.SelectedValue + "'", c);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (dr["Password"].ToString() == txtPassword.Value)
                {

                    if (ddlCategory.SelectedValue == "Admin")
                    {
                        Session["user"] = txtUserId.Value;
                        Session["category"] = txtUserId.Value;
                        Response.Redirect("~/admin/Dashboard.aspx");


                    }
                    if (ddlCategory.SelectedValue == "Vice Principal")
                    {
                        Session["user"] = txtUserId.Value;
                        Session["category"] = txtUserId.Value;
                        Response.Redirect("~/vice/Dashboard.aspx");

                    }
                    if (ddlCategory.SelectedValue == "Teacher")
                    {
                        Session["user"] = txtUserId.Value;
                        Session["category"] = txtUserId.Value;
                        Response.Redirect("~/teacher/Dashboard.aspx");

                    }
                    if (ddlCategory.SelectedValue == "Student")
                    {
                        Session["user"] = txtUserId.Value;
                        Session["category"] = txtUserId.Value;
                        Response.Redirect("~/student/Dashboard.aspx");

                    }
                }
                else
                {
                    lblMessage.Text = "Invalid User Id or Password entered";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);

                }
            }
            else
            {
                lblMessage.Text = "Invalid User Idd or Password entered";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }

    protected void lblSignup_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("~/TeacherSignup.aspx");
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }
}