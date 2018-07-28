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

                ddlDay.Visible = false;
                btnSaturday.Visible = false;
                lblmsgs.Visible = false;
                string v = Request.QueryString["SelectedValue"];
                lblDay.Text = v;
                lblDayArr.Text = DateTime.Now.ToString("dddddddddd");
                lblDateArr.Text = DateTime.Now.ToString();
                /// lblDateArr.Text = DateTime.Today.Month.ToString();
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
                            btnMakeArrangement.Visible = false;
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

            mpe.Show();
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void OnSelectedIndexChanged2(object sender, EventArgs e)
    {
        try
        {
            mpe2.Enabled = true;
            if (GridView2.SelectedRow.Cells[1].Text == "Off")
            {
                mpe2.Enabled = false;
            }
            else
            {
                mpe2.Show();


                lblId2.Text = GridView2.SelectedRow.Cells[4].Text;
                lblZeroP.Text = GridView2.SelectedRow.Cells[6].Text;
                lblFirstP.Text = GridView2.SelectedRow.Cells[7].Text;
                lblSecondP.Text = GridView2.SelectedRow.Cells[8].Text;
                lblThirdP.Text = GridView2.SelectedRow.Cells[9].Text;
                lblFourthP.Text = GridView2.SelectedRow.Cells[10].Text;
                lblFifthP.Text = GridView2.SelectedRow.Cells[11].Text;
                lblSixthP.Text = GridView2.SelectedRow.Cells[12].Text;
                lblSeventhP.Text = GridView2.SelectedRow.Cells[13].Text;
                lblEighthP.Text = GridView2.SelectedRow.Cells[14].Text;
                lblNinethP.Text = GridView2.SelectedRow.Cells[15].Text;
                ZPD();
                FPD();
                SPD();
                TPD();
                FOPD();
                FIPD();
                SIPD();
                SEPD();
                EPD();
                NPD();
            }
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }

    private void ZPD()
    {
        ddlIdZPD.Enabled = true;
        DataTable dt = new DataTable();
        string id = string.Empty;
        string name = string.Empty;
        string newName = string.Empty;

        try
        {
            c.Open();
            string sqlStatement = "Select " + lblDay.Text + ".Id,No_Of_Arrangement.Week from " + lblDay.Text + ",No_Of_Arrangement where  " + lblDay.Text + ".ZeroPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT ZPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "') and No_Of_Arrangement.Day < 3 order by case when  " + lblDay.Text + ".Subject =  '" + GridView2.SelectedRow.Cells[5].Text + "' then 1 else 2 end," + lblDay.Text + ".Subject ";
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlStatement, c);
            sqlDa.Fill(dt);
            ddlIdZPD.Items.Clear();
            ddlIdZPD.Items.Add(new ListItem("--Select Teacher--", "~Empty~"));
            if (dt.Rows.Count > 0)
            {

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    id = dt.Rows[i]["Id"].ToString();
                    name = dt.Rows[i]["Week"].ToString();
                    newName = id + " ---- " + name;

                    ddlIdZPD.DataBind();
                    ddlIdZPD.Items.Add(new ListItem(newName, id));
                }
            }
            if (lblZeroP.Text == "Free")
            {
                ddlIdZPD.Enabled = false;
            }
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            c.Close();
        }

    }
    private void FPD()
    {
        ddlIdFPD.Enabled = true;
        DataTable dt = new DataTable();
        string id = string.Empty;
        string name = string.Empty;
        string newName = string.Empty;

        try
        {
            c.Open();
            string sqlStatement = "Select " + lblDay.Text + ".Id,No_Of_Arrangement.Week from " + lblDay.Text + ",No_Of_Arrangement where  " + lblDay.Text + ".FirstPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT FPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "') and " + lblDay.Text + ".Id NOT IN(Select " + lblDay.Text + ".Id from " + lblDay.Text + " where  " + lblDay.Text + ".ZeroPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT ZPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "')) and No_Of_Arrangement.Day < 3 order by case when  " + lblDay.Text + ".Subject =  '" + GridView2.SelectedRow.Cells[5].Text + "' then 1 else 2 end," + lblDay.Text + ".Subject ";
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlStatement, c);
            sqlDa.Fill(dt);
            ddlIdFPD.Items.Clear();
            ddlIdFPD.Items.Add(new ListItem("--Select Teacher--", "~Empty~"));
            if (dt.Rows.Count > 0)
            {

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    id = dt.Rows[i]["Id"].ToString();
                    name = dt.Rows[i]["Week"].ToString();
                    newName = id + " ---- " + name;

                    ddlIdFPD.DataBind();
                    ddlIdFPD.Items.Add(new ListItem(newName, id));
                }
            }
            if (lblFirstP.Text == "Free")
            {
                ddlIdFPD.Enabled = false;
            }
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            c.Close();
        }

    }

    private void SPD()
    {
        ddlIdSPD.Enabled = true;
        DataTable dt = new DataTable();
        string id = string.Empty;
        string name = string.Empty;
        string newName = string.Empty;

        try
        {
            c.Open();
            string sqlStatement = "Select " + lblDay.Text + ".Id,No_Of_Arrangement.Week from " + lblDay.Text + ",No_Of_Arrangement where  " + lblDay.Text + ".SecondPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT SPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "') and " + lblDay.Text + ".Id NOT IN(Select " + lblDay.Text + ".Id from " + lblDay.Text + " where  " + lblDay.Text + ".FirstPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT FPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "'))  and No_Of_Arrangement.Day < 3 order by case when  " + lblDay.Text + ".Subject =  '" + GridView2.SelectedRow.Cells[5].Text + "' then 1 else 2 end," + lblDay.Text + ".Subject ";
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlStatement, c);
            sqlDa.Fill(dt);
            ddlIdSPD.Items.Clear();
            ddlIdSPD.Items.Add(new ListItem("--Select Teacher--", "~Empty~"));
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    id = dt.Rows[i]["Id"].ToString();
                    name = dt.Rows[i]["Week"].ToString();
                    newName = id + " ---- " + name;

                    ddlIdSPD.DataBind();
                    ddlIdSPD.Items.Add(new ListItem(newName, id));
                }
            }
            if (lblSecondP.Text == "Free")
            {
                ddlIdSPD.Enabled = false;
            }


        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            c.Close();
        }
    }
    private void TPD()
    {
        ddlIdTPD.Enabled = true;
        DataTable dt = new DataTable();
        string id = string.Empty;
        string name = string.Empty;
        string newName = string.Empty;

        try
        {
            c.Open();
            string sqlStatement = "Select " + lblDay.Text + ".Id,No_Of_Arrangement.Week from " + lblDay.Text + ",No_Of_Arrangement where  " + lblDay.Text + ".ThirdPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT TPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "') and " + lblDay.Text + ".Id NOT IN(Select " + lblDay.Text + ".Id from " + lblDay.Text + " where  " + lblDay.Text + ".SecondPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT SPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "')) and No_Of_Arrangement.Day < 3 order by case when  " + lblDay.Text + ".Subject =  '" + GridView2.SelectedRow.Cells[5].Text + "' then 1 else 2 end," + lblDay.Text + ".Subject ";
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlStatement, c);
            sqlDa.Fill(dt);
            ddlIdTPD.Items.Clear();
            ddlIdTPD.Items.Add(new ListItem("--Select Teacher--", "~Empty~"));
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    id = dt.Rows[i]["Id"].ToString();
                    name = dt.Rows[i]["Week"].ToString();
                    newName = id + " ---- " + name;

                    ddlIdTPD.DataBind();

                    ddlIdTPD.Items.Add(new ListItem(newName, id));
                }
            }
            if (lblThirdP.Text == "Free")
            {
                ddlIdTPD.Enabled = false;
            }
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            c.Close();
        }
    }
    private void FOPD()
    {
        ddlIdFOPD.Enabled = true;
        DataTable dt = new DataTable();
        string id = string.Empty;
        string name = string.Empty;
        string newName = string.Empty;

        try
        {
            c.Open();
            string sqlStatement = "Select " + lblDay.Text + ".Id,No_Of_Arrangement.Week from " + lblDay.Text + ",No_Of_Arrangement where  " + lblDay.Text + ".FourthPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT FOPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "') and " + lblDay.Text + ".Id NOT IN(Select " + lblDay.Text + ".Id from " + lblDay.Text + " where  " + lblDay.Text + ".ThirdPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT TPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "')) and No_Of_Arrangement.Day < 3 order by case when  " + lblDay.Text + ".Subject =  '" + GridView2.SelectedRow.Cells[5].Text + "' then 1 else 2 end," + lblDay.Text + ".Subject ";
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlStatement, c);
            sqlDa.Fill(dt);
            ddlIdFOPD.Items.Clear();
            ddlIdFOPD.Items.Add(new ListItem("--Select Teacher--", "~Empty~"));
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    id = dt.Rows[i]["Id"].ToString();
                    name = dt.Rows[i]["Week"].ToString();
                    newName = id + " ---- " + name;

                    ddlIdFOPD.DataBind();

                    ddlIdFOPD.Items.Add(new ListItem(newName, id));
                }
            }
            if (lblFourthP.Text == "Free")
            {
                ddlIdFOPD.Enabled = false;
            }

        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            c.Close();
        }
    }
    private void FIPD()
    {
        ddlIdFIPD.Enabled = true;
        DataTable dt = new DataTable();
        string id = string.Empty;
        string name = string.Empty;
        string newName = string.Empty;

        try
        {
            c.Open();
            string sqlStatement = "Select " + lblDay.Text + ".Id,No_Of_Arrangement.Week from " + lblDay.Text + ",No_Of_Arrangement where  " + lblDay.Text + ".FifthPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT FIPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "') and " + lblDay.Text + ".Id NOT IN(Select " + lblDay.Text + ".Id from " + lblDay.Text + " where  " + lblDay.Text + ".FourthPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT FOPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "')) and No_Of_Arrangement.Day < 3 order by case when  " + lblDay.Text + ".Subject =  '" + GridView2.SelectedRow.Cells[5].Text + "' then 1 else 2 end," + lblDay.Text + ".Subject ";
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlStatement, c);
            sqlDa.Fill(dt);
            ddlIdFIPD.Items.Clear();
            ddlIdFIPD.Items.Add(new ListItem("--Select Teacher--", "~Empty~"));
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    id = dt.Rows[i]["Id"].ToString();
                    name = dt.Rows[i]["Week"].ToString();
                    newName = id + " ---- " + name;

                    ddlIdFIPD.DataBind();

                    ddlIdFIPD.Items.Add(new ListItem(newName, id));
                }
            }
            if (lblFifthP.Text == "Free")
            {
                ddlIdFIPD.Enabled = false;
            }
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            c.Close();
        }
    }
    private void SIPD()
    {
        ddlIdSIPD.Enabled = true;
        DataTable dt = new DataTable();
        string id = string.Empty;
        string name = string.Empty;
        string newName = string.Empty;

        try
        {
            c.Open();
            string sqlStatement = "Select " + lblDay.Text + ".Id,No_Of_Arrangement.Week from " + lblDay.Text + ",No_Of_Arrangement where  " + lblDay.Text + ".SixthPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT SIPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "') and " + lblDay.Text + ".Id NOT IN(Select " + lblDay.Text + ".Id from " + lblDay.Text + " where  " + lblDay.Text + ".FifthPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT FIPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "')) and No_Of_Arrangement.Day < 3 order by case when  " + lblDay.Text + ".Subject =  '" + GridView2.SelectedRow.Cells[5].Text + "' then 1 else 2 end," + lblDay.Text + ".Subject ";
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlStatement, c);
            sqlDa.Fill(dt);
            ddlIdSIPD.Items.Clear();
            ddlIdSIPD.Items.Add(new ListItem("--Select Teacher--", "~Empty~"));
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    id = dt.Rows[i]["Id"].ToString();
                    name = dt.Rows[i]["Week"].ToString();
                    newName = id + " ---- " + name;

                    ddlIdSIPD.DataBind();

                    ddlIdSIPD.Items.Add(new ListItem(newName, id));
                }
            }
            if (lblSixthP.Text == "Free")
            {
                ddlIdSIPD.Enabled = false;
            }

        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            c.Close();
        }
    }
    private void SEPD()
    {
        ddlIdSEPD.Enabled = true;
        DataTable dt = new DataTable();
        string id = string.Empty;
        string name = string.Empty;
        string newName = string.Empty;

        try
        {
            c.Open();
            string sqlStatement = "Select " + lblDay.Text + ".Id,No_Of_Arrangement.Week from " + lblDay.Text + ",No_Of_Arrangement where  " + lblDay.Text + ".SeventhPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT SEPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "') and " + lblDay.Text + ".Id NOT IN(Select " + lblDay.Text + ".Id from " + lblDay.Text + " where  " + lblDay.Text + ".SixthPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT SIPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "')) and No_Of_Arrangement.Day < 3 order by case when  " + lblDay.Text + ".Subject =  '" + GridView2.SelectedRow.Cells[5].Text + "' then 1 else 2 end," + lblDay.Text + ".Subject ";
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlStatement, c);
            sqlDa.Fill(dt);
            ddlIdSEPD.Items.Clear();
            ddlIdSEPD.Items.Add(new ListItem("--Select Teacher--", "~Empty~"));
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    id = dt.Rows[i]["Id"].ToString();
                    name = dt.Rows[i]["Week"].ToString();
                    newName = id + " ---- " + name;
                    ddlIdSEPD.DataBind();
                    ddlIdSEPD.Items.Add(new ListItem(newName, id));
                }
            }
            if (lblSeventhP.Text == "Free")
            {
                ddlIdSEPD.Enabled = false;
            }

        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            c.Close();
        }
    }
    private void EPD()
    {
        ddlIdEPD.Enabled = true;
        DataTable dt = new DataTable();
        string id = string.Empty;
        string name = string.Empty;
        string newName = string.Empty;

        try
        {
            c.Open();
            string sqlStatement = "Select " + lblDay.Text + ".Id,No_Of_Arrangement.Week from " + lblDay.Text + ",No_Of_Arrangement where  " + lblDay.Text + ".EighthPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT EPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "') and " + lblDay.Text + ".Id NOT IN(Select " + lblDay.Text + ".Id from " + lblDay.Text + " where  " + lblDay.Text + ".SeventhPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT SEPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "')) and No_Of_Arrangement.Day < 3 order by  case when  " + lblDay.Text + ".Subject =  '" + GridView2.SelectedRow.Cells[5].Text + "' then 1 else 2 end," + lblDay.Text + ".Subject ";
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlStatement, c);
            sqlDa.Fill(dt);
            ddlIdEPD.Items.Clear();
            ddlIdEPD.Items.Add(new ListItem("--Select Teacher--", "~Empty~"));
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    id = dt.Rows[i]["Id"].ToString();
                    name = dt.Rows[i]["Week"].ToString();
                    newName = id + " ---- " + name;
                    ddlIdEPD.DataBind();
                    ddlIdEPD.Items.Add(new ListItem(newName, id));
                }
            }
            if (lblEighthP.Text == "Free")
            {
                ddlIdEPD.Enabled = false;
            }
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            c.Close();
        }
    }
    private void NPD()
    {
        ddlIdNPD.Enabled = true;
        DataTable dt = new DataTable();
        string id = string.Empty;
        string name = string.Empty;
        string newName = string.Empty;

        try
        {
            if (lblNinethP.Text == "Free")
            {
                ddlIdNPD.Enabled = false;
            }
            if (lblNinethP.Text == "X")
            {
                ddlIdNPD.Enabled = false;
            }
            c.Open();
            string sqlStatement = "Select " + lblDay.Text + ".Id,No_Of_Arrangement.Week from " + lblDay.Text + ",No_Of_Arrangement where  " + lblDay.Text + ".NinethPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT NPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "') and " + lblDay.Text + ".Id NOT IN(Select " + lblDay.Text + ".Id from " + lblDay.Text + " where  " + lblDay.Text + ".EighthPeriod='Free' and  " + lblDay.Text + ".Attendance='P' and  " + lblDay.Text + ".Id=No_Of_Arrangement.TeacherId and " + lblDay.Text + ".Id NOT IN(SELECT EPDTArrName FROM Arrangement where Daay='" + lblDayArr.Text + "')) and No_Of_Arrangement.Day < 3 order by case when  " + lblDay.Text + ".Subject =  '" + GridView2.SelectedRow.Cells[5].Text + "' then 1 else 2 end," + lblDay.Text + ".Subject ";
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlStatement, c);
            sqlDa.Fill(dt);
            ddlIdNPD.Items.Clear();
            ddlIdNPD.Items.Add(new ListItem("--Select Teacher--", "~Empty~"));
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    id = dt.Rows[i]["Id"].ToString();
                    name = dt.Rows[i]["Week"].ToString();
                    newName = id + " ---- " + name;
                    ddlIdNPD.DataBind();
                    ddlIdNPD.Items.Add(new ListItem(newName, id));
                }
            }


        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Fetch Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            c.Close();
        }
    }
    protected void btnMakeArrangement_Click(object sender, EventArgs e)
    {
        try
        {
            c.Open();
            String Bracket1 = " (";
            String Bracket2 = ")";
            String Off = "Off";

            String month = DateTime.Now.ToString("MMMMMMMMMMMMM");
            if (month == "January")
            {
                SqlCommand cmdjan0 = new SqlCommand("Update  No_Of_Arrangement set January = January + 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdjan1 = new SqlCommand("Update  No_Of_Arrangement set January = January + 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdjan2 = new SqlCommand("Update  No_Of_Arrangement set January = January + 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdjan3 = new SqlCommand("Update  No_Of_Arrangement set January = January + 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdjan4 = new SqlCommand("Update  No_Of_Arrangement set January = January + 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdjan5 = new SqlCommand("Update  No_Of_Arrangement set January = January + 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdjan6 = new SqlCommand("Update  No_Of_Arrangement set January = January + 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdjan7 = new SqlCommand("Update  No_Of_Arrangement set January = January + 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdjan8 = new SqlCommand("Update  No_Of_Arrangement set January = January + 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdjan9 = new SqlCommand("Update  No_Of_Arrangement set January = January + 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdjan0.ExecuteNonQuery();
                cmdjan1.ExecuteNonQuery();
                cmdjan2.ExecuteNonQuery();
                cmdjan3.ExecuteNonQuery();
                cmdjan4.ExecuteNonQuery();
                cmdjan5.ExecuteNonQuery();
                cmdjan6.ExecuteNonQuery();
                cmdjan7.ExecuteNonQuery();
                cmdjan8.ExecuteNonQuery();
                cmdjan9.ExecuteNonQuery();
            }
            if (month == "February")
            {
                SqlCommand cmdfeb0 = new SqlCommand("Update  No_Of_Arrangement set February = February + 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdfeb1 = new SqlCommand("Update  No_Of_Arrangement set February = February + 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdfeb2 = new SqlCommand("Update  No_Of_Arrangement set February = February + 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdfeb3 = new SqlCommand("Update  No_Of_Arrangement set February = February + 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdfeb4 = new SqlCommand("Update  No_Of_Arrangement set February = February + 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdfeb5 = new SqlCommand("Update  No_Of_Arrangement set February = February + 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdfeb6 = new SqlCommand("Update  No_Of_Arrangement set February = February + 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdfeb7 = new SqlCommand("Update  No_Of_Arrangement set February = February + 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdfeb8 = new SqlCommand("Update  No_Of_Arrangement set February = February + 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdfeb9 = new SqlCommand("Update  No_Of_Arrangement set February = February + 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdfeb0.ExecuteNonQuery();
                cmdfeb1.ExecuteNonQuery();
                cmdfeb2.ExecuteNonQuery();
                cmdfeb3.ExecuteNonQuery();
                cmdfeb4.ExecuteNonQuery();
                cmdfeb5.ExecuteNonQuery();
                cmdfeb6.ExecuteNonQuery();
                cmdfeb7.ExecuteNonQuery();
                cmdfeb8.ExecuteNonQuery();
                cmdfeb9.ExecuteNonQuery();
            }
            if (month == "March")
            {
                SqlCommand cmdmar0 = new SqlCommand("Update  No_Of_Arrangement set March = March + 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdmar1 = new SqlCommand("Update  No_Of_Arrangement set March = March + 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdmar2 = new SqlCommand("Update  No_Of_Arrangement set March = March + 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdmar3 = new SqlCommand("Update  No_Of_Arrangement set March = March + 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdmar4 = new SqlCommand("Update  No_Of_Arrangement set March = March + 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdmar5 = new SqlCommand("Update  No_Of_Arrangement set March = March + 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdmar6 = new SqlCommand("Update  No_Of_Arrangement set March = March + 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdmar7 = new SqlCommand("Update  No_Of_Arrangement set March = March + 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdmar8 = new SqlCommand("Update  No_Of_Arrangement set March = March + 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdmar9 = new SqlCommand("Update  No_Of_Arrangement set March = March + 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdmar0.ExecuteNonQuery();
                cmdmar1.ExecuteNonQuery();
                cmdmar2.ExecuteNonQuery();
                cmdmar3.ExecuteNonQuery();
                cmdmar4.ExecuteNonQuery();
                cmdmar5.ExecuteNonQuery();
                cmdmar6.ExecuteNonQuery();
                cmdmar7.ExecuteNonQuery();
                cmdmar8.ExecuteNonQuery();
                cmdmar9.ExecuteNonQuery();
            }
            if (month == "April")
            {
                SqlCommand cmdapr0 = new SqlCommand("Update  No_Of_Arrangement set April = April + 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdapr1 = new SqlCommand("Update  No_Of_Arrangement set April = April + 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdapr2 = new SqlCommand("Update  No_Of_Arrangement set April = April + 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdapr3 = new SqlCommand("Update  No_Of_Arrangement set April = April + 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdapr4 = new SqlCommand("Update  No_Of_Arrangement set April = April + 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdapr5 = new SqlCommand("Update  No_Of_Arrangement set April = April + 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdapr6 = new SqlCommand("Update  No_Of_Arrangement set April = April + 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdapr7 = new SqlCommand("Update  No_Of_Arrangement set April = April + 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdapr8 = new SqlCommand("Update  No_Of_Arrangement set April = April + 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdapr9 = new SqlCommand("Update  No_Of_Arrangement set April = April + 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdapr0.ExecuteNonQuery();
                cmdapr1.ExecuteNonQuery();
                cmdapr2.ExecuteNonQuery();
                cmdapr3.ExecuteNonQuery();
                cmdapr4.ExecuteNonQuery();
                cmdapr5.ExecuteNonQuery();
                cmdapr6.ExecuteNonQuery();
                cmdapr7.ExecuteNonQuery();
                cmdapr8.ExecuteNonQuery();
                cmdapr9.ExecuteNonQuery();
            }
            if (month == "May")
            {
                SqlCommand cmdmay0 = new SqlCommand("Update  No_Of_Arrangement set May = May + 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdmay1 = new SqlCommand("Update  No_Of_Arrangement set May = May + 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdmay2 = new SqlCommand("Update  No_Of_Arrangement set May = May + 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdmay3 = new SqlCommand("Update  No_Of_Arrangement set May = May + 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdmay4 = new SqlCommand("Update  No_Of_Arrangement set May = May + 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdmay5 = new SqlCommand("Update  No_Of_Arrangement set May = May + 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdmay6 = new SqlCommand("Update  No_Of_Arrangement set May = May + 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdmay7 = new SqlCommand("Update  No_Of_Arrangement set May = May + 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdmay8 = new SqlCommand("Update  No_Of_Arrangement set May = May + 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdmay9 = new SqlCommand("Update  No_Of_Arrangement set May = May + 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdmay0.ExecuteNonQuery();
                cmdmay1.ExecuteNonQuery();
                cmdmay2.ExecuteNonQuery();
                cmdmay3.ExecuteNonQuery();
                cmdmay4.ExecuteNonQuery();
                cmdmay5.ExecuteNonQuery();
                cmdmay6.ExecuteNonQuery();
                cmdmay7.ExecuteNonQuery();
                cmdmay8.ExecuteNonQuery();
                cmdmay9.ExecuteNonQuery();
            }
            if (month == "June")
            {
                SqlCommand cmdjun0 = new SqlCommand("Update  No_Of_Arrangement set June = June + 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdjun1 = new SqlCommand("Update  No_Of_Arrangement set June = June + 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdjun2 = new SqlCommand("Update  No_Of_Arrangement set June = June + 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdjun3 = new SqlCommand("Update  No_Of_Arrangement set June = June + 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdjun4 = new SqlCommand("Update  No_Of_Arrangement set June = June + 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdjun5 = new SqlCommand("Update  No_Of_Arrangement set June = June + 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdjun6 = new SqlCommand("Update  No_Of_Arrangement set June = June + 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdjun7 = new SqlCommand("Update  No_Of_Arrangement set June = June + 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdjun8 = new SqlCommand("Update  No_Of_Arrangement set June = June + 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdjun9 = new SqlCommand("Update  No_Of_Arrangement set June = June + 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdjun0.ExecuteNonQuery();
                cmdjun1.ExecuteNonQuery();
                cmdjun2.ExecuteNonQuery();
                cmdjun3.ExecuteNonQuery();
                cmdjun4.ExecuteNonQuery();
                cmdjun5.ExecuteNonQuery();
                cmdjun6.ExecuteNonQuery();
                cmdjun7.ExecuteNonQuery();
                cmdjun8.ExecuteNonQuery();
                cmdjun9.ExecuteNonQuery();
            }
            if (month == "July")
            {
                SqlCommand cmdjul0 = new SqlCommand("Update  No_Of_Arrangement set July = July + 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdjul1 = new SqlCommand("Update  No_Of_Arrangement set July = July + 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdjul2 = new SqlCommand("Update  No_Of_Arrangement set July = July + 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdjul3 = new SqlCommand("Update  No_Of_Arrangement set July = July + 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdjul4 = new SqlCommand("Update  No_Of_Arrangement set July = July + 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdjul5 = new SqlCommand("Update  No_Of_Arrangement set July = July + 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdjul6 = new SqlCommand("Update  No_Of_Arrangement set July = July + 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdjul7 = new SqlCommand("Update  No_Of_Arrangement set July = July + 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdjul8 = new SqlCommand("Update  No_Of_Arrangement set July = July + 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdjul9 = new SqlCommand("Update  No_Of_Arrangement set July = July + 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdjul0.ExecuteNonQuery();
                cmdjul1.ExecuteNonQuery();
                cmdjul2.ExecuteNonQuery();
                cmdjul3.ExecuteNonQuery();
                cmdjul4.ExecuteNonQuery();
                cmdjul5.ExecuteNonQuery();
                cmdjul6.ExecuteNonQuery();
                cmdjul7.ExecuteNonQuery();
                cmdjul8.ExecuteNonQuery();
                cmdjul9.ExecuteNonQuery();
            }
            if (month == "August")
            {
                SqlCommand cmdaug0 = new SqlCommand("Update  No_Of_Arrangement set August = August + 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdaug1 = new SqlCommand("Update  No_Of_Arrangement set August = August + 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdaug2 = new SqlCommand("Update  No_Of_Arrangement set August = August + 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdaug3 = new SqlCommand("Update  No_Of_Arrangement set August = August + 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdaug4 = new SqlCommand("Update  No_Of_Arrangement set August = August + 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdaug5 = new SqlCommand("Update  No_Of_Arrangement set August = August + 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdaug6 = new SqlCommand("Update  No_Of_Arrangement set August = August + 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdaug7 = new SqlCommand("Update  No_Of_Arrangement set August = August + 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdaug8 = new SqlCommand("Update  No_Of_Arrangement set August = August + 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdaug9 = new SqlCommand("Update  No_Of_Arrangement set August = August + 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdaug0.ExecuteNonQuery();
                cmdaug1.ExecuteNonQuery();
                cmdaug2.ExecuteNonQuery();
                cmdaug3.ExecuteNonQuery();
                cmdaug4.ExecuteNonQuery();
                cmdaug5.ExecuteNonQuery();
                cmdaug6.ExecuteNonQuery();
                cmdaug7.ExecuteNonQuery();
                cmdaug8.ExecuteNonQuery();
                cmdaug9.ExecuteNonQuery();
            }
            if (month == "September")
            {
                SqlCommand cmdsept0 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdsept1 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdsept2 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdsept3 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdsept4 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdsept5 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdsept6 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdsept7 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdsept8 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdsept9 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdsept0.ExecuteNonQuery();
                cmdsept1.ExecuteNonQuery();
                cmdsept2.ExecuteNonQuery();
                cmdsept3.ExecuteNonQuery();
                cmdsept4.ExecuteNonQuery();
                cmdsept5.ExecuteNonQuery();
                cmdsept6.ExecuteNonQuery();
                cmdsept7.ExecuteNonQuery();
                cmdsept8.ExecuteNonQuery();
                cmdsept9.ExecuteNonQuery();
            }
            if (month == "October")
            {
                SqlCommand cmdoct0 = new SqlCommand("Update  No_Of_Arrangement set October = October + 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdoct1 = new SqlCommand("Update  No_Of_Arrangement set October = October + 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdoct2 = new SqlCommand("Update  No_Of_Arrangement set October = October + 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdoct3 = new SqlCommand("Update  No_Of_Arrangement set October = October + 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdoct4 = new SqlCommand("Update  No_Of_Arrangement set October = October + 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdoct5 = new SqlCommand("Update  No_Of_Arrangement set October = October + 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdoct6 = new SqlCommand("Update  No_Of_Arrangement set October = October + 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdoct7 = new SqlCommand("Update  No_Of_Arrangement set October = October + 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdoct8 = new SqlCommand("Update  No_Of_Arrangement set October = October + 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdoct9 = new SqlCommand("Update  No_Of_Arrangement set October = October + 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdoct0.ExecuteNonQuery();
                cmdoct1.ExecuteNonQuery();
                cmdoct2.ExecuteNonQuery();
                cmdoct3.ExecuteNonQuery();
                cmdoct4.ExecuteNonQuery();
                cmdoct5.ExecuteNonQuery();
                cmdoct6.ExecuteNonQuery();
                cmdoct7.ExecuteNonQuery();
                cmdoct8.ExecuteNonQuery();
                cmdoct9.ExecuteNonQuery();

            }
            if (month == "November")
            {
                SqlCommand cmdnov0 = new SqlCommand("Update  No_Of_Arrangement set November = November + 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdnov1 = new SqlCommand("Update  No_Of_Arrangement set November = November + 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdnov2 = new SqlCommand("Update  No_Of_Arrangement set November = November + 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdnov3 = new SqlCommand("Update  No_Of_Arrangement set November = November + 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdnov4 = new SqlCommand("Update  No_Of_Arrangement set November = November + 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdnov5 = new SqlCommand("Update  No_Of_Arrangement set November = November + 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdnov6 = new SqlCommand("Update  No_Of_Arrangement set November = November + 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdnov7 = new SqlCommand("Update  No_Of_Arrangement set November = November + 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdnov8 = new SqlCommand("Update  No_Of_Arrangement set November = November + 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdnov9 = new SqlCommand("Update  No_Of_Arrangement set November = November + 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdnov0.ExecuteNonQuery();
                cmdnov1.ExecuteNonQuery();
                cmdnov2.ExecuteNonQuery();
                cmdnov3.ExecuteNonQuery();
                cmdnov4.ExecuteNonQuery();
                cmdnov5.ExecuteNonQuery();
                cmdnov6.ExecuteNonQuery();
                cmdnov7.ExecuteNonQuery();
                cmdnov8.ExecuteNonQuery();
                cmdnov9.ExecuteNonQuery();
            }
            if (month == "December")
            {
                SqlCommand cmddec0 = new SqlCommand("Update  No_Of_Arrangement set December = December + 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmddec1 = new SqlCommand("Update  No_Of_Arrangement set December = December + 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmddec2 = new SqlCommand("Update  No_Of_Arrangement set December = December + 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmddec3 = new SqlCommand("Update  No_Of_Arrangement set December = December + 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmddec4 = new SqlCommand("Update  No_Of_Arrangement set December = December + 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmddec5 = new SqlCommand("Update  No_Of_Arrangement set December = December + 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmddec6 = new SqlCommand("Update  No_Of_Arrangement set December = December + 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmddec7 = new SqlCommand("Update  No_Of_Arrangement set December = December + 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmddec8 = new SqlCommand("Update  No_Of_Arrangement set December = December + 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmddec9 = new SqlCommand("Update  No_Of_Arrangement set December = December + 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmddec0.ExecuteNonQuery();
                cmddec1.ExecuteNonQuery();
                cmddec2.ExecuteNonQuery();
                cmddec3.ExecuteNonQuery();
                cmddec4.ExecuteNonQuery();
                cmddec5.ExecuteNonQuery();
                cmddec6.ExecuteNonQuery();
                cmddec7.ExecuteNonQuery();
                cmddec8.ExecuteNonQuery();
                cmddec9.ExecuteNonQuery();
            }
            SqlCommand cmd = new SqlCommand("Update  Arrangement set On_Off='" + Off + "' , ZeroP_Arr = '" + ddlIdZPD.Text + Bracket1 + lblZeroP.Text + Bracket2 + "' ,ZPDTArrName = '" + ddlIdZPD.Text + "' , FirstP_Arr = '" + ddlIdFPD.Text + Bracket1 + lblFirstP.Text + Bracket2 + "' ,FPDTArrName = '" + ddlIdFPD.Text + "' , SecondP_Arr ='" + ddlIdSPD.Text + Bracket1 + lblSecondP.Text + Bracket2 + "',SPDTArrName ='" + ddlIdSPD.Text + "', ThirdP_Arr ='" + ddlIdTPD.Text + Bracket1 + lblThirdP.Text + Bracket2 + "',TPDTArrName ='" + ddlIdTPD.Text + "', FourthP_Arr ='" + ddlIdFOPD.Text + Bracket1 + lblFourthP.Text + Bracket2 + "',FOPDTArrName ='" + ddlIdFOPD.Text + "', FifthP_Arr ='" + ddlIdFIPD.Text + Bracket1 + lblFifthP.Text + Bracket2 + "' ,FIPDTArrName ='" + ddlIdFIPD.Text + "',SixthP_Arr ='" + ddlIdSIPD.Text + Bracket1 + lblSixthP.Text + Bracket2 + "',SIPDTArrName ='" + ddlIdSIPD.Text + "', SeventhP_Arr ='" + ddlIdSEPD.Text + Bracket1 + lblSeventhP.Text + Bracket2 + "',SEPDTArrName ='" + ddlIdSEPD.Text + "', EighthP_Arr ='" + ddlIdEPD.Text + Bracket1 + lblEighthP.Text + Bracket2 + "',EPDTArrName ='" + ddlIdEPD.Text + "', NinethP_Arr ='" + ddlIdNPD.Text + Bracket1 + lblNinethP.Text + Bracket2 + "',NPDTArrName ='" + ddlIdNPD.Text + "' where AbsentTeacherId = '" + lblId2.Text + "' ", c);
            SqlCommand cmd0 = new SqlCommand("Update  No_Of_Arrangement set Week = Week + 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
            SqlCommand cmd1 = new SqlCommand("Update  No_Of_Arrangement set Week = Week + 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
            SqlCommand cmd2 = new SqlCommand("Update  No_Of_Arrangement set Week = Week + 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
            SqlCommand cmd3 = new SqlCommand("Update  No_Of_Arrangement set Week = Week + 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
            SqlCommand cmd4 = new SqlCommand("Update  No_Of_Arrangement set Week = Week + 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
            SqlCommand cmd5 = new SqlCommand("Update  No_Of_Arrangement set Week = Week + 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
            SqlCommand cmd6 = new SqlCommand("Update  No_Of_Arrangement set Week = Week + 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
            SqlCommand cmd7 = new SqlCommand("Update  No_Of_Arrangement set Week = Week + 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
            SqlCommand cmd8 = new SqlCommand("Update  No_Of_Arrangement set Week = Week + 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
            SqlCommand cmd9 = new SqlCommand("Update  No_Of_Arrangement set Week = Week + 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

            SqlCommand cmd010 = new SqlCommand("Update  No_Of_Arrangement set Year = Year + 1 where TeacherId ='" + ddlIdZPD.Text + "' ", c);
            SqlCommand cmd10 = new SqlCommand("Update  No_Of_Arrangement set Year = Year + 1 where TeacherId ='" + ddlIdFPD.Text + "' ", c);
            SqlCommand cmd11 = new SqlCommand("Update  No_Of_Arrangement set Year = Year + 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
            SqlCommand cmd12 = new SqlCommand("Update  No_Of_Arrangement set Year = Year + 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
            SqlCommand cmd13 = new SqlCommand("Update  No_Of_Arrangement set Year = Year + 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
            SqlCommand cmd14 = new SqlCommand("Update  No_Of_Arrangement set Year = Year + 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
            SqlCommand cmd15 = new SqlCommand("Update  No_Of_Arrangement set Year = Year + 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
            SqlCommand cmd16 = new SqlCommand("Update  No_Of_Arrangement set Year = Year + 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
            SqlCommand cmd17 = new SqlCommand("Update  No_Of_Arrangement set Year = Year + 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
            SqlCommand cmd18 = new SqlCommand("Update  No_Of_Arrangement set Year = Year + 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

            SqlCommand cmd019 = new SqlCommand("Update  No_Of_Arrangement set Day = Day + 1 where TeacherId ='" + ddlIdZPD.Text + "' ", c);
            SqlCommand cmd19 = new SqlCommand("Update  No_Of_Arrangement set Day = Day + 1 where TeacherId ='" + ddlIdFPD.Text + "' ", c);
            SqlCommand cmd20 = new SqlCommand("Update  No_Of_Arrangement set Day = Day + 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
            SqlCommand cmd21 = new SqlCommand("Update  No_Of_Arrangement set Day = Day + 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
            SqlCommand cmd22 = new SqlCommand("Update  No_Of_Arrangement set Day = Day + 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
            SqlCommand cmd23 = new SqlCommand("Update  No_Of_Arrangement set Day = Day + 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
            SqlCommand cmd24 = new SqlCommand("Update  No_Of_Arrangement set Day = Day + 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
            SqlCommand cmd25 = new SqlCommand("Update  No_Of_Arrangement set Day = Day + 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
            SqlCommand cmd26 = new SqlCommand("Update  No_Of_Arrangement set Day = Day + 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
            SqlCommand cmd27 = new SqlCommand("Update  No_Of_Arrangement set Day = Day + 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

            cmd.ExecuteNonQuery();
            cmd0.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            cmd3.ExecuteNonQuery();
            cmd4.ExecuteNonQuery();
            cmd5.ExecuteNonQuery();
            cmd6.ExecuteNonQuery();
            cmd7.ExecuteNonQuery();
            cmd8.ExecuteNonQuery();
            cmd9.ExecuteNonQuery();
            cmd010.ExecuteNonQuery();
            cmd10.ExecuteNonQuery();
            cmd11.ExecuteNonQuery();
            cmd12.ExecuteNonQuery();
            cmd13.ExecuteNonQuery();
            cmd14.ExecuteNonQuery();
            cmd15.ExecuteNonQuery();
            cmd16.ExecuteNonQuery();
            cmd17.ExecuteNonQuery();
            cmd18.ExecuteNonQuery();
            cmd019.ExecuteNonQuery();
            cmd19.ExecuteNonQuery();
            cmd20.ExecuteNonQuery();
            cmd21.ExecuteNonQuery();
            cmd22.ExecuteNonQuery();
            cmd23.ExecuteNonQuery();
            cmd24.ExecuteNonQuery();
            cmd25.ExecuteNonQuery();
            cmd26.ExecuteNonQuery();
            cmd27.ExecuteNonQuery();
            GridView2.DataBind();
            GridView3.DataBind();
            c.Close();
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
            SqlCommand cmd1 = new SqlCommand("insert into Arrangement values('" + lblId.Text + "'+'" + str3 + "'+'" + lblDayArr.Text + "','" + lblId.Text + "','" + lblDayArr.Text + "','" + GridView1.SelectedRow.Cells[5].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[6].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[7].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[8].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[9].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[10].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[11].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[12].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[13].Text + "','" + str1 + "','" + str1 + "','" + GridView1.SelectedRow.Cells[14].Text + "','" + str1 + "','" + str1 + "','" + str2 + "')", c);
            c.Open();
            cmd1.ExecuteNonQuery();
            c.Close();

            GridView2.DataBind();

        }
        catch (Exception e1)
        {

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
        }

    }
    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {

            string P_id = this.GridView2.Rows[e.RowIndex].Cells[4].Text;
            string Day = this.GridView2.Rows[e.RowIndex].Cells[3].Text;
            c.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Arrangement WHERE AbsentTeacherId='" + P_id + "' And Daay='" + Day + "' ", c);
            cmd.ExecuteNonQuery();
            String month = DateTime.Now.ToString("MMMMMMMMMMMMM");
            if (month == "January")
            {
                SqlCommand cmdjan0 = new SqlCommand("Update  No_Of_Arrangement set January = January - 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdjan1 = new SqlCommand("Update  No_Of_Arrangement set January = January - 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdjan2 = new SqlCommand("Update  No_Of_Arrangement set January = January - 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdjan3 = new SqlCommand("Update  No_Of_Arrangement set January = January - 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdjan4 = new SqlCommand("Update  No_Of_Arrangement set January = January - 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdjan5 = new SqlCommand("Update  No_Of_Arrangement set January = January - 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdjan6 = new SqlCommand("Update  No_Of_Arrangement set January = January - 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdjan7 = new SqlCommand("Update  No_Of_Arrangement set January = January - 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdjan8 = new SqlCommand("Update  No_Of_Arrangement set January = January - 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdjan9 = new SqlCommand("Update  No_Of_Arrangement set January = January - 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdjan0.ExecuteNonQuery();
                cmdjan1.ExecuteNonQuery();
                cmdjan2.ExecuteNonQuery();
                cmdjan3.ExecuteNonQuery();
                cmdjan4.ExecuteNonQuery();
                cmdjan5.ExecuteNonQuery();
                cmdjan6.ExecuteNonQuery();
                cmdjan7.ExecuteNonQuery();
                cmdjan8.ExecuteNonQuery();
                cmdjan9.ExecuteNonQuery();
            }
            if (month == "February")
            {
                SqlCommand cmdfeb0 = new SqlCommand("Update  No_Of_Arrangement set February = February - 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdfeb1 = new SqlCommand("Update  No_Of_Arrangement set February = February - 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdfeb2 = new SqlCommand("Update  No_Of_Arrangement set February = February - 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdfeb3 = new SqlCommand("Update  No_Of_Arrangement set February = February - 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdfeb4 = new SqlCommand("Update  No_Of_Arrangement set February = February - 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdfeb5 = new SqlCommand("Update  No_Of_Arrangement set February = February - 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdfeb6 = new SqlCommand("Update  No_Of_Arrangement set February = February - 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdfeb7 = new SqlCommand("Update  No_Of_Arrangement set February = February - 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdfeb8 = new SqlCommand("Update  No_Of_Arrangement set February = February - 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdfeb9 = new SqlCommand("Update  No_Of_Arrangement set February = February - 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdfeb0.ExecuteNonQuery();
                cmdfeb1.ExecuteNonQuery();
                cmdfeb2.ExecuteNonQuery();
                cmdfeb3.ExecuteNonQuery();
                cmdfeb4.ExecuteNonQuery();
                cmdfeb5.ExecuteNonQuery();
                cmdfeb6.ExecuteNonQuery();
                cmdfeb7.ExecuteNonQuery();
                cmdfeb8.ExecuteNonQuery();
                cmdfeb9.ExecuteNonQuery();
            }
            if (month == "March")
            {
                SqlCommand cmdmar0 = new SqlCommand("Update  No_Of_Arrangement set March = March - 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdmar1 = new SqlCommand("Update  No_Of_Arrangement set March = March - 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdmar2 = new SqlCommand("Update  No_Of_Arrangement set March = March - 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdmar3 = new SqlCommand("Update  No_Of_Arrangement set March = March - 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdmar4 = new SqlCommand("Update  No_Of_Arrangement set March = March - 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdmar5 = new SqlCommand("Update  No_Of_Arrangement set March = March - 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdmar6 = new SqlCommand("Update  No_Of_Arrangement set March = March - 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdmar7 = new SqlCommand("Update  No_Of_Arrangement set March = March - 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdmar8 = new SqlCommand("Update  No_Of_Arrangement set March = March - 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdmar9 = new SqlCommand("Update  No_Of_Arrangement set March = March - 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdmar0.ExecuteNonQuery();
                cmdmar1.ExecuteNonQuery();
                cmdmar2.ExecuteNonQuery();
                cmdmar3.ExecuteNonQuery();
                cmdmar4.ExecuteNonQuery();
                cmdmar5.ExecuteNonQuery();
                cmdmar6.ExecuteNonQuery();
                cmdmar7.ExecuteNonQuery();
                cmdmar8.ExecuteNonQuery();
                cmdmar9.ExecuteNonQuery();
            }
            if (month == "April")
            {
                SqlCommand cmdapr0 = new SqlCommand("Update  No_Of_Arrangement set April = April - 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdapr1 = new SqlCommand("Update  No_Of_Arrangement set April = April - 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdapr2 = new SqlCommand("Update  No_Of_Arrangement set April = April - 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdapr3 = new SqlCommand("Update  No_Of_Arrangement set April = April - 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdapr4 = new SqlCommand("Update  No_Of_Arrangement set April = April - 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdapr5 = new SqlCommand("Update  No_Of_Arrangement set April = April - 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdapr6 = new SqlCommand("Update  No_Of_Arrangement set April = April - 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdapr7 = new SqlCommand("Update  No_Of_Arrangement set April = April - 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdapr8 = new SqlCommand("Update  No_Of_Arrangement set April = April - 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdapr9 = new SqlCommand("Update  No_Of_Arrangement set April = April - 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdapr0.ExecuteNonQuery();
                cmdapr1.ExecuteNonQuery();
                cmdapr2.ExecuteNonQuery();
                cmdapr3.ExecuteNonQuery();
                cmdapr4.ExecuteNonQuery();
                cmdapr5.ExecuteNonQuery();
                cmdapr6.ExecuteNonQuery();
                cmdapr7.ExecuteNonQuery();
                cmdapr8.ExecuteNonQuery();
                cmdapr9.ExecuteNonQuery();
            }
            if (month == "May")
            {
                SqlCommand cmdmay0 = new SqlCommand("Update  No_Of_Arrangement set May = May - 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdmay1 = new SqlCommand("Update  No_Of_Arrangement set May = May - 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdmay2 = new SqlCommand("Update  No_Of_Arrangement set May = May - 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdmay3 = new SqlCommand("Update  No_Of_Arrangement set May = May - 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdmay4 = new SqlCommand("Update  No_Of_Arrangement set May = May - 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdmay5 = new SqlCommand("Update  No_Of_Arrangement set May = May - 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdmay6 = new SqlCommand("Update  No_Of_Arrangement set May = May - 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdmay7 = new SqlCommand("Update  No_Of_Arrangement set May = May - 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdmay8 = new SqlCommand("Update  No_Of_Arrangement set May = May - 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdmay9 = new SqlCommand("Update  No_Of_Arrangement set May = May - 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);


                cmdmay0.ExecuteNonQuery();
                cmdmay1.ExecuteNonQuery();
                cmdmay2.ExecuteNonQuery();
                cmdmay3.ExecuteNonQuery();
                cmdmay4.ExecuteNonQuery();
                cmdmay5.ExecuteNonQuery();
                cmdmay6.ExecuteNonQuery();
                cmdmay7.ExecuteNonQuery();
                cmdmay8.ExecuteNonQuery();
                cmdmay9.ExecuteNonQuery();
            }
            if (month == "June")
            {
                SqlCommand cmdjun0 = new SqlCommand("Update  No_Of_Arrangement set June = June - 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdjun1 = new SqlCommand("Update  No_Of_Arrangement set June = June - 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdjun2 = new SqlCommand("Update  No_Of_Arrangement set June = June - 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdjun3 = new SqlCommand("Update  No_Of_Arrangement set June = June - 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdjun4 = new SqlCommand("Update  No_Of_Arrangement set June = June - 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdjun5 = new SqlCommand("Update  No_Of_Arrangement set June = June - 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdjun6 = new SqlCommand("Update  No_Of_Arrangement set June = June - 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdjun7 = new SqlCommand("Update  No_Of_Arrangement set June = June - 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdjun8 = new SqlCommand("Update  No_Of_Arrangement set June = June - 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdjun9 = new SqlCommand("Update  No_Of_Arrangement set June = June - 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdjun0.ExecuteNonQuery();
                cmdjun1.ExecuteNonQuery();
                cmdjun2.ExecuteNonQuery();
                cmdjun3.ExecuteNonQuery();
                cmdjun4.ExecuteNonQuery();
                cmdjun5.ExecuteNonQuery();
                cmdjun6.ExecuteNonQuery();
                cmdjun7.ExecuteNonQuery();
                cmdjun8.ExecuteNonQuery();
                cmdjun9.ExecuteNonQuery();
            }
            if (month == "July")
            {
                SqlCommand cmdjul0 = new SqlCommand("Update  No_Of_Arrangement set July = July - 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdjul1 = new SqlCommand("Update  No_Of_Arrangement set July = July - 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdjul2 = new SqlCommand("Update  No_Of_Arrangement set July = July - 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdjul3 = new SqlCommand("Update  No_Of_Arrangement set July = July - 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdjul4 = new SqlCommand("Update  No_Of_Arrangement set July = July - 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdjul5 = new SqlCommand("Update  No_Of_Arrangement set July = July - 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdjul6 = new SqlCommand("Update  No_Of_Arrangement set July = July - 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdjul7 = new SqlCommand("Update  No_Of_Arrangement set July = July - 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdjul8 = new SqlCommand("Update  No_Of_Arrangement set July = July - 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdjul9 = new SqlCommand("Update  No_Of_Arrangement set July = July - 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdjul0.ExecuteNonQuery();
                cmdjul1.ExecuteNonQuery();
                cmdjul2.ExecuteNonQuery();
                cmdjul3.ExecuteNonQuery();
                cmdjul4.ExecuteNonQuery();
                cmdjul5.ExecuteNonQuery();
                cmdjul6.ExecuteNonQuery();
                cmdjul7.ExecuteNonQuery();
                cmdjul8.ExecuteNonQuery();
                cmdjul9.ExecuteNonQuery();
            }
            if (month == "August")
            {
                SqlCommand cmdaug0 = new SqlCommand("Update  No_Of_Arrangement set August = August - 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdaug1 = new SqlCommand("Update  No_Of_Arrangement set August = August - 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdaug2 = new SqlCommand("Update  No_Of_Arrangement set August = August - 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdaug3 = new SqlCommand("Update  No_Of_Arrangement set August = August - 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdaug4 = new SqlCommand("Update  No_Of_Arrangement set August = August - 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdaug5 = new SqlCommand("Update  No_Of_Arrangement set August = August - 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdaug6 = new SqlCommand("Update  No_Of_Arrangement set August = August - 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdaug7 = new SqlCommand("Update  No_Of_Arrangement set August = August - 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdaug8 = new SqlCommand("Update  No_Of_Arrangement set August = August - 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdaug9 = new SqlCommand("Update  No_Of_Arrangement set August = August - 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdaug0.ExecuteNonQuery();
                cmdaug1.ExecuteNonQuery();
                cmdaug2.ExecuteNonQuery();
                cmdaug3.ExecuteNonQuery();
                cmdaug4.ExecuteNonQuery();
                cmdaug5.ExecuteNonQuery();
                cmdaug6.ExecuteNonQuery();
                cmdaug7.ExecuteNonQuery();
                cmdaug8.ExecuteNonQuery();
                cmdaug9.ExecuteNonQuery();
            }
            if (month == "September")
            {
                SqlCommand cmdsept0 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdsept1 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdsept2 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdsept3 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdsept4 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdsept5 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdsept6 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdsept7 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdsept8 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdsept9 = new SqlCommand("Update  No_Of_Arrangement set September = September + 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdsept0.ExecuteNonQuery();
                cmdsept1.ExecuteNonQuery();
                cmdsept2.ExecuteNonQuery();
                cmdsept3.ExecuteNonQuery();
                cmdsept4.ExecuteNonQuery();
                cmdsept5.ExecuteNonQuery();
                cmdsept6.ExecuteNonQuery();
                cmdsept7.ExecuteNonQuery();
                cmdsept8.ExecuteNonQuery();
                cmdsept9.ExecuteNonQuery();
            }
            if (month == "October")
            {
                SqlCommand cmdoct0 = new SqlCommand("Update  No_Of_Arrangement set October = October - 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdoct1 = new SqlCommand("Update  No_Of_Arrangement set October = October - 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdoct2 = new SqlCommand("Update  No_Of_Arrangement set October = October - 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdoct3 = new SqlCommand("Update  No_Of_Arrangement set October = October - 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdoct4 = new SqlCommand("Update  No_Of_Arrangement set October = October - 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdoct5 = new SqlCommand("Update  No_Of_Arrangement set October = October - 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdoct6 = new SqlCommand("Update  No_Of_Arrangement set October = October - 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdoct7 = new SqlCommand("Update  No_Of_Arrangement set October = October - 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdoct8 = new SqlCommand("Update  No_Of_Arrangement set October = October - 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdoct9 = new SqlCommand("Update  No_Of_Arrangement set October = October - 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmdoct0.ExecuteNonQuery();
                cmdoct1.ExecuteNonQuery();
                cmdoct2.ExecuteNonQuery();
                cmdoct3.ExecuteNonQuery();
                cmdoct4.ExecuteNonQuery();
                cmdoct5.ExecuteNonQuery();
                cmdoct6.ExecuteNonQuery();
                cmdoct7.ExecuteNonQuery();
                cmdoct8.ExecuteNonQuery();
                cmdoct9.ExecuteNonQuery();

            }
            if (month == "November")
            {
                SqlCommand cmdnov0 = new SqlCommand("Update  No_Of_Arrangement set November = November - 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmdnov1 = new SqlCommand("Update  No_Of_Arrangement set November = November - 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmdnov2 = new SqlCommand("Update  No_Of_Arrangement set November = November - 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmdnov3 = new SqlCommand("Update  No_Of_Arrangement set November = November - 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmdnov4 = new SqlCommand("Update  No_Of_Arrangement set November = November - 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmdnov5 = new SqlCommand("Update  No_Of_Arrangement set November = November - 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmdnov6 = new SqlCommand("Update  No_Of_Arrangement set November = November - 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmdnov7 = new SqlCommand("Update  No_Of_Arrangement set November = November - 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmdnov8 = new SqlCommand("Update  No_Of_Arrangement set November = November - 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmdnov9 = new SqlCommand("Update  No_Of_Arrangement set November = November - 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);


                cmdnov0.ExecuteNonQuery();
                cmdnov1.ExecuteNonQuery();
                cmdnov2.ExecuteNonQuery();
                cmdnov3.ExecuteNonQuery();
                cmdnov4.ExecuteNonQuery();
                cmdnov5.ExecuteNonQuery();
                cmdnov6.ExecuteNonQuery();
                cmdnov7.ExecuteNonQuery();
                cmdnov8.ExecuteNonQuery();
                cmdnov9.ExecuteNonQuery();
            }
            if (month == "December")
            {
                SqlCommand cmddec0 = new SqlCommand("Update  No_Of_Arrangement set December = December - 1  where TeacherId ='" + ddlIdZPD.Text + "' ", c);
                SqlCommand cmddec1 = new SqlCommand("Update  No_Of_Arrangement set December = December - 1  where TeacherId ='" + ddlIdFPD.Text + "' ", c);
                SqlCommand cmddec2 = new SqlCommand("Update  No_Of_Arrangement set December = December - 1  where TeacherId ='" + ddlIdSPD.Text + "' ", c);
                SqlCommand cmddec3 = new SqlCommand("Update  No_Of_Arrangement set December = December - 1  where TeacherId ='" + ddlIdTPD.Text + "' ", c);
                SqlCommand cmddec4 = new SqlCommand("Update  No_Of_Arrangement set December = December - 1  where TeacherId ='" + ddlIdFOPD.Text + "' ", c);
                SqlCommand cmddec5 = new SqlCommand("Update  No_Of_Arrangement set December = December - 1  where TeacherId ='" + ddlIdFIPD.Text + "' ", c);
                SqlCommand cmddec6 = new SqlCommand("Update  No_Of_Arrangement set December = December - 1  where TeacherId ='" + ddlIdSIPD.Text + "' ", c);
                SqlCommand cmddec7 = new SqlCommand("Update  No_Of_Arrangement set December = December - 1  where TeacherId ='" + ddlIdSEPD.Text + "' ", c);
                SqlCommand cmddec8 = new SqlCommand("Update  No_Of_Arrangement set December = December - 1  where TeacherId ='" + ddlIdEPD.Text + "' ", c);
                SqlCommand cmddec9 = new SqlCommand("Update  No_Of_Arrangement set December = December - 1  where TeacherId ='" + ddlIdNPD.Text + "' ", c);

                cmddec0.ExecuteNonQuery();
                cmddec1.ExecuteNonQuery();
                cmddec2.ExecuteNonQuery();
                cmddec3.ExecuteNonQuery();
                cmddec4.ExecuteNonQuery();
                cmddec5.ExecuteNonQuery();
                cmddec6.ExecuteNonQuery();
                cmddec7.ExecuteNonQuery();
                cmddec8.ExecuteNonQuery();
                cmddec9.ExecuteNonQuery();
            }
            if (GridView2.Rows[e.RowIndex].Cells[1].Text == "Off")
            {

                SqlCommand cmd1 = new SqlCommand("Update  No_Of_Arrangement set Week = Week - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[1].Text + "' ", c);
                SqlCommand cmd2 = new SqlCommand("Update  No_Of_Arrangement set Week = Week - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[2].Text + "' ", c);
                SqlCommand cmd3 = new SqlCommand("Update  No_Of_Arrangement set Week = Week - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[3].Text + "' ", c);
                SqlCommand cmd4 = new SqlCommand("Update  No_Of_Arrangement set Week = Week - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[4].Text + "' ", c);
                SqlCommand cmd5 = new SqlCommand("Update  No_Of_Arrangement set Week = Week - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[5].Text + "' ", c);
                SqlCommand cmd6 = new SqlCommand("Update  No_Of_Arrangement set Week = Week - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[6].Text + "' ", c);
                SqlCommand cmd7 = new SqlCommand("Update  No_Of_Arrangement set Week = Week - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[7].Text + "' ", c);
                SqlCommand cmd8 = new SqlCommand("Update  No_Of_Arrangement set Week = Week - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[8].Text + "' ", c);
                SqlCommand cmd9 = new SqlCommand("Update  No_Of_Arrangement set Week = Week - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[9].Text + "' ", c);
                SqlCommand cmd09 = new SqlCommand("Update  No_Of_Arrangement set Week = Week - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[10].Text + "' ", c);

                SqlCommand cmd10 = new SqlCommand("Update  No_Of_Arrangement set Year = Year - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[1].Text + "' ", c);
                SqlCommand cmd11 = new SqlCommand("Update  No_Of_Arrangement set Year = Year - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[2].Text + "' ", c);
                SqlCommand cmd12 = new SqlCommand("Update  No_Of_Arrangement set Year = Year - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[3].Text + "' ", c);
                SqlCommand cmd13 = new SqlCommand("Update  No_Of_Arrangement set Year = Year - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[4].Text + "' ", c);
                SqlCommand cmd14 = new SqlCommand("Update  No_Of_Arrangement set Year = Year - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[5].Text + "' ", c);
                SqlCommand cmd15 = new SqlCommand("Update  No_Of_Arrangement set Year = Year - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[6].Text + "' ", c);
                SqlCommand cmd16 = new SqlCommand("Update  No_Of_Arrangement set Year = Year - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[7].Text + "' ", c);
                SqlCommand cmd17 = new SqlCommand("Update  No_Of_Arrangement set Year = Year - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[8].Text + "' ", c);
                SqlCommand cmd18 = new SqlCommand("Update  No_Of_Arrangement set Year = Year - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[9].Text + "' ", c);
                SqlCommand cmd018 = new SqlCommand("Update  No_Of_Arrangement set Year = Year - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[10].Text + "' ", c);


                SqlCommand cmd19 = new SqlCommand("Update  No_Of_Arrangement set Day = Day - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[1].Text + "' ", c);
                SqlCommand cmd20 = new SqlCommand("Update  No_Of_Arrangement set Day = Day - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[2].Text + "' ", c);
                SqlCommand cmd21 = new SqlCommand("Update  No_Of_Arrangement set Day = Day - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[3].Text + "' ", c);
                SqlCommand cmd22 = new SqlCommand("Update  No_Of_Arrangement set Day = Day - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[4].Text + "' ", c);
                SqlCommand cmd23 = new SqlCommand("Update  No_Of_Arrangement set Day = Day - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[5].Text + "' ", c);
                SqlCommand cmd24 = new SqlCommand("Update  No_Of_Arrangement set Day = Day - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[6].Text + "' ", c);
                SqlCommand cmd25 = new SqlCommand("Update  No_Of_Arrangement set Day = Day - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[7].Text + "' ", c);
                SqlCommand cmd26 = new SqlCommand("Update  No_Of_Arrangement set Day = Day - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[8].Text + "' ", c);
                SqlCommand cmd27 = new SqlCommand("Update  No_Of_Arrangement set Day = Day - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[9].Text + "' ", c);
                SqlCommand cmd027 = new SqlCommand("Update  No_Of_Arrangement set Day = Day - 1  where TeacherId = '" + this.GridView3.Rows[e.RowIndex].Cells[10].Text + "' ", c);
                cmd1.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                cmd3.ExecuteNonQuery();
                cmd4.ExecuteNonQuery();
                cmd5.ExecuteNonQuery();
                cmd6.ExecuteNonQuery();
                cmd7.ExecuteNonQuery();
                cmd8.ExecuteNonQuery();
                cmd9.ExecuteNonQuery();
                cmd09.ExecuteNonQuery();
                cmd10.ExecuteNonQuery();
                cmd11.ExecuteNonQuery();
                cmd12.ExecuteNonQuery();
                cmd13.ExecuteNonQuery();
                cmd14.ExecuteNonQuery();
                cmd15.ExecuteNonQuery();
                cmd16.ExecuteNonQuery();
                cmd17.ExecuteNonQuery();
                cmd18.ExecuteNonQuery();
                cmd018.ExecuteNonQuery();
                cmd19.ExecuteNonQuery();
                cmd20.ExecuteNonQuery();
                cmd21.ExecuteNonQuery();
                cmd22.ExecuteNonQuery();
                cmd23.ExecuteNonQuery();
                cmd24.ExecuteNonQuery();
                cmd25.ExecuteNonQuery();
                cmd26.ExecuteNonQuery();
                cmd27.ExecuteNonQuery();
                cmd027.ExecuteNonQuery();
            }
            c.Close();

            GridView2.DataBind();
            GridView3.DataBind();
        }
        catch (Exception e5)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("~/vice/Arrangement.aspx");
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }

}

