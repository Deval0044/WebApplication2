<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register_Page.aspx.cs" Inherits="WebApplication2.Register_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 320px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            --Validation control demo<br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
&nbsp;:-
            <asp:TextBox ID="Nametxt" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Nametxt" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br class="auto-style1" />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
&nbsp;:-
            <asp:TextBox ID="Pwdtxt" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Pwdtxt" ErrorMessage="Password*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br class="auto-style1" />
            <asp:Label ID="Label3" runat="server" Text="Conform Password"></asp:Label>
&nbsp;:-
            <asp:TextBox ID="Cnfmptxt" runat="server"></asp:TextBox>
&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Pwdtxt" ControlToValidate="Cnfmptxt" ErrorMessage="password Dose't match"></asp:CompareValidator>
&nbsp;
            <br />
            <br class="auto-style1" />
            <asp:Label ID="Label4" runat="server" Text="Age"></asp:Label>
&nbsp;:-
            <asp:TextBox ID="Agetxt" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Agetxt" ErrorMessage="Age must be 18-45" MaximumValue="45" MinimumValue="18"></asp:RangeValidator>
&nbsp;<br />
            <br class="auto-style1" />
            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
&nbsp;:-
            <asp:TextBox ID="Emailtxt" runat="server"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Emailtxt"></asp:RegularExpressionValidator>
            <br />
            <br class="auto-style1" />
            <asp:Label ID="Label6" runat="server" Text="Contect number"></asp:Label>
&nbsp;:-
            <asp:TextBox ID="Contecttxt" runat="server"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid contect number" ValidationExpression="\d{10}" ControlToValidate="Contecttxt"></asp:RegularExpressionValidator>
            <br />
            <br class="auto-style1" />
        </div>
        <div style="margin-left: 360px">
            <asp:Button ID="register_btn" runat="server" Text="Register" OnClick="Button1_Click" />
        &nbsp;&nbsp;
            <asp:Button ID="cancle_btn" runat="server" Text="Cancle" />
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
