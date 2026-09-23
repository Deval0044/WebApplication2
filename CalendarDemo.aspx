<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalendarDemo.aspx.cs" Inherits="WebApplication2.CalendarDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Current Day and Selected Date Demo</title>
    <style type="text/css">
        .container {
            width: 450px;
            margin: 40px auto;
            font-family: Arial, sans-serif;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 2px 2px 10px rgba(0,0,0,0.1);
        }
        .info-box {
            margin-bottom: 15px;
            font-size: 16px;
        }
        .highlight {
            font-weight: bold;
            color: #0066cc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!-- Student Header -->
            <div class="info-box">
                Name: <span class="highlight">Deval Sonagara</span><br />
                Enrollment No: <span class="highlight">24SOEIT11033</span>
            </div>

            <hr />

            <h2>Calendar Date Selection</h2>

            <!-- Current Day Display -->
            <div class="info-box">
                Today's Date: <asp:Label ID="lblCurrentDay" runat="server" CssClass="highlight"></asp:Label>
            </div>

            <!-- ASP.NET Calendar Control -->
            <asp:Calendar ID="Calendar1" runat="server" 
                OnSelectionChanged="Calendar1_SelectionChanged" 
                BackColor="White" BorderColor="#999999" CellPadding="4" 
                DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="9pt" 
                ForeColor="Black" Height="200px" Width="300px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#0066cc" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>

            <br />

            <!-- Selected Date Display -->
            <div class="info-box">
                Selected Date: <asp:Label ID="lblSelectedDate" runat="server" CssClass="highlight" Text="None"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
