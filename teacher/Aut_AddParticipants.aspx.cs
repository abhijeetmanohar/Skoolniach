using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class teacher_AddStudentsForQuiz : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                
                ddlQuizId.Visible = true;
                Label1.Visible = false;
                txtSearch.Visible = false;
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
            lblError.Text = "Something went wrong";
        }
    }

    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {
        try
        {

            lblSearchMsg.Text = "";
            GridView1.DataBind();
            c.Open();
            SqlCommand cmd = new SqlCommand("select Class,Name,House,Admission_Num from Students where Name='" + txtSearch.Text + "'", c);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            if (da.Fill(dt) > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                lblSearchMsg.Text = "Record not found";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            c.Close();

        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }

    }
    protected void OnSelectedIndexChanged1(object sender, EventArgs e) //Mark as Absent
    {
        try
        {

            lblClass.Text = GridView1.SelectedRow.Cells[1].Text;
            lblName.Text = GridView1.SelectedRow.Cells[2].Text;
            lblHouse.Text = GridView1.SelectedRow.Cells[3].Text;
            lblAdmissionNo.Text = GridView1.SelectedRow.Cells[4].Text;
            mpe.Show();
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {

              String Slash = "/";
            SqlCommand cmd1 = new SqlCommand("insert into Participants values('" + lblAdmissionNo.Text +Slash+ lblQuizId.Text + "','" + lblQuizId.Text + "','" + lblAdmissionNo.Text + "','" + lblClass.Text + "','" + lblName.Text + "','" + lblHouse.Text + "','0','0')", c);
            c.Open();
            cmd1.ExecuteNonQuery();
            GridView2.DataBind();
            c.Close();

           

        }
        catch (Exception e1)
        {
            lblSearchMsg.Text = "YOU HAVE ALREADY ADDED HIM / HER IN THIS QUIZ.";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
        }
    }
    protected void btnDone_Click(object sender, EventArgs e)
    {
        String QuizID = ddlQuizId.SelectedValue;
        lblQuizId.Text = QuizID;
        ddlQuizId.Visible = false;
        btnDone.Visible = false;
        Label1.Visible = true;
        txtSearch.Visible = true;

        
    }
}