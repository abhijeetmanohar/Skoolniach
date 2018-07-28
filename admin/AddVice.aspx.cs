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
using System.Web;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Drawing.Imaging;
using System.Drawing;

public partial class AddVice : System.Web.UI.Page
{
SqlConnection c = new SqlConnection("Data Source= HOME\\ABHINAV; Initial Catalog=DpsTeacherDB; User Id=sa; Password=Abc@123");
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
        txtUserId.Style["BACKGROUND-COLOR"] = "rgba(207, 208, 57, 0.30)";
        txtPassword.Style["BACKGROUND-COLOR"] = "rgba(207, 208, 57, 0.30)";
        txtPassword.Visible = false;
        btnGeneratePassword.Visible = true;
        btnAddUser.Visible = false; 
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
    protected void btnAddSub_Click(object sender, EventArgs e)
    {
        Guid EMPID = Guid.NewGuid();
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
                case ".doc":
                    contenttype = "application/vnd.ms-word";
                    break;
                case ".docx":
                    contenttype = "application/vnd.ms-word";
                    break;
                case ".xls":
                    contenttype = "application/vnd.ms-excel";
                    break;
                case ".xlsx":
                    contenttype = "application/vnd.ms-excel";
                    break;
                case ".jpg":
                    contenttype = "image/jpg";
                    break;
                case ".png":
                    contenttype = "image/png";
                    break;
                case ".gif":
                    contenttype = "image/gif";
                    break;
                case ".pdf":
                    contenttype = "application/pdf";
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

                cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = txtUserId.Text;
                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename;
                cmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contenttype;
                cmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;
                InsertUpdateData(cmd);
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "File Uploaded Successfully, ";
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "File format not recognised. Upload Image/Word/PDF/Excel formats";
            }


            SqlCommand cmd0 = new SqlCommand("insert into Login values('" + txtUserId.Text + "','" + txtPassword.Text + "','Vice Principal')", c);

            c.Open();
            int i = cmd0.ExecuteNonQuery();
            if (i != 0)
            {
                lblAUMsgs.Text = "Data saved";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            else
            {
                lblAUMsgs.Text = "Error while saving data";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
            }
            GridView1.DataBind();
            c.Close();
            txtUserId.Text = "";
            txtPassword.Text = "";
        }
        catch (Exception e1)
        {
            lblAUMsgs.Text = e1.Message;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
        }

    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/Dashboard.aspx"); }
       
    
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

        return NewPassword; }
       
    

    protected void btnGeneratePassword_Click(object sender, EventArgs e)
    {
        try
        {
            btnAddUser.Visible = true;
            txtPassword.Visible = true;
            txtPassword.Enabled = false;
            txtPassword.Text = GeneratePassword().ToString();
            btnGeneratePassword.Visible = false;
          
        }
        catch (Exception p1)
        {
            
            lblAUMsgs.Text = p1.Message;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
        }
    }
}