using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

public partial class teacher_Settings : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {

                GridView1.DataBind();
                ddl();
            }

        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void ddl()
    {
        c.Open();
        SqlDataAdapter adp = new SqlDataAdapter("Select * from Login where Category='teacher' and UserId != '" + Session["user"].ToString() + "'", c);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        ddlTeacherId.DataSource = ds;
        ddlTeacherId.DataTextField = "UserId";
        ddlTeacherId.DataValueField = "UserId";
        ddlTeacherId.DataBind();
        ddlTeacherId.Items.Insert(0, new ListItem("--Select Teacher--", "~Empty~"));



        SqlDataAdapter adp1 = new SqlDataAdapter("Select ID from Quiz where Teacher = '" + Session["user"].ToString() + "'", c);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);

        ddlQuizId.DataSource = ds1;
        ddlQuizId.DataTextField = "ID";
        ddlQuizId.DataValueField = "ID";
        ddlQuizId.DataBind();
        ddlQuizId.Items.Insert(0, new ListItem("--Select Quiz Id--", " "));


        SqlDataAdapter adp2 = new SqlDataAdapter("Select ID from Quiz where Teacher = '" + Session["user"].ToString() + "'", c);
        DataSet ds2 = new DataSet();
        adp2.Fill(ds2);
        ddlQuizId1.DataSource = ds2;
        ddlQuizId1.DataTextField = "ID";
        ddlQuizId1.DataValueField = "ID";
        ddlQuizId1.DataBind();
        ddlQuizId1.Items.Insert(0, new ListItem("--Select Quiz Id--", " "));

        SqlDataAdapter adp3 = new SqlDataAdapter("Select ID from Quiz where Teacher = '" + Session["user"].ToString() + "'", c);
        DataSet ds3 = new DataSet();
        adp3.Fill(ds3);
        ddlQuizId2.DataSource = ds3;
        ddlQuizId2.DataTextField = "ID";
        ddlQuizId2.DataValueField = "ID";
        ddlQuizId2.DataBind();
        ddlQuizId2.Items.Insert(0, new ListItem("--Select Quiz Id--", " "));

        SqlDataAdapter adp4 = new SqlDataAdapter("Select ID from Quiz where Teacher = '" + Session["user"].ToString() + "'", c);
        DataSet ds4 = new DataSet();
        adp4.Fill(ds4);
        ddlQuizId3.DataSource = ds4;
        ddlQuizId3.DataTextField = "ID";
        ddlQuizId3.DataValueField = "ID";
        ddlQuizId3.DataBind();
        ddlQuizId3.Items.Insert(0, new ListItem("--Select Quiz Id--", " "));

        SqlDataAdapter adp5 = new SqlDataAdapter("Select ID from Quiz where Teacher = '" + Session["user"].ToString() + "'", c);
        DataSet ds5 = new DataSet();
        adp5.Fill(ds5);
        ddlQuizId4.DataSource = ds5;
        ddlQuizId4.DataTextField = "ID";
        ddlQuizId4.DataValueField = "ID";
        ddlQuizId4.DataBind();
        ddlQuizId4.Items.Insert(0, new ListItem("--Select Quiz Id--", " "));

        c.Close();

    }
    protected void btnOK_Click(object sender, EventArgs e)
    {
        try
        {

            String TI = ddlTeacherId.SelectedValue;
            String QI = ddlQuizId.SelectedValue;
            SqlCommand cmd1 = new SqlCommand("insert into Authority values('" + QI + TI + "','" + QI + "','" + TI + "')", c);
            c.Open();
            cmd1.ExecuteNonQuery();
            GridView1.DataBind();

            ddlTeacherId1.DataBind();
            GridView5.DataBind();
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong.";
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        c.Open();
        SqlCommand cmd1 = new SqlCommand("Delete From Quiz where ID ='" + ddlQuizId1.SelectedValue + "'", c);
        cmd1.ExecuteNonQuery();
        SqlCommand cmd2 = new SqlCommand("Delete From Authority where QuizId ='" + ddlQuizId1.SelectedValue + "'", c);
        cmd2.ExecuteNonQuery();
        SqlCommand cmd3 = new SqlCommand("Delete From Questions where QuizId ='" + ddlQuizId1.SelectedValue + "'", c);
        cmd3.ExecuteNonQuery();
        SqlCommand cmd4 = new SqlCommand("Delete From Participants where QuizId ='" + ddlQuizId1.SelectedValue + "'", c);
        cmd4.ExecuteNonQuery();
        SqlCommand cmd5 = new SqlCommand("Delete From Instruction where QuizId ='" + ddlQuizId1.SelectedValue + "'", c);
        cmd5.ExecuteNonQuery();
        SqlCommand cmd6 = new SqlCommand("Delete From Options where QuizId ='" + ddlQuizId1.SelectedValue + "'", c);
        cmd6.ExecuteNonQuery();
        SqlCommand cmd7 = new SqlCommand("Delete From OnQuestion where QuizId ='" + ddlQuizId1.SelectedValue + "'", c);
        cmd7.ExecuteNonQuery();
        SqlCommand cmd8 = new SqlCommand("Delete From SbmtQuestions where QuizId ='" + ddlQuizId1.SelectedValue + "'", c);
        cmd8.ExecuteNonQuery();
        SqlDataAdapter adp2 = new SqlDataAdapter("Select ID from Quiz where Teacher = '" + Session["user"].ToString() + "'", c);
        DataSet ds2 = new DataSet();
        adp2.Fill(ds2);
        ddlQuizId1.DataSource = ds2;
        ddlQuizId1.DataTextField = "ID";
        ddlQuizId1.DataValueField = "ID";
        ddlQuizId1.DataBind();
        ddlQuizId1.Items.Insert(0, new ListItem("--Select Quiz Id--", " "));

        c.Close();
    }
    protected void txtAdd_Click(object sender, EventArgs e)
    {
        try
        {


            c.Open();
            SqlCommand cmd4 = new SqlCommand("insert into Instruction values('" + ddlQuizId2.SelectedValue + "','" + txtAddInstructions.Text + "')", c);
            cmd4.ExecuteNonQuery();
            GridView3.DataBind();
            c.Close();
            SqlDataAdapter adp4 = new SqlDataAdapter("Select Instructions from Instruction where QuizId = '" + ddlQuizId3.SelectedValue + "'", c);
            DataSet ds4 = new DataSet();
            adp4.Fill(ds4);
            ddlInstruction.DataSource = ds4;
            ddlInstruction.DataTextField = "Instructions";
            ddlInstruction.DataValueField = "Instructions";
            ddlInstruction.DataBind();
            ddlInstruction.Items.Insert(0, new ListItem("--Select Instruction--", " "));
            GridView3.DataBind();
            GridView4.DataBind();
            txtAddInstructions.Text = "";
        }
        catch (Exception ex)
        {
            lblAIMSG.Text = "Something went wrong.";
        }

    }
    protected void ddlQuizId3_SelectedIndexChanged(object sender, EventArgs e)
    {
        c.Open();
        SqlDataAdapter adp4 = new SqlDataAdapter("Select Instructions from Instruction where QuizId = '" + ddlQuizId3.SelectedValue + "'", c);
        DataSet ds4 = new DataSet();
        adp4.Fill(ds4);
        ddlInstruction.DataSource = ds4;
        ddlInstruction.DataTextField = "Instructions";
        ddlInstruction.DataValueField = "Instructions";
        ddlInstruction.DataBind();
        ddlInstruction.Items.Insert(0, new ListItem("--Select Instruction--", " "));
        c.Close();

    }
    protected void btnDeleteInstruction_Click(object sender, EventArgs e)
    {
        c.Open();
        SqlCommand cmd1 = new SqlCommand("Delete From Instruction where QuizId ='" + ddlQuizId3.SelectedValue + "' and Instructions='"+ddlInstruction.SelectedValue+"'", c);
        cmd1.ExecuteNonQuery();

        SqlDataAdapter adp4 = new SqlDataAdapter("Select Instructions from Instruction where QuizId = '" + ddlQuizId3.SelectedValue + "'", c);
        DataSet ds4 = new DataSet();
        adp4.Fill(ds4);
        ddlInstruction.DataSource = ds4;
        ddlInstruction.DataTextField = "Instructions";
        ddlInstruction.DataValueField = "Instructions";
        ddlInstruction.DataBind();
        ddlInstruction.Items.Insert(0, new ListItem("--Select Instruction--", " "));
        GridView3.DataBind();
        GridView4.DataBind();
        c.Close();
    }
    protected void ddlQuizId4_SelectedIndexChanged(object sender, EventArgs e)
    {
        c.Open();
        SqlDataAdapter adp4 = new SqlDataAdapter("Select TeacherId from Authority where QuizId = '" + ddlQuizId4.SelectedValue + "'", c);
        DataSet ds4 = new DataSet();
        adp4.Fill(ds4);
        ddlTeacherId1.DataSource = ds4;
        ddlTeacherId1.DataTextField = "TeacherId";
        ddlTeacherId1.DataValueField = "TeacherId";
        ddlTeacherId1.DataBind();
        ddlTeacherId1.Items.Insert(0, new ListItem("--Select TeacherId--", " "));
        c.Close();
    }
    protected void btnDeleteAuthorization_Click(object sender, EventArgs e)
    {
        c.Open();
        SqlCommand cmd1 = new SqlCommand("Delete From Authority where QuizId ='" + ddlQuizId4.SelectedValue + "' and TeacherId='" + ddlTeacherId1.SelectedValue + "'", c);
        cmd1.ExecuteNonQuery();
        SqlDataAdapter adp4 = new SqlDataAdapter("Select TeacherId from Authority where QuizId = '" + ddlQuizId4.SelectedValue + "'", c);
        DataSet ds4 = new DataSet();
        adp4.Fill(ds4);
        ddlTeacherId1.DataSource = ds4;
        ddlTeacherId1.DataTextField = "TeacherId";
        ddlTeacherId1.DataValueField = "TeacherId";
        ddlTeacherId1.DataBind();
        ddlTeacherId1.Items.Insert(0, new ListItem("--Select TeacherId--", " "));
        GridView5.DataBind();

        SqlDataAdapter adp = new SqlDataAdapter("Select * from Login where Category='teacher' and UserId != '" + Session["user"].ToString() + "'", c);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        ddlTeacherId.DataSource = ds;
        ddlTeacherId.DataTextField = "UserId";
        ddlTeacherId.DataValueField = "UserId";
        ddlTeacherId.DataBind();
        ddlTeacherId.Items.Insert(0, new ListItem("--Select Teacher--", "~Empty~"));

        GridView1.DataBind();
        c.Close();
    }
}