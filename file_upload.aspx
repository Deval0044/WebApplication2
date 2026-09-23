<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="file_upload.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Upload Demo</title>
    <style type="text/css">
        .container {
            margin-left: 320px;
            font-family: Arial, sans-serif;
            margin-top: 30px;
        }
        .student-info {
            font-size: 18px;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!-- Student Information -->
            <div class="student-info">
                Name: <asp:Label ID="lblName" runat="server" Text="Deval Sonagara" ForeColor="Blue"></asp:Label><br />
                Enrollment No: <asp:Label ID="lblRollNo" runat="server" Text="24SOEIT11033" ForeColor="Blue"></asp:Label>
            </div>

            <hr style="width: 400px; margin-left: 0;" />

            <h2>-- File Upload Demo --</h2>

            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br /><br />
            <asp:Button ID="upload_btn_click" runat="server" OnClick="upload_btn_click_Click" Text="Upload" />&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
        <p>
            Register Page</p>
        <p>
            &nbsp;</p>
        <p>
            Name:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            Password:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            Confirm &nbsp;Password:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            Email:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
            Contact No. :<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Button" />
        </p>
    </form>
</body>
</html>