<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginAdmin.aspx.cs" Inherits="LoginAdmin" %>

<!DOCTYPE html>
<style>
    body {
        background-image: url(images/admin1.jpg);
        background-size: cover;
    }


</style>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Login Admin - Elbaz Diamonds LTD</title>
    <meta charset="utf-8" />
    <!--===============================================================================================-->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--===============================================================================================-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <!--===============================================================================================-->
    <link href="../css/LoginAdmin.css" rel="stylesheet" type="text/css" media="screen" runat="server" />
    <!--===============================================================================================-->
</head>
<body style="background-image: url(../../img/5a0c7693fc7e93db098b4567.jpg)">
    <form id="form1" runat="server">
        <div class="container">
            <table>
                <tr>
                    <td>
                        <h2 style="color: white; font: bold">Username:</h2>
                    </td>
                    <td>
                        <input id="Admin_Username_TB" type="text" runat="server" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="Admin_Username_TB" ID="Admin_Username_VLD"
                            runat="server" ErrorMessage="Please enter username" ValidationGroup="loginAdminValidationGroup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h2 style="color: white; font: bold">Password :</h2>
                    </td>
                    <td>
                        <input id="Admin_Password_TB" type="password" runat="server" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="Admin_Password_TB" ID="Admin_Password_VLD"
                            runat="server" ErrorMessage="Please enter password" ValidationGroup="loginAdminValidationGroup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4 style="color: white; font: bold">Save password</h4>
                    </td>
                    <td>
                        <asp:CheckBox ID="AdminSavePasswordCookie_CB" runat="server" />
                    </td>
                </tr>
            </table>
            <asp:Button ID="submitAdmin_BTN" runat="server" Text="Submit" OnClick="submitAdmin_BTN_Click"
                ValidationGroup="loginAdminValidationGroup"></asp:Button>
            <asp:Label ID="WrongusernameorpasswordLBL" runat="server" Text="Worng username or password" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
