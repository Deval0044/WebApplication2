<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ad.aspx.cs" Inherits="WebApplication2.Ad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdRotator Demo</title>
    <style type="text/css">
        .main-container {
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
        .main-container img {
            width: 400px;
            height: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-container">
            <div class="student-info">
                Name: <asp:Label ID="lblName" runat="server" Text="Deval Sonagara" ForeColor="Blue"></asp:Label><br />
                Enrollment No: <asp:Label ID="lblRollNo" runat="server" Text="24SOEIT11033" ForeColor="Blue"></asp:Label>
            </div>

            <hr style="width: 400px; margin-left: 0;" />

            <h2>-- AdRotator Control Demo --</h2>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Ads.xml" Target="_blank" Width="400px" OnAdCreated="AdRotator1_AdCreated" />
            
            <br /><br />
        </div>
    </form>
</body>
</html>