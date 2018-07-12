<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginAdmin.aspx.cs" Inherits="LoginAdmin" %>

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
                        <input id="userNameTB" type="text" runat="server" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="userNameTB" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter user name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h2>Password :</h2>
                    </td>
                    <td>
                        <input id="passwordTB" type="password" runat="server" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="passwordTB" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>Save password</h4>
                    </td>
                    <td>
                        <asp:CheckBox ID="checkBoxCookie" runat="server" />
                    </td>
                </tr>
            </table>
            <asp:Button ID="submitBTN" runat="server" Text="Submit" OnClick="SubmitBTN_Click"></asp:Button>

            <asp:Label ID="WorngusernameorpasswordLBL" runat="server" Text="Worng user name or password" Visible="False"></asp:Label>
        </div>
    </form>

</body>
</html>--%>
