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
        <p>
            Student Record</p>
        <p aria-selected="false">
            <asp:Label ID="Label7" runat="server" Text="Name"></asp:Label>
&nbsp;:-
            <asp:TextBox ID="txtName" runat="server" OnTextChanged="Nametxt0_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Nametxt" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br class="auto-style1" />
            <asp:Label ID="Label10" runat="server" Text="Branch"></asp:Label>
&nbsp;:-
            <asp:TextBox ID="txtBranch" runat="server" OnTextChanged="txtBranch_TextChanged"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBranch" ErrorMessage="Please enetr your branch*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br class="auto-style1" />
            <asp:Label ID="Label9" runat="server" Text="Semester"></asp:Label>
&nbsp;:-
            <asp:TextBox ID="txtSem" runat="server"></asp:TextBox>
&nbsp;
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtSem" ControlToValidate="txtSem" ErrorMessage="please enter your branch*" ForeColor="Red"></asp:CompareValidator>
&nbsp;
            </p>
        <p aria-selected="false">
            <asp:Label ID="Label11" runat="server" Text="City"></asp:Label>
&nbsp;:-&nbsp;
            <asp:DropDownList ID="ddlCity" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="60px">
                <asp:ListItem Enabled="False">Rajkot</asp:ListItem>
                <asp:ListItem Enabled="False">Surat</asp:ListItem>
                <asp:ListItem Enabled="False">Porbandar</asp:ListItem>
                <asp:ListItem Enabled="False">Morbi</asp:ListItem>
            </asp:DropDownList>
&nbsp;<asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="ddlCity" ControlToValidate="ddlCity" ErrorMessage="please select any city*" ForeColor="Red"></asp:CompareValidator>
            </p>
        <p aria-selected="false">
            <asp:Label ID="Label12" runat="server" Text="Gender"></asp:Label>
&nbsp;:-&nbsp;
            <asp:RadioButton ID="rbMale" runat="server" Text="Male" />
&nbsp;
            </p>
        <p aria-selected="false">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rbFemale" runat="server" Text="Female" />
            <br />
            </p>
        <p aria-selected="false">
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="Button1_Click1" />
        </p>
    </form>
</body>
</html>
