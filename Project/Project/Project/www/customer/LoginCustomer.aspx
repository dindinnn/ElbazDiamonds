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
    <link href="../../../css/LoginCustomer.css" rel="stylesheet" type="text/css" media="screen" runat="server" />
    <!--===============================================================================================-->

    <style>
        form {
            width: 50%;
            border: 3px solid #f1f1f1;
            text-align: center;
            margin: auto;
            background: rgba(0, 0, 0, 0.5);
        }

        body {
            background-image: url(images/brown.jpeg);
        }

        .tableContent {
            margin: auto;
        }

        .centerTable {
            margin: auto;
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        button {
            background-color: #ff3399;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

            button:hover {
                opacity: 0.8;
            }

        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }

        img.avatar {
            width: 20%;
            border-radius: 30%;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }
    </style>


</head >
<body style="background-image:url(../../img/a0a6631b-9405-4176-86eb-6e1393e483e2.jpg) ">
    <form id="form1" runat="server">
        <div class="container">
            <table>
                <tr>
                    <td>
                        <h2 style=" color:white">Username:</h2>
                    </td>
                    <td>
                        <input id="Customer_Username_TB" type="text" runat="server"  style=" color:white" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="Customer_Username_TB" ID="Customer_Username_VLD"
                            runat="server" ErrorMessage="Please enter username" ValidationGroup="loginCustomerValidationGroup"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h2 style=" color:white">Password:</h2>
                    </td>
                    <td>
                        <input id="Customer_Password_TB" style=" color:white" type="password" runat="server" />
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
            <asp:Button style=" color:white" ID="submitCustomer_BTN" runat="server" Text="Submit" OnClick="submitCustomer_BTN_Click"
                ValidationGroup="loginCustomerValidationGroup"></asp:Button>
            <asp:Label ID="WronguserorpasswordLBL" runat="server" Text="Worng username or password" Visible="False"></asp:Label>
        </div>
    </form>

</body>
</html>
