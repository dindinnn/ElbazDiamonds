using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class www_customer_LoginCustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    Customer customerUser = new Customer();

    protected void submitCustomer_BTN_Click(object sender, EventArgs e)
    {
        string username = Customer_Username_TB.Value;
        string password = Customer_Password_TB.Value;
        customerUser.Username = username;
        customerUser.Password = password;
        bool confirm = customerUser.userCustomerConformation(username, password);
        Session["User_Customer"] = customerUser;
        if (CustomerSavePasswordCookie_CB.Checked)
        {
            Create_cookie();
        }
        if (confirm)
        {
            if (CustomerSavePasswordCookie_CB.Checked)
            {
                Create_cookie();
            }
            Response.Redirect("HomePageCustomer.aspx");
        }
        else
        {
            WronguserorpasswordLBL.Visible = true;
        }
    }

    protected void Create_cookie()
    {
        Response.Cookies["User_Password"].Value = customerUser.Password.ToString();
        Response.Cookies["User_Password"].Expires = DateTime.Now.AddDays(20);
    }

}