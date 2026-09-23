using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page // for file upload
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void upload_btn_click_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                // Ensure the 'files' directory exists on the server
                string folderPath = Server.MapPath("~/files/");
                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }

                string path = folderPath + FileUpload1.FileName;

                // Save the uploaded file
                FileUpload1.SaveAs(path);

                // Feedback message
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "File '" + FileUpload1.FileName + "' uploaded successfully!";
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Please select a file.";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}