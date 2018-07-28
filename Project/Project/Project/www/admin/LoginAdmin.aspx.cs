using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    Admin adminUser = new Admin();

    protected void submitAdmin_BTN_Click(object sender, EventArgs e)
    {
        string username = Admin_Username_TB.Value;
        string password = Admin_Password_TB.Value;
        adminUser.Username = username;
        adminUser.Password = password;
        bool confirm = adminUser.userAdminConformation(username, password);
        Session["User"] = adminUser;
        if (AdminSavePasswordCookie_CB.Checked)
        {
            Create_cookie();
        }
        if (confirm)
        {
            if (AdminSavePasswordCookie_CB.Checked)
            {
                Create_cookie();
            }
            Response.Redirect("HomePageAdmin.aspx");
        }
        else
        {
            WrongusernameorpasswordLBL.Visible = true;
        }
    }

    protected void Create_cookie()
    {
        Response.Cookies["User_Password"].Value = adminUser.Password.ToString();
        Response.Cookies["User_Password"].Expires = DateTime.Now.AddDays(20);
    }

}