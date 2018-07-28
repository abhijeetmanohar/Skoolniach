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
                ddlQI.Visible = false;
                Label1.Visible = false;
                btnDelete.Visible = false;
                c.Open();
                SqlDataAdapter adp = new SqlDataAdapter("Select QuizId from Authority where TeacherId = '" + Session["user"].ToString() + "'", c);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                ddlQuizId.DataSource = ds;
                ddlQuizId.DataTextField = "QuizId";
                ddlQuizId.DataValueField = "QuizId";
                ddlQuizId.DataBind();
                ddlQuizId.Items.Insert(0, new ListItem("--Select Quiz Id--", " "));

                c.Close();
            }
        }
        catch (Exception ex)
        {
            lblError.Text ="Something went wrong";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
           
        }
    }
        protected void ddlQuizId_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                ddlQI.Visible = true;
                Label1.Visible = true;
                btnDelete.Visible = true;
                c.Open();
                SqlDataAdapter adp = new SqlDataAdapter("Select QuestionId from Questions where QuizId = '" + ddlQuizId.SelectedValue + "'", c);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                ddlQI.DataSource = ds;
                ddlQI.DataTextField = "QuestionId";
                ddlQI.DataValueField = "QuestionId";
                ddlQI.DataBind();
                ddlQI.Items.Insert(0, new ListItem("--Select Question Id--", " "));
                c.Close();
            }
            catch (Exception ex)
            {

                lblError.Text ="Something went wrong";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
           
            }

        }
  
        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {

                c.Open();

                SqlCommand cmd = new SqlCommand("Delete From Questions where QuizId='" + ddlQuizId.SelectedValue + "' and QuestionId ='" + ddlQI.SelectedValue + "'", c);
                cmd.ExecuteNonQuery();
                SqlCommand cmd1 = new SqlCommand("Delete From Options where QuestionId ='" + ddlQI.SelectedValue + "'", c);
                cmd1.ExecuteNonQuery();
                lblMsg.Text = "Question Deleted Successfully";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
                GridView1.DataBind();
                SqlDataAdapter adp = new SqlDataAdapter("Select QuestionId from Questions where QuizId = '" + ddlQuizId.SelectedValue + "'", c);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                ddlQI.DataSource = ds;
                ddlQI.DataTextField = "QuestionId";
                ddlQI.DataValueField = "QuestionId";
                ddlQI.DataBind();
                ddlQI.Items.Insert(0, new ListItem("--Select Question Id--", " "));
                c.Close();
                GridView1.DataBind();
                GridView2.DataBind();

            }
            catch (Exception ex)
            {
                lblError.Text ="Something went wrong";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
        }
       
}