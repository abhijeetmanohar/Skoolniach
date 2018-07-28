using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Arrangement : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                btnProceed.Visible = true;
                btnManual.Visible = false;
                btnAutomatic.Visible = false;
                ddlDay.Visible = false;
                btnSaturday.Visible = false;
                lblmsgs.Visible = false;
                string v = Request.QueryString["SelectedValue"];
                lblDay.Text = v;
                btnProceed.Style["BACKGROUND-COLOR"] = "rgba(207, 208, 57, 0.30)";
                btnAutomatic.Style["BACKGROUND-COLOR"] = "rgba(207, 208, 57, 0.30)";
                btnManual.Style["BACKGROUND-COLOR"] = "rgba(207, 208, 57, 0.30)";
                txtSearch.Style["BACKGROUND-COLOR"] = "rgba(207, 208, 57, 0.30)";
                lblDayArr.Text = DateTime.Now.ToString("dddddddddd");
                lblDateArr.Text = DateTime.Now.ToString();
                /// lblDateArr.Text = DateTime.Today.Month.ToString();
                lblMessage.Text = "";
                if (lblDayArr.Text != "Saturday" && lblDayArr.Text != "Sunday")
                {
                    panel2.Visible = false;
                    lblDay.Text = lblDayArr.Text;
                }
                else
                {
                    if (lblDayArr.Text == "Saturday")
                    {
                        panel1.Visible = false;
                        panel2.Visible = true;

                        ddlDay.Visible = true;
                        btnSaturday.Visible = true;

                    }
                    else
                    {
                        if (lblDayArr.Text == "Sunday")
                        {
                            panel1.Visible = false;
                            panel2.Visible = true;

                            lblmsgs.Visible = true;
                        }

                    }

                }
            }
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }

    protected void btnSaturday_Click(object sender, EventArgs e)
    {
        try
        {
            lblDay.Text = ddlDay.SelectedValue;
            panel1.Visible = true;
            panel2.Visible = false;
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

            lblId.Text = GridView1.SelectedRow.Cells[1].Text;
            lblName.Text = GridView1.SelectedRow.Cells[2].Text;
            lblInitial.Text = GridView1.SelectedRow.Cells[3].Text;
            lblSubject.Text = GridView1.SelectedRow.Cells[4].Text;
            mpe.Show();
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }

    protected void btnArrangement_Click(object sender, EventArgs e)
    {
        try
        {

            String str = "A";
            String str1 = "~Empty~";
            String str2 = "On";
            String str3 = "-";
            SqlCommand cmd = new SqlCommand("Update " + lblDay.Text + " set Attendance = '" + str + "' where Id = '" + lblId.Text + "' ", c);
            c.Open();
            cmd.ExecuteNonQuery();
            c.Close();
            SqlCommand cmd1 = new SqlCommand("insert into Arrangement values('" + lblId.Text + "'+'" + str3 + "'+'" + lblDayArr.Text + "','" + lblId.Text + "','" + lblSubject.Text + "','" + lblDayArr.Text + "','" + GridView1.SelectedRow.Cells[5].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[6].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[7].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[8].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[9].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[10].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[11].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[12].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[13].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[14].Text + "','" + str1 + "','" + str1 + "','" + str2 + "')", c);
            c.Open();
            cmd1.ExecuteNonQuery();
            c.Close();

            GridView2.DataBind();

        }
        catch (Exception e1)
        {
            lblMessage.Text = "YOU HAVE ALREADY MARKED AS ABSENT.";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
        }

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("~/vice/Dashboard.aspx");
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void btnAutomatic_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("~/vice/Arrangement_Automatic.aspx");
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void btnManual_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("~/vice/Arrangement_Manual.aspx");
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void btnProceed_Click(object sender, EventArgs e)
    {
        try
        {
            btnProceed.Visible = false;
            btnAutomatic.Visible = true;
            btnManual.Visible = true;
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

            lblMessage.Text = "";
            GridView1.DataBind();
            c.Open();
            SqlCommand cmd = new SqlCommand("select Id,Name,Initial,Subject,ZeroPeriod,FirstPeriod,SecondPeriod,ThirdPeriod,FourthPeriod,FifthPeriod,SixthPeriod,SeventhPeriod,EighthPeriod,NinethPeriod from " + lblDay.Text + "  where Initial='" + txtSearch.Text + "'", c);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            if (da.Fill(dt) > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                lblMessage.Text = "Record not found";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            c.Close();

        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }

    }
}

