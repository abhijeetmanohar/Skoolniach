using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class teacher_DeleteParticipants : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
        protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                ddlAN.Visible = false;
                Label1.Visible = false;
                btnDelete.Visible = false;
                c.Open();
                SqlDataAdapter adp = new SqlDataAdapter("Select ID from Quiz where Teacher = '" + Session["user"].ToString() + "'", c);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                ddlQuizId.DataSource = ds;
                ddlQuizId.DataTextField = "ID";
                ddlQuizId.DataValueField = "ID";
                ddlQuizId.DataBind();
                ddlQuizId.Items.Insert(0, new ListItem("--Select Quiz Id--", " "));

                c.Close();
            }
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
           
        }
    }
        protected void ddlQuizId_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                ddlAN.Visible = true;
                Label1.Visible = true;
                btnDelete.Visible = true;
                c.Open();
                SqlDataAdapter adp = new SqlDataAdapter("Select AdmissionNumber from Participants where QuizId = '" + ddlQuizId.SelectedValue + "'", c);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                ddlAN.DataSource = ds;
                ddlAN.DataTextField = "AdmissionNumber";
                ddlAN.DataValueField = "AdmissionNumber";
                ddlAN.DataBind();
                ddlAN.Items.Insert(0, new ListItem("--Select Admission Number--", " "));

                c.Close();
            }
            catch (Exception ex)
            {

                lblError.Text = "Something wwent wrong.";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
           
            }

        }
  
        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {

                c.Open();

                SqlCommand cmd = new SqlCommand("Delete From Participants where QuizId='" + ddlQuizId.SelectedValue + "' and AdmissionNumber ='" + ddlAN.SelectedValue + "'", c);
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Participants Deleted Successfully";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
                GridView1.DataBind();
                SqlDataAdapter adp = new SqlDataAdapter("Select AdmissionNumber from Participants where QuizId = '" + ddlQuizId.SelectedValue + "'", c);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                ddlAN.DataSource = ds;
                ddlAN.DataTextField = "AdmissionNumber";
                ddlAN.DataValueField = "AdmissionNumber";
                ddlAN.DataBind();
                ddlAN.Items.Insert(0, new ListItem("--Select Admission Number--", " "));
                c.Close();

            }
            catch (Exception ex)
            {
                lblError.Text = "Something went wrong";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
        }
        protected void btnAQ_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/teacher/Aut_DeleteParticipants.aspx");
        }
}