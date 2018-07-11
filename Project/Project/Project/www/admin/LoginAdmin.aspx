<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginAdmin.aspx.cs" Inherits="LoginAdmin" %>

<!DOCTYPE html>

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
<body>
    <form id="form1" runat="server">
        <div class="container">
            <table>
                <tr>
                    <td>
                        <h2>Username:</h2>
                    </td>
                    <td>
                        <input id="Username_TB" type="text" runat="server" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="Username_TB" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter username"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h2>Password :</h2>
                    </td>
                    <td>
                        <input id="Password_TB" type="password" runat="server" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="Password_TB" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>Save password</h4>
                    </td>
                    <td>
                        <asp:CheckBox ID="SavePasswordCookie_CB" runat="server" />
                    </td>
                </tr>
            </table>
            <asp:Button ID="submitAdmin_BTN" runat="server" Text="Submit" OnClick="submitAdmin_BTN_Click"></asp:Button>
            <asp:Label ID="WrongusernameorpasswordLBL" runat="server" Text="Worng username or password" Visible="False"></asp:Label>
        </div>
    </form>

</body>
</html>
