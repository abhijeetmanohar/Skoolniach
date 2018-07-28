using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

public partial class student_Quiz : System.Web.UI.Page
{

    double totalDays1;
    SqlConnection c = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
    protected void Page_Load(object sender, EventArgs e)
    { 
        try
        {
            if (!IsPostBack)
            {
                    lblError.Text = "";
                    lbl.Visible = false;
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                    lblQuestionId.Visible = false;
                    btnBack.Visible = false;
                    lblQC.Visible = false;
                    txt1.Visible = true;
                    txt2.Visible = true;
                    btnNext.Visible = true;

                    c.Open();
                    String a = DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss tt");
                    SqlDataAdapter adp = new SqlDataAdapter("Select Participants.QuizId from Participants,Quiz where Participants.AdmissionNumber = '" + Session["user"].ToString() + "' and Quiz.EndTime >= '"+DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss tt")+"' ", c);
                    DataSet ds = new DataSet();
                    adp.Fill(ds);
                    ddlQuizId.DataSource = ds;
                    ddlQuizId.DataTextField = "QuizId";
                    ddlQuizId.DataValueField = "QuizId";
                    ddlQuizId.DataBind();
                    ddlQuizId.Items.Insert(0, new ListItem("--Select Quiz Id--", " "));
                   
                }
                

            
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong.";
            Response.Redirect("~/student/Error.aspx");
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        try
        {
            if (lblEndTime.Text != "")
            {
                lblTimer.Text = "";
                String a = DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss tt");
                DateTime a1 = Convert.ToDateTime(a);
                DateTime Endtime = Convert.ToDateTime(lblEndTime.Text);
                TimeSpan difference1 = Endtime.Subtract(a1);
                totalDays1 = difference1.TotalMinutes;
                lblTimer.Text +=Math.Round(totalDays1) + " Minute";
                if(totalDays1 <= 0){
                    lblTimer.Text = "Session Expired";
                    Response.Redirect("~/student/Thankyou.aspx");
                }
                
            }
                      
        }
        catch(Exception ex) {
         
            lblError.Text = "Something went wrong.";
            Response.Redirect("~/student/Error.aspx");
            
        }
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {

        try
        {

            c.Open();
                SqlCommand cmd11 = new SqlCommand("select count(QuestionId)+1 from SbmtQuestions where AdmissionNumber='" + Session["user"].ToString() + "'", c);
                SqlDataReader dr11 = cmd11.ExecuteReader();
                if (dr11.Read())
                {

                    NoOfQuestionsCompleted.Text = dr11[""].ToString();

                }
                dr11.Close();

                String Slash = "/";

                SqlCommand cmd101 = new SqlCommand("Select Answer from Questions where QuestionId='" + lblQuestionId.Text + "' ", c);
                SqlDataReader dr101;
                dr101 = cmd101.ExecuteReader();
                while (dr101.Read())
                {

                    lbl.Text = dr101["Answer"].ToString();


                }
                dr101.Close();

                SqlCommand cmd0 = new SqlCommand("insert into SbmtQuestions values('" + Session["user"].ToString() + Slash + lblQuestionId.Text + "','" + lblQuestionId.Text + "','" + Session["user"].ToString() + "','" + rbl.SelectedValue.ToString() + "','" + lbl.Text + "','','" + lblQuizId.Text + "')", c);
                cmd0.ExecuteNonQuery();
                SqlCommand cmd00 = new SqlCommand("Update SbmtQuestions set Marks =( Case When CorrectOption = OptionSelected Then 1 When  CorrectOption != OptionSelected  Then 0 END)", c);
                cmd00.ExecuteNonQuery();
                SqlCommand cmd000 = new SqlCommand("Update Participants set Score=(select count(Marks) from SbmtQuestions where AdmissionNumber='" + Session["user"].ToString() + "' and Marks=1) where AdmissionNumber='" + Session["user"].ToString() + "'", c);
                cmd000.ExecuteNonQuery();

                SqlCommand cmd = new SqlCommand("Select top 1 Questions.QuestionId from Questions where Questions.QuizId='" + lblQuizId.Text + "' and Questions.QuestionId NOT IN(Select QuestionId from SbmtQuestions where AdmissionNumber='" + Session["user"].ToString() + "' )  order by NEWID()", c);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {

                    lblQuestionId.Text = dr["QuestionId"].ToString();

                }
                dr.Close();


                SqlCommand cmd1 = new SqlCommand("Update OnQuestion set QuestionId='" + lblQuestionId.Text + "',Id ='" + Session["user"].ToString() + Slash + lblQuestionId.Text + "' where AdmissionNumber='" + Session["user"].ToString() + "'", c);
                cmd1.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("Select Options,OptionName from Options where QuestionId='" + lblQuestionId.Text + "'", c);
                SqlDataAdapter adp2 = new SqlDataAdapter(cmd2);
                DataTable dt2 = new DataTable();
                adp2.Fill(dt2);
                rbl.DataSource = dt2;
                rbl.DataTextField = "Options";
                rbl.DataValueField = "OptionName";
                rbl.DataBind();


                SqlCommand cmd3 = new SqlCommand("Select Question from Questions where QuestionId='" + lblQuestionId.Text + "'", c);
                SqlDataReader dr3;
                dr3 = cmd3.ExecuteReader();
                while (dr3.Read())
                {

                    lblQuestion.Text = dr3["Question"].ToString();

                }
                dr3.Close();
                c.Close();
                if (Convert.ToInt32(NoOfQuestionsCompleted.Text) == Convert.ToInt32(TotalQuestions.Text))
                {

                    lblQuestionId.Text = "";
                    lblQuestion.Text = "";
                    rbl.Items.Clear();
                    btnNext.Visible = false;
                    txt1.Visible = false;
                    txt2.Visible = false;
                    lblQC.Visible = true;
                    btnBack.Visible = true;
                    c.Open();
                    SqlCommand cmd20 = new SqlCommand("Update Participants set EndTime ='" +DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss tt")+ "' where AdmissionNumber='" + Session["user"].ToString() + "' ", c);
                    cmd20.ExecuteNonQuery();
                    c.Close();
                }
            c.Close();
        }
        catch (Exception ex)
        {
            if (lblTimer.Text == "Session Expired")
            {
                Response.Redirect("~/student/Thankyou.aspx");
            }
            
            lblError.Text = "Something went wrong.";
            Response.Redirect("~/student/Error.aspx");
        }
    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        try
        {

            Panel1.Visible = false;
            Panel2.Visible = true;
            lblQuizId.Text = ddlQuizId.SelectedValue;
            c.Open();

            SqlCommand cmd7 = new SqlCommand("select count(QuestionId) from Questions where QuizId='" + lblQuizId.Text + "'", c);
            SqlDataReader dr7 = cmd7.ExecuteReader();
            if (dr7.Read())
            {

                TotalQuestions.Text = dr7[""].ToString();
            }
            dr7.Close();
            SqlCommand cmd101 = new SqlCommand("Select Answer from Questions where QuestionId='" + lblQuizId.Text + "' ", c);
            SqlDataReader dr1;
            dr1 = cmd101.ExecuteReader();
            while (dr1.Read())
            {

                lbl.Text = dr1["Answer"].ToString();


            }
            dr1.Close();

            SqlCommand cmd11 = new SqlCommand("select count(QuestionId) from SbmtQuestions where AdmissionNumber='" + Session["user"].ToString() + "'", c);
            SqlDataReader dr11 = cmd11.ExecuteReader();
            if (dr11.Read())
            {

                NoOfQuestionsCompleted.Text = dr11[""].ToString();
            }
            dr11.Close();

            SqlCommand cmd = new SqlCommand("Select top 1 Questions.QuestionId from Questions where Questions.QuizId='" + lblQuizId.Text + "' and Questions.QuestionId NOT IN(Select QuestionId from SbmtQuestions where AdmissionNumber='" + Session["user"].ToString() + "' )  order by NEWID()", c);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                lblQuestionId.Text = dr["QuestionId"].ToString();

            }
            dr.Close();


            String Slash = "/";
            SqlCommand cmd1 = new SqlCommand("insert into OnQuestion values('" + Session["user"].ToString() + "','" + lblQuestionId.Text + "','" + Session["user"].ToString() + Slash + lblQuizId.Text + "','"+lblQuizId.Text+"')", c);
            SqlCommand cmd20 = new SqlCommand("Update Participants set TotalScore ='" + TotalQuestions.Text+ "' where AdmissionNumber='" + Session["user"].ToString() + "' ", c);
            
            cmd1.ExecuteNonQuery();
            cmd20.ExecuteNonQuery();

            SqlCommand cmd2 = new SqlCommand("Select Options,OptionName from Options where QuestionId='" + lblQuestionId.Text + "'", c);
            SqlDataAdapter adp2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            adp2.Fill(dt2);
            rbl.DataSource = dt2;
            rbl.DataTextField = "Options";
            rbl.DataValueField = "OptionName";
            rbl.DataBind();


            SqlCommand cmd3 = new SqlCommand("Select Question from Questions where QuestionId='" + lblQuestionId.Text + "'", c);
            SqlDataReader dr3;
            dr3 = cmd3.ExecuteReader();
            while (dr3.Read())
            {

                lblQuestion.Text = dr3["Question"].ToString();

            }
            dr3.Close();
            SqlCommand cmd8 = new SqlCommand("Select StartTime from Quiz where ID='" + lblQuizId.Text + "'", c);
            SqlDataReader dr8;
            dr8 = cmd8.ExecuteReader();
            while (dr8.Read())
            {

                lblStartTime.Text = dr8["StartTime"].ToString();

            }
            dr8.Close();
            SqlCommand cmd9 = new SqlCommand("Select EndTime from Quiz where ID='" + lblQuizId.Text + "'", c);
            SqlDataReader dr9;
            dr9 = cmd9.ExecuteReader();
            while (dr9.Read())
            {

                lblEndTime.Text = dr9["EndTime"].ToString();

            }
            dr9.Close();
           
           DateTime StartTime = Convert.ToDateTime(lblStartTime.Text);
           DateTime Endtime = Convert.ToDateTime(lblEndTime.Text);
           String a = DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss tt");
           DateTime a1 = Convert.ToDateTime(a);
           TimeSpan difference = Endtime.Subtract(StartTime);
           TimeSpan difference1 = Endtime.Subtract(a1);

            double totalDays = difference.TotalMinutes;
            double totalDays1 = difference1.TotalMinutes;
            TotalTime.Text +=  totalDays + " Minute";
            lblTimer.Text += totalDays1 + " Minute";

            if (NoOfQuestionsCompleted.Text == TotalQuestions.Text)
            {

                lblQuestionId.Text = "";
                lblQuestion.Text = "";
                rbl.Items.Clear();
                btnNext.Visible = false;
                txt1.Visible = false;
                txt2.Visible = false;
                lblQC.Visible = true;
                btnBack.Visible = true;
            }
            c.Close();
        }
        catch (Exception ex)
        {
          
            if (lblTimer.Text == "Session Expired")
                {
                    Response.Redirect("~/student/Thankyou.aspx");
                }
            
            if (NoOfQuestionsCompleted.Text == TotalQuestions.Text)
            {
                
                lblQuestionId.Text = "";
                lblQuestion.Text = "";
                rbl.Items.Clear();
                btnNext.Visible = false;
                txt1.Visible = false;
                txt2.Visible = false;
                lblQC.Visible = true;
                btnBack.Visible = true;
            }
            else
            {
              
                lblError.Text = "Something went wrong.";
                Response.Redirect("~/student/Error.aspx");
                
            }

        }
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/student/Dashboard.aspx");
    }
}
