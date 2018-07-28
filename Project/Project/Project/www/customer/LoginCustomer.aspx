<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginCustomer.aspx.cs" Inherits="www_customer_LoginCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Login Customer - Elbaz Diamonds LTD</title>
    <meta charset="utf-8" />
    <!--===============================================================================================-->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--===============================================================================================-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <!--===============================================================================================-->
    <link href="../../css/LoginCustomer.css" rel="stylesheet" type="text/css" media="screen" runat="server" />
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
                        <input id="Customer_Username_TB" type="text" runat="server" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="Customer_Username_TB" ID="Customer_Username_VLD" 
                            runat="server" ErrorMessage="Please enter username" ValidationGroup="loginCustomerValidationGroup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h2>Password:</h2>
                    </td>
                    <td>
                        <input id="Customer_Password_TB" type="password" runat="server" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="Customer_Password_TB" ID="Customer_Password_VLD" 
                            runat="server" ErrorMessage="Please enter password" ValidationGroup="loginCustomerValidationGroup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>Save password</h4>
                    </td>
                    <td>
                        <asp:CheckBox ID="CustomerSavePasswordCookie_CB" runat="server" />
                    </td>
                </tr>
            </table>
            <asp:Button ID="submitCustomer_BTN" runat="server" Text="Submit" OnClick="submitCustomer_BTN_Click" 
                ValidationGroup="loginCustomerValidationGroup"></asp:Button>
            <asp:Label ID="WronguserorpasswordLBL" runat="server" Text="Worng username or password" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
