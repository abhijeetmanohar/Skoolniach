using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class teacher_AddNew : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                txtST.Enabled = false;
                txtET.Enabled = false;
                lblQuizID.Text = GenerateQuizID().ToString();
                c.Open();
                SqlDataAdapter adp = new SqlDataAdapter("Select * from Classes order by Class asc", c);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                ddlClass.DataSource = ds;
                ddlClass.DataTextField = "Class";
                ddlClass.DataValueField = "Class";
                ddlClass.DataBind();
                ddlClass.Items.Insert(0, new ListItem("--Select Class--", " "));
                ddlClass.Items.Insert(1, new ListItem("Junior(6,7,8)", "Junior"));
                ddlClass.Items.Insert(3, new ListItem("Senior(9,10,11,12)", "Senior"));
                c.Close();
            }
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtST.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void Calendar3_SelectionChanged(object sender, EventArgs e)
    {
        txtET.Text = Calendar3.SelectedDate.ToShortDateString();
    }
    public string GenerateQuizID()
    {
        string QuizIDLength = "4";
        string NewQuizID = "";
        string allowedChars = "";
        allowedChars = "1,2,3,4,5,6,7,8,9,0";

        char[] sep = { ',' };
        string[] arr = allowedChars.Split(sep);

        string IDString = "";
        string temp = "";
        Random rand = new Random();
        for (int i = 0; i < Convert.ToInt32(QuizIDLength); i++)
        {
            temp = arr[rand.Next(0, arr.Length)];
            IDString += temp;
            NewQuizID = IDString;
        }

        return NewQuizID;

        
    }
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        try
        {
            String a = "(";
            String b = ")";
            int zero =00;
            c.Open();
            SqlCommand cmd = new SqlCommand("insert into Quiz values('" + txtQN.Text + a + lblQuizID.Text + b + "','" + lblQuizID.Text + "','" + txtQN.Text + "','" + ddlType.SelectedValue + "','" + Session["user"].ToString() + "', '" + ddlClass.SelectedValue + "','Y', '" + txtDes.Text + "', '" + txtST.Text + ' ' + ddlSThh.SelectedValue + ':' + ddlSTmm.SelectedValue +':'+zero+" "+ ddlSTtt.SelectedValue+"', '" + txtET.Text + ' ' + ddlEThh.SelectedValue + ':' + ddlETmm.SelectedValue +':'+zero+" "+ ddlETtt.SelectedValue +"')", c);
            cmd.ExecuteNonQuery();
            Response.Redirect("~/teacher/AddQuestions.aspx");
            
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }


 
}