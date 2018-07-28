using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class teacher_AddQuestions : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {

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
        }
    }
    public string GenerateQuestionId()
    {
        string QuestionIdLength = "4";
        string NewQuestionId = "";
        string allowedChars = "";
        allowedChars = "1,2,3,4,5,6,7,8,9,0";

        char[] sep = { ',' };
        string[] arr = allowedChars.Split(sep);

        string IDString = "";
        string temp = "";
        Random rand = new Random();
        for (int i = 0; i < Convert.ToInt32(QuestionIdLength); i++)
        {
            temp = arr[rand.Next(0, arr.Length)];
            IDString += temp;
            NewQuestionId = IDString;
        }

        return NewQuestionId;


    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            
            c.Open();

            SqlCommand cmd = new SqlCommand("insert into Questions values('" + GenerateQuestionId().ToString() + "','" + ddlQuizId.SelectedValue + "','" + txtQuestion.Text + "','" + RadioButtonList1.SelectedItem.ToString() + "','"+ddlType.SelectedValue+"')", c);
            SqlCommand cmd1 = new SqlCommand("insert into Options values('" + GenerateQuestionId().ToString() + "','" + txtA.Text + "','A','" + ddlQuizId.SelectedValue + "','" + ddlType.SelectedValue + "')", c);
            SqlCommand cmd2 = new SqlCommand("insert into Options values('" + GenerateQuestionId().ToString() + "','" + txtB.Text + "','B' ,'" + ddlQuizId.SelectedValue + "','" + ddlType.SelectedValue + "')", c);
            SqlCommand cmd3 = new SqlCommand("insert into Options values('" + GenerateQuestionId().ToString() + "','" + txtC.Text + "','C','" + ddlQuizId.SelectedValue + "','" + ddlType.SelectedValue + "')", c);
            SqlCommand cmd4 = new SqlCommand("insert into Options values('" + GenerateQuestionId().ToString() + "','" + txtD.Text + "','D','" + ddlQuizId.SelectedValue + "','" + ddlType.SelectedValue + "')", c);
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            cmd3.ExecuteNonQuery();
            cmd4.ExecuteNonQuery();
            txtQuestion.Text = "";
            txtA.Text = "";
            txtB.Text = "";
            txtC.Text = "";
            txtD.Text = "";
            lblMsg.Text = "Question Added Successfully";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);

            c.Close();
            GridView1.DataBind();
            GridView2.DataBind();

        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
        }

    }
    protected void btnAQ_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/teacher/Aut_AddQuestions.aspx");
    }
  
}