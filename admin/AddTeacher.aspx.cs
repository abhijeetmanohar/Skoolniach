using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Drawing.Imaging;
using System.Drawing;


public partial class AddTeachers : System.Web.UI.Page
{
    String a = "X";
    String b = "P";

    SqlConnection c = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                lblti.Visible = false;
                lblTeacherId.Visible = false;
                lbltp.Visible = false;
                lblPassword.Visible = false;
                btnPassword.Visible = false;
                Panel9.Visible = false;

                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel7.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;

                txtName.Style["BACKGROUND-COLOR"] = "rgba(207, 208, 57, 0.30)";
                txtInitial.Style["BACKGROUND-COLOR"] = "rgba(207, 208, 57, 0.30)";
                txtEmail.Style["BACKGROUND-COLOR"] = "rgba(207, 208, 57, 0.30)";
                Class();
                Sub();
                Classes();

            }
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    private Boolean InsertUpdateData(SqlCommand cmd)
    {
           SqlConnection con = new SqlConnection("Data Source= LAPTOP-7J5EIHM9\\ABHINAV; Initial Catalog=Skoolniach; User Id=sa; Password=Abc@123");
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            return true;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            return false;
        }
        finally
        {
            con.Close();
            con.Dispose();
        }
    }


    class Program
    {
        static void Main()
        {

            Console.WriteLine(UppercaseFirst("julia"));
            Console.WriteLine(UppercaseFirst("john smith"));
        }

        static string UppercaseFirst(string s)
        {
            // Check for empty string.
            if (string.IsNullOrEmpty(s))
            {
                return string.Empty;
            }
            // Return char and concat substring.
            return char.ToUpper(s[0]) + s.Substring(1);
        }
    }

    protected void Sub()
    {
        try
        {
            c.Open();
            SqlDataAdapter adp = new SqlDataAdapter("Select * from Subject order by Subject asc", c);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            Subject.DataSource = ds;
            Subject.DataTextField = "Subject";
            Subject.DataValueField = "Subject";
            Subject.DataBind();
            Subject.Items.Insert(0, new ListItem("--Select Subject--", " "));

            c.Close();
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void Classes()
    {
        try
        {
            c.Open();
            SqlDataAdapter adp = new SqlDataAdapter("Select * from Classes where Class NOT IN(Select ZeroPeriod from Monday)  order by Class asc", c);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            ClassTeacher.DataSource = ds;
            ClassTeacher.DataTextField = "Class";
            ClassTeacher.DataValueField = "Class";
            ClassTeacher.DataBind();
            ClassTeacher.Items.Insert(0, new ListItem("--Select Class--", " "));
            ClassTeacher.Items.Insert(1, new ListItem("Free", "Free"));
            c.Close();
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void Class()
    {
        try
        {

            c.Open();
            SqlDataAdapter adp = new SqlDataAdapter("Select * from Classes", c);
            DataSet ds = new DataSet();
            adp.Fill(ds);

            MonFirstP.DataSource = ds;
            MonFirstP.DataTextField = "Class";
            MonFirstP.DataValueField = "Class";
            MonFirstP.DataBind();
            MonFirstP.Items.Insert(0, new ListItem("--1st--", " "));
            MonFirstP.Items.Insert(1, new ListItem("Free", "Free"));

            MonSecondP.DataSource = ds;
            MonSecondP.DataTextField = "Class";
            MonSecondP.DataValueField = "Class";
            MonSecondP.DataBind();
            MonSecondP.Items.Insert(0, new ListItem("--2nd--", " "));
            MonSecondP.Items.Insert(1, new ListItem("Free", "Free"));

            MonThirdP.DataSource = ds;
            MonThirdP.DataTextField = "Class";
            MonThirdP.DataValueField = "Class";
            MonThirdP.DataBind();
            MonThirdP.Items.Insert(0, new ListItem("--3rd--", " "));
            MonThirdP.Items.Insert(1, new ListItem("Free", "Free"));

            MonFourthP.DataSource = ds;
            MonFourthP.DataTextField = "Class";
            MonFourthP.DataValueField = "Class";
            MonFourthP.DataBind();
            MonFourthP.Items.Insert(0, new ListItem("--4th--", " "));
            MonFourthP.Items.Insert(1, new ListItem("Free", "Free"));

            MonFifthP.DataSource = ds;
            MonFifthP.DataTextField = "Class";
            MonFifthP.DataValueField = "Class";
            MonFifthP.DataBind();
            MonFifthP.Items.Insert(0, new ListItem("--5th--", " "));
            MonFifthP.Items.Insert(1, new ListItem("Free", "Free"));

            MonSixthP.DataSource = ds;
            MonSixthP.DataTextField = "Class";
            MonSixthP.DataValueField = "Class";
            MonSixthP.DataBind();
            MonSixthP.Items.Insert(0, new ListItem("--6th--", " "));
            MonSixthP.Items.Insert(1, new ListItem("Free", "Free"));

            MonSeventhP.DataSource = ds;
            MonSeventhP.DataTextField = "Class";
            MonSeventhP.DataValueField = "Class";
            MonSeventhP.DataBind();
            MonSeventhP.Items.Insert(0, new ListItem("--7th--", " "));
            MonSeventhP.Items.Insert(1, new ListItem("Free", "Free"));

            MonEighthP.DataSource = ds;
            MonEighthP.DataTextField = "Class";
            MonEighthP.DataValueField = "Class";
            MonEighthP.DataBind();
            MonEighthP.Items.Insert(0, new ListItem("--8th--", " "));
            MonEighthP.Items.Insert(1, new ListItem("Free", "Free"));

            MonNinethP.DataSource = ds;
            MonNinethP.DataTextField = "Class";
            MonNinethP.DataValueField = "Class";
            MonNinethP.DataBind();
            MonNinethP.Items.Insert(0, new ListItem("--9th--", " "));
            MonNinethP.Items.Insert(1, new ListItem("Free", "Free"));

            TueFirstP.DataSource = ds;
            TueFirstP.DataTextField = "Class";
            TueFirstP.DataValueField = "Class";
            TueFirstP.DataBind();
            TueFirstP.Items.Insert(0, new ListItem("--1st--", " "));
            TueFirstP.Items.Insert(1, new ListItem("Free", "Free"));

            TueSecondP.DataSource = ds;
            TueSecondP.DataTextField = "Class";
            TueSecondP.DataValueField = "Class";
            TueSecondP.DataBind();
            TueSecondP.Items.Insert(0, new ListItem("--2nd--", " "));
            TueSecondP.Items.Insert(1, new ListItem("Free", "Free"));

            TueThirdP.DataSource = ds;
            TueThirdP.DataTextField = "Class";
            TueThirdP.DataValueField = "Class";
            TueThirdP.DataBind();
            TueThirdP.Items.Insert(0, new ListItem("--3rd--", " "));
            TueThirdP.Items.Insert(1, new ListItem("Free", "Free"));

            TueFourthP.DataSource = ds;
            TueFourthP.DataTextField = "Class";
            TueFourthP.DataValueField = "Class";
            TueFourthP.DataBind();
            TueFourthP.Items.Insert(0, new ListItem("--4th--", " "));
            TueFourthP.Items.Insert(1, new ListItem("Free", "Free"));

            TueFifthP.DataSource = ds;
            TueFifthP.DataTextField = "Class";
            TueFifthP.DataValueField = "Class";
            TueFifthP.DataBind();
            TueFifthP.Items.Insert(0, new ListItem("--5th--", " "));
            TueFifthP.Items.Insert(1, new ListItem("Free", "Free"));

            TueSixthP.DataSource = ds;
            TueSixthP.DataTextField = "Class";
            TueSixthP.DataValueField = "Class";
            TueSixthP.DataBind();
            TueSixthP.Items.Insert(0, new ListItem("--6th--", " "));
            TueSixthP.Items.Insert(1, new ListItem("Free", "Free"));

            TueSeventhP.DataSource = ds;
            TueSeventhP.DataTextField = "Class";
            TueSeventhP.DataValueField = "Class";
            TueSeventhP.DataBind();
            TueSeventhP.Items.Insert(0, new ListItem("--7th--", " "));
            TueSeventhP.Items.Insert(1, new ListItem("Free", "Free"));

            TueEighthP.DataSource = ds;
            TueEighthP.DataTextField = "Class";
            TueEighthP.DataValueField = "Class";
            TueEighthP.DataBind();
            TueEighthP.Items.Insert(0, new ListItem("--8th--", " "));
            TueEighthP.Items.Insert(1, new ListItem("Free", "Free"));

            WedFirstP.DataSource = ds;
            WedFirstP.DataTextField = "Class";
            WedFirstP.DataValueField = "Class";
            WedFirstP.DataBind();
            WedFirstP.Items.Insert(0, new ListItem("--1st--", " "));
            WedFirstP.Items.Insert(1, new ListItem("Free", "Free"));

            WedSecondP.DataSource = ds;
            WedSecondP.DataTextField = "Class";
            WedSecondP.DataValueField = "Class";
            WedSecondP.DataBind();
            WedSecondP.Items.Insert(0, new ListItem("--2nd--", " "));
            WedSecondP.Items.Insert(1, new ListItem("Free", "Free"));

            WedThirdP.DataSource = ds;
            WedThirdP.DataTextField = "Class";
            WedThirdP.DataValueField = "Class";
            WedThirdP.DataBind();
            WedThirdP.Items.Insert(0, new ListItem("--3rd--", " "));
            WedThirdP.Items.Insert(1, new ListItem("Free", "Free"));

            WedFourthP.DataSource = ds;
            WedFourthP.DataTextField = "Class";
            WedFourthP.DataValueField = "Class";
            WedFourthP.DataBind();
            WedFourthP.Items.Insert(0, new ListItem("--4th--", " "));
            WedFourthP.Items.Insert(1, new ListItem("Free", "Free"));

            WedFifthP.DataSource = ds;
            WedFifthP.DataTextField = "Class";
            WedFifthP.DataValueField = "Class";
            WedFifthP.DataBind();
            WedFifthP.Items.Insert(0, new ListItem("--5th--", " "));
            WedFifthP.Items.Insert(1, new ListItem("Free", "Free"));

            WedSixthP.DataSource = ds;
            WedSixthP.DataTextField = "Class";
            WedSixthP.DataValueField = "Class";
            WedSixthP.DataBind();
            WedSixthP.Items.Insert(0, new ListItem("--6th--", " "));
            WedSixthP.Items.Insert(1, new ListItem("Free", "Free"));

            WedSeventhP.DataSource = ds;
            WedSeventhP.DataTextField = "Class";
            WedSeventhP.DataValueField = "Class";
            WedSeventhP.DataBind();
            WedSeventhP.Items.Insert(0, new ListItem("--7th--", " "));
            WedSeventhP.Items.Insert(1, new ListItem("Free", "Free"));

            WedEighthP.DataSource = ds;
            WedEighthP.DataTextField = "Class";
            WedEighthP.DataValueField = "Class";
            WedEighthP.DataBind();
            WedEighthP.Items.Insert(0, new ListItem("--8th--", " "));
            WedEighthP.Items.Insert(1, new ListItem("Free", "Free"));

            ThursFirstP.DataSource = ds;
            ThursFirstP.DataTextField = "Class";
            ThursFirstP.DataValueField = "Class";
            ThursFirstP.DataBind();
            ThursFirstP.Items.Insert(0, new ListItem("--1st--", " "));
            ThursFirstP.Items.Insert(1, new ListItem("Free", "Free"));

            ThursSecondP.DataSource = ds;
            ThursSecondP.DataTextField = "Class";
            ThursSecondP.DataValueField = "Class";
            ThursSecondP.DataBind();
            ThursSecondP.Items.Insert(0, new ListItem("--2nd--", " "));
            ThursSecondP.Items.Insert(1, new ListItem("Free", "Free"));

            ThursThirdP.DataSource = ds;
            ThursThirdP.DataTextField = "Class";
            ThursThirdP.DataValueField = "Class";
            ThursThirdP.DataBind();
            ThursThirdP.Items.Insert(0, new ListItem("--3rd--", " "));
            ThursThirdP.Items.Insert(1, new ListItem("Free", "Free"));

            ThursFourthP.DataSource = ds;
            ThursFourthP.DataTextField = "Class";
            ThursFourthP.DataValueField = "Class";
            ThursFourthP.DataBind();
            ThursFourthP.Items.Insert(0, new ListItem("--4th--", " "));
            ThursFourthP.Items.Insert(1, new ListItem("Free", "Free"));

            ThursFifthP.DataSource = ds;
            ThursFifthP.DataTextField = "Class";
            ThursFifthP.DataValueField = "Class";
            ThursFifthP.DataBind();
            ThursFifthP.Items.Insert(0, new ListItem("--5th--", " "));
            ThursFifthP.Items.Insert(1, new ListItem("Free", "Free"));

            ThursSixthP.DataSource = ds;
            ThursSixthP.DataTextField = "Class";
            ThursSixthP.DataValueField = "Class";
            ThursSixthP.DataBind();
            ThursSixthP.Items.Insert(0, new ListItem("--6th--", " "));
            ThursSixthP.Items.Insert(1, new ListItem("Free", "Free"));

            ThursSeventhP.DataSource = ds;
            ThursSeventhP.DataTextField = "Class";
            ThursSeventhP.DataValueField = "Class";
            ThursSeventhP.DataBind();
            ThursSeventhP.Items.Insert(0, new ListItem("--7th--", " "));
            ThursSeventhP.Items.Insert(1, new ListItem("Free", "Free"));

            ThursEighthP.DataSource = ds;
            ThursEighthP.DataTextField = "Class";
            ThursEighthP.DataValueField = "Class";
            ThursEighthP.DataBind();
            ThursEighthP.Items.Insert(0, new ListItem("--8th--", " "));
            ThursEighthP.Items.Insert(1, new ListItem("Free", "Free"));

            FriFirstP.DataSource = ds;
            FriFirstP.DataTextField = "Class";
            FriFirstP.DataValueField = "Class";
            FriFirstP.DataBind();
            FriFirstP.Items.Insert(0, new ListItem("--1st--", " "));
            FriFirstP.Items.Insert(1, new ListItem("Free", "Free"));

            FriSecondP.DataSource = ds;
            FriSecondP.DataTextField = "Class";
            FriSecondP.DataValueField = "Class";
            FriSecondP.DataBind();
            FriSecondP.Items.Insert(0, new ListItem("--2nd--", " "));
            FriSecondP.Items.Insert(1, new ListItem("Free", "Free"));

            FriThirdP.DataSource = ds;
            FriThirdP.DataTextField = "Class";
            FriThirdP.DataValueField = "Class";
            FriThirdP.DataBind();
            FriThirdP.Items.Insert(0, new ListItem("--3rd--", " "));
            FriThirdP.Items.Insert(1, new ListItem("Free", "Free"));

            FriFourthP.DataSource = ds;
            FriFourthP.DataTextField = "Class";
            FriFourthP.DataValueField = "Class";
            FriFourthP.DataBind();
            FriFourthP.Items.Insert(0, new ListItem("--4th--", " "));
            FriFourthP.Items.Insert(1, new ListItem("Free", "Free"));

            FriFifthP.DataSource = ds;
            FriFifthP.DataTextField = "Class";
            FriFifthP.DataValueField = "Class";
            FriFifthP.DataBind();
            FriFifthP.Items.Insert(0, new ListItem("--5th--", " "));
            FriFifthP.Items.Insert(1, new ListItem("Free", "Free"));

            FriSixthP.DataSource = ds;
            FriSixthP.DataTextField = "Class";
            FriSixthP.DataValueField = "Class";
            FriSixthP.DataBind();
            FriSixthP.Items.Insert(0, new ListItem("--6th--", " "));
            FriSixthP.Items.Insert(1, new ListItem("Free", "Free"));

            FriSeventhP.DataSource = ds;
            FriSeventhP.DataTextField = "Class";
            FriSeventhP.DataValueField = "Class";
            FriSeventhP.DataBind();
            FriSeventhP.Items.Insert(0, new ListItem("--7th--", " "));
            FriSeventhP.Items.Insert(1, new ListItem("Free", "Free"));

            FriEighthP.DataSource = ds;
            FriEighthP.DataTextField = "Class";
            FriEighthP.DataValueField = "Class";
            FriEighthP.DataBind();
            FriEighthP.Items.Insert(0, new ListItem("--8th--", " "));
            FriEighthP.Items.Insert(1, new ListItem("Free", "Free"));

            FriNinethP.DataSource = ds;
            FriNinethP.DataTextField = "Class";
            FriNinethP.DataValueField = "Class";
            FriNinethP.DataBind();
            FriNinethP.Items.Insert(0, new ListItem("--9th--", " "));
            FriNinethP.Items.Insert(1, new ListItem("Free", "Free"));

            c.Close();
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong.";
        }
    }
    protected void btnMonday_Click(object sender, EventArgs e)
    {
        try
        {
            Panel2.Enabled = false;
            Panel7.Enabled = false;
            Panel3.Visible = true;
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void btnTuesday_Click(object sender, EventArgs e)
    {
        try
        {
            Panel3.Enabled = false;
            Panel4.Visible = true;
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void btnWednesday_Click(object sender, EventArgs e)
    {
        Panel4.Enabled = false;
        Panel5.Visible = true;
    }
    protected void btnThursday_Click(object sender, EventArgs e)
    {
        try
        {
            Panel5.Enabled = false;
            Panel6.Visible = true;
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
    protected void btnFriday_Click(object sender, EventArgs e)
    {
        try
        {
            Panel6.Enabled = false;
            Panel9.Visible = true;

        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }




   
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {

            // Read the file and convert it to Byte Array
            string filePath = FileUpload1.PostedFile.FileName;
            string filename = Path.GetFileName(filePath);
            string ext = Path.GetExtension(filename);
            string contenttype = String.Empty;

            //Set the contenttype based on File Extension
            switch (ext)
            {
                case ".jpg":
                    contenttype = "image/jpg";
                    break;
                case ".png":
                    contenttype = "image/png";
                    break;
                case ".gif":
                    contenttype = "image/gif";
                    break;
               

            }
            if (contenttype != String.Empty)
            {

                Stream fs = FileUpload1.PostedFile.InputStream;
                BinaryReader br = new BinaryReader(fs);
                Byte[] bytes = br.ReadBytes((Int32)fs.Length);

                //insert the file into database
                string strQuery = "insert into ProfilePic(id,Name, ContentType, Data) values (@id,@Name, @ContentType, @Data)";
                SqlCommand cmd = new SqlCommand(strQuery);

                cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = lblTeacherId.Text;
                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename;
                cmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contenttype;
                cmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;
                InsertUpdateData(cmd);
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "File Uploaded Successfully";
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "File format not recognised. Upload Image/Word/PDF/Excel formats";
            }

            SqlCommand cmd0 = new SqlCommand("insert into Monday values('" + lblTeacherId.Text + "','" + txtName.Text + "','" + txtInitial.Text + "','" + Subject.SelectedValue + "', '" + ClassTeacher.SelectedValue + "','" + MonFirstP.SelectedValue + "', '" + MonSecondP.SelectedValue + "', '" + MonThirdP.SelectedValue + "', '" + MonFourthP.SelectedValue + "', '" + MonFifthP.SelectedValue + "', '" + MonSixthP.SelectedValue + "', '" + MonSeventhP.SelectedValue + "', '" + MonEighthP.SelectedValue + "','" + MonNinethP.SelectedValue + "','" + b + "')", c);
            SqlCommand cmd1 = new SqlCommand("insert into No_Of_Arrangement values('" + lblTeacherId.Text + "','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0')", c);
            SqlCommand cmd2 = new SqlCommand("insert into Tuesday values('" + lblTeacherId.Text + "','" + txtName.Text + "','" + txtInitial.Text + "','" + Subject.SelectedValue + "', '" + ClassTeacher.SelectedValue + "', '" + TueFirstP.SelectedValue + "', '" + TueSecondP.SelectedValue + "', '" + TueThirdP.SelectedValue + "', '" + TueFourthP.SelectedValue + "', '" + TueFifthP.SelectedValue + "', '" + TueSixthP.SelectedValue + "', '" + TueSeventhP.SelectedValue + "', '" + TueEighthP.SelectedValue + "','" + a + "','" + b + "')", c);
            SqlCommand cmd3 = new SqlCommand("insert into Wednesday values('" + lblTeacherId.Text + "','" + txtName.Text + "','" + txtInitial.Text + "','" + Subject.SelectedValue + "', '" + ClassTeacher.SelectedValue + "', '" + WedFirstP.SelectedValue + "', '" + WedSecondP.SelectedValue + "', '" + WedThirdP.SelectedValue + "', '" + WedFourthP.SelectedValue + "', '" + WedFifthP.SelectedValue + "', '" + WedSixthP.SelectedValue + "', '" + WedSeventhP.SelectedValue + "', '" + WedEighthP.SelectedValue + "','" + a + "','" + b + "')", c);
            SqlCommand cmd4 = new SqlCommand("insert into Thursday values('" + lblTeacherId.Text + "','" + txtName.Text + "','" + txtInitial.Text + "','" + Subject.SelectedValue + "',  '" + ClassTeacher.SelectedValue + "','" + ThursFirstP.SelectedValue + "', '" + ThursSecondP.SelectedValue + "', '" + ThursThirdP.SelectedValue + "', '" + ThursFourthP.SelectedValue + "', '" + ThursFifthP.SelectedValue + "', '" + ThursSixthP.SelectedValue + "', '" + ThursSeventhP.SelectedValue + "', '" + ThursEighthP.SelectedValue + "','" + a + "','" + b + "')", c);
            SqlCommand cmd5 = new SqlCommand("insert into Friday values('" + lblTeacherId.Text + "','" + txtName.Text + "','" + txtInitial.Text + "','" + Subject.SelectedValue + "', '" + ClassTeacher.SelectedValue + "', '" + FriFirstP.SelectedValue + "', '" + FriSecondP.SelectedValue + "', '" + FriThirdP.SelectedValue + "', '" + FriFourthP.SelectedValue + "', '" + FriFifthP.SelectedValue + "', '" + FriSixthP.SelectedValue + "', '" + FriSeventhP.SelectedValue + "', '" + FriEighthP.SelectedValue + "', '" + FriNinethP.SelectedValue + "','" + b + "')", c);
            SqlCommand cmd6 = new SqlCommand("insert into Login values('" + lblTeacherId.Text + "','" + lblPassword.Text + "','Teacher')", c);
            SqlCommand cmd7 = new SqlCommand("insert into House values('" + lblTeacherId.Text + "','" + ddlHouse.SelectedValue + "','" + ddlPosition.SelectedValue + "')", c);

            c.Open();
            int i = cmd0.ExecuteNonQuery();
            if (i != 0)
            {
                lblMonMessage.Text = "Data saved";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            else
            {
                lblMonMessage.Text = "Error while saving data";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }

            int i2 = cmd1.ExecuteNonQuery();
            if (i2 != 0)
            {
                lblMonMessage.Text = "Data saved";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            else
            {
                lblMonMessage.Text = "Error while saving data";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }

            int i3 = cmd2.ExecuteNonQuery();
            if (i3 != 0)
            {
                lblTueMessage.Text = "Data saved";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            else
            {
                lblTueMessage.Text = "Error while saving data";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            int i4 = cmd3.ExecuteNonQuery();

            if (i4 != 0)
            {
                lblWedMessage.Text = "Data saved";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            else
            {
                lblWedMessage.Text = "Error while saving data";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }

            int i5 = cmd4.ExecuteNonQuery();

            if (i5 != 0)
            {
                lblThursMessage.Text = "Data saved";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            else
            {
                lblThursMessage.Text = "Error while saving data";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            int i6 = cmd5.ExecuteNonQuery();
            if (i6 != 0)
            {
                lblFriMessage.Text = "Data saved";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            else
            {
                lblSave.Text = "Error while saving data";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            Panel6.Enabled = false;
            int i7 = cmd6.ExecuteNonQuery();
            if (i7 != 0)
            {
                lblLogin.Text = "Data saved";


            }
            else
            {
                lblLogin.Text = "Error while saving data";

            }
            int i8 = cmd7.ExecuteNonQuery();
            if (i8 != 0)
            {
                lblLogin.Text = "Data saved";


            }
            else
            {
                lblLogin.Text = "Error while saving data";

            }


            c.Close();

        }
        catch (Exception e1)
        {
            lblMessage.Text = e1.Message;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
        }


    }
    protected void btnTeacherId_Click(object sender, EventArgs e)
    {
        try
        {
            lblti.Visible = true;
            lblTeacherId.Visible = true;
            lblTeacherId.Text = Subject.SelectedValue + "_" + txtInitial.Text;
            btnTeacherId.Visible = false;
            btnPassword.Visible = true;

        }
        catch (Exception ex)
        {
            lblLogin.Text = ex.Message;

        }
    }
    public string GeneratePassword()
    {
        string PasswordLength = "4";
        string NewPassword = "";
        string allowedChars = "";
        allowedChars = "1,2,3,4,5,6,7,8,9,0";

        char[] sep = { ',' };
        string[] arr = allowedChars.Split(sep);

        string IDString = "";
        string temp = "";
        Random rand = new Random();
        for (int i = 0; i < Convert.ToInt32(PasswordLength); i++)
        {
            temp = arr[rand.Next(0, arr.Length)];
            IDString += temp;
            NewPassword = IDString;
        }

        return NewPassword;

        lblPassword.Text = GeneratePassword().ToString();
    }

    protected void btnPassword_Click(object sender, EventArgs e)
    {

        try
        {
            lbltp.Visible = true;
            lblPassword.Visible = true;
            lblPassword.Text = GeneratePassword().ToString();
            btnPassword.Visible = false;
            Panel1.Enabled = false;
            Panel2.Visible = true;
            Panel7.Visible = true;
        }
        catch (Exception p1)
        {
            lblLogin.Text = p1.Message;

        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("~/admin/Dashboard.aspx");
        }
        catch (Exception ex)
        {
            lblError.Text = "Something went wrong";
        }
    }
}