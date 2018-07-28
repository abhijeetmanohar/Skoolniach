using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class teacher_Default : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            c.Open();
               String month = DateTime.Now.ToString("MMMMMMMMMMMMM");
            SqlCommand cmd = new SqlCommand("Select AbsentTeacherId,ZeroPeriod from Arrangement where ZPDTArrName = '" + Session["user"].ToString() + "' and Daay='" + DateTime.Now.ToString("dddddddddd") + "'", c);
            SqlCommand cmd1 = new SqlCommand("Select AbsentTeacherId,FirstPeriod from Arrangement where FPDTArrName = '" + Session["user"].ToString() + "' and Daay='" + DateTime.Now.ToString("dddddddddd") + "'", c);
            SqlCommand cmd2 = new SqlCommand("Select AbsentTeacherId,SecondPeriod from Arrangement where SPDTArrName =  '" + Session["user"].ToString() + "' and Daay='" + DateTime.Now.ToString("dddddddddd") + "'", c);
            SqlCommand cmd3 = new SqlCommand("Select AbsentTeacherId,ThirdPeriod from Arrangement where TPDTArrName = '" + Session["user"].ToString() + "' and Daay='" + DateTime.Now.ToString("dddddddddd") + "'", c);
            SqlCommand cmd4 = new SqlCommand("Select AbsentTeacherId,FourthPeriod from Arrangement where FOPDTArrName =  '" + Session["user"].ToString() + "' and Daay='" + DateTime.Now.ToString("dddddddddd") + "'", c);
            SqlCommand cmd5 = new SqlCommand("Select AbsentTeacherId,FifthPeriod from Arrangement where FIPDTArrName = '" + Session["user"].ToString() + "' and Daay='" + DateTime.Now.ToString("dddddddddd") + "'", c);
            SqlCommand cmd6 = new SqlCommand("Select AbsentTeacherId,SixthPeriod from Arrangement where SIPDTArrName = '" + Session["user"].ToString() + "' and Daay='" + DateTime.Now.ToString("dddddddddd") + "'", c);
            SqlCommand cmd7 = new SqlCommand("Select AbsentTeacherId,SeventhPeriod from Arrangement where SEPDTArrName = '" + Session["user"].ToString() + "' and Daay='" + DateTime.Now.ToString("dddddddddd") + "'", c);
            SqlCommand cmd8 = new SqlCommand("Select AbsentTeacherId,EighthPeriod from Arrangement where EPDTArrName = '" + Session["user"].ToString() + "' and Daay='" + DateTime.Now.ToString("dddddddddd") + "'", c);
            SqlCommand cmd9 = new SqlCommand("Select AbsentTeacherId,NinethPeriod from Arrangement where NPDTArrName = '" + Session["user"].ToString() + "' and Daay='" + DateTime.Now.ToString("dddddddddd") + "'", c);
            SqlCommand cmd10 = new SqlCommand("Select Day from No_Of_Arrangement as Today where TeacherId= '" + Session["user"].ToString() + "' ", c);
            SqlCommand cmd11 = new SqlCommand("Select Week from No_Of_Arrangement where TeacherId= '" + Session["user"].ToString() + "' ", c);
            SqlCommand cmd13 = new SqlCommand("Select Year from No_Of_Arrangement where TeacherId= '" + Session["user"].ToString() + "' ", c);
            
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            if (da.Fill(dt) > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            

            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            if (da1.Fill(dt1) > 0)
            {
                GridView2.DataSource = dt1;
                GridView2.DataBind();
            }
           

            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            if (da2.Fill(dt2) > 0)
            {
                GridView3.DataSource = dt2;
                GridView3.DataBind();
            }
          

            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            DataTable dt3 = new DataTable();
            if (da3.Fill(dt3) > 0)
            {
                GridView4.DataSource = dt3;
                GridView4.DataBind();
            }
           
            SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
            DataTable dt4 = new DataTable();
            if (da4.Fill(dt4) > 0)
            {
                GridView5.DataSource = dt4;
                GridView5.DataBind();
            }
            

            SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
            DataTable dt5 = new DataTable();
            if (da5.Fill(dt5) > 0)
            {
                GridView6.DataSource = dt5;
                GridView6.DataBind();
            }
            
            SqlDataAdapter da6 = new SqlDataAdapter(cmd6);
            DataTable dt6 = new DataTable();
            if (da6.Fill(dt6) > 0)
            {
                GridView7.DataSource = dt6;
                GridView7.DataBind();
            }
           
            SqlDataAdapter da7 = new SqlDataAdapter(cmd7);
            DataTable dt7 = new DataTable();
            if (da7.Fill(dt7) > 0)
            {
                GridView8.DataSource = dt7;
                GridView8.DataBind();
            }
           
            SqlDataAdapter da8 = new SqlDataAdapter(cmd8);
            DataTable dt8 = new DataTable();
            if (da8.Fill(dt8) > 0)
            {
                GridView9.DataSource = dt8;
                GridView9.DataBind();
            }
          
            SqlDataAdapter da9 = new SqlDataAdapter(cmd9);
            DataTable dt9 = new DataTable();
            if (da9.Fill(dt9) > 0)
            {
                GridView10.DataSource = dt9;
                GridView10.DataBind();
            }
           
            SqlDataAdapter da10 = new SqlDataAdapter(cmd10);
            DataTable dt10 = new DataTable();
            if (da10.Fill(dt10) > 0)
            {
                GridView11.DataSource = dt10;
                GridView11.DataBind();
            }
           
            SqlDataAdapter da11 = new SqlDataAdapter(cmd11);
            DataTable dt11 = new DataTable();
            if (da11.Fill(dt11) > 0)
            {
                GridView12.DataSource = dt11;
                GridView12.DataBind();
            }
           

            if (month == "January")
            {
                SqlCommand cmd12 = new SqlCommand("Select January from No_Of_Arrangement where TeacherId= '" + Session["user"].ToString() + "' ", c);
                SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
                DataTable dt12 = new DataTable();
                if (da12.Fill(dt12) > 0)
                {
                    GridView13.DataSource = dt12;
                    GridView13.DataBind();
                }
              
            }
            if (month == "February")
            {
                SqlCommand cmd12 = new SqlCommand("Select February from No_Of_Arrangement where TeacherId= '" + Session["user"].ToString() + "' ", c);
                SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
                DataTable dt12 = new DataTable();
                if (da12.Fill(dt12) > 0)
                {
                    GridView13.DataSource = dt12;
                    GridView13.DataBind();
                }
               
            }
            if (month == "March")
            {
                SqlCommand cmd12 = new SqlCommand("Select March from No_Of_Arrangement where TeacherId= '" + Session["user"].ToString() + "' ", c);
                SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
                DataTable dt12 = new DataTable();
                if (da12.Fill(dt12) > 0)
                {
                    GridView13.DataSource = dt12;
                    GridView13.DataBind();
                }
               
            }
            if (month == "April")
            {
                SqlCommand cmd12 = new SqlCommand("Select April from No_Of_Arrangement where TeacherId= '" + Session["user"].ToString() + "' ", c);
                SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
                DataTable dt12 = new DataTable();
                if (da12.Fill(dt12) > 0)
                {
                    GridView13.DataSource = dt12;
                    GridView13.DataBind();
                }
                
            }
            if (month == "May")
            {
                SqlCommand cmd12 = new SqlCommand("Select May from No_Of_Arrangement where TeacherId= '" + Session["user"].ToString() + "' ", c);
                SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
                DataTable dt12 = new DataTable();
                if (da12.Fill(dt12) > 0)
                {
                    GridView13.DataSource = dt12;
                    GridView13.DataBind();
                }
              
            }
            if (month == "June")
            {
                SqlCommand cmd12 = new SqlCommand("Select June from No_Of_Arrangement where TeacherId= '" + Session["user"].ToString() + "' ", c);
                SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
                DataTable dt12 = new DataTable();
                if (da12.Fill(dt12) > 0)
                {
                    GridView13.DataSource = dt12;
                    GridView13.DataBind();
                }
               
            }
            if (month == "July")
            {
                SqlCommand cmd12 = new SqlCommand("Select July from No_Of_Arrangement where TeacherId= '" + Session["user"].ToString() + "' ", c);
                SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
                DataTable dt12 = new DataTable();
                if (da12.Fill(dt12) > 0)
                {
                    GridView13.DataSource = dt12;
                    GridView13.DataBind();
                }
              }
            if (month == "August")
            {
                SqlCommand cmd12 = new SqlCommand("Select August from No_Of_Arrangement where TeacherId= '" + Session["user"].ToString() + "' ", c);
                SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
                DataTable dt12 = new DataTable();
                if (da12.Fill(dt12) > 0)
                {
                    GridView13.DataSource = dt12;
                    GridView13.DataBind();
                }
                
            }
            if (month == "September")
            {
                SqlCommand cmd12 = new SqlCommand("Select September from No_Of_Arrangement where TeacherId= '" + Session["user"].ToString() + "' ", c);
                SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
                DataTable dt12 = new DataTable();
                if (da12.Fill(dt12) > 0)
                {
                    GridView13.DataSource = dt12;
                    GridView13.DataBind();
                }
               
            }
            if (month == "October")
            {
                SqlCommand cmd12 = new SqlCommand("Select October from No_Of_Arrangement where TeacherId= '" + Session["user"].ToString() + "' ", c);
                SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
                DataTable dt12 = new DataTable();
                if (da12.Fill(dt12) > 0)
                {
                    GridView13.DataSource = dt12;
                    GridView13.DataBind();
                }
               }
            if (month == "November")
            {
                SqlCommand cmd12 = new SqlCommand("Select November from No_Of_Arrangement where TeacherId= '" + Session["user"].ToString() + "' ", c);
                SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
                DataTable dt12 = new DataTable();
                if (da12.Fill(dt12) > 0)
                {
                    GridView13.DataSource = dt12;
                    GridView13.DataBind();
                }
            }
            if (month == "December")
            {
                SqlCommand cmd12 = new SqlCommand("Select December from No_Of_Arrangement where TeacherId= '" + Session["user"].ToString() + "' ", c);
                SqlDataAdapter da12 = new SqlDataAdapter(cmd12);
                DataTable dt12 = new DataTable();
                if (da12.Fill(dt12) > 0)
                {
                    GridView13.DataSource = dt12;
                    GridView13.DataBind();
                }
             }


            SqlDataAdapter da13 = new SqlDataAdapter(cmd13);
            DataTable dt13 = new DataTable();
            if (da13.Fill(dt13) > 0)
            {
                GridView14.DataSource = dt13;
                GridView14.DataBind();
            }
           
            c.Close();
        }
        catch(Exception ex) {
            Label1.Text =ex.Message;
        }
    }
}