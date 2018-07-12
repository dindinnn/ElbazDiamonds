//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//public partial class LoginAdmin : System.Web.UI.Page
//{
//    protected void Page_Load(object sender, EventArgs e)
//    {

//    }  

//    Users adminUser = new Users();
//    protected void SubmitBTN_Click(object sender, EventArgs e)
//    {
//        string userName = userNameTB.Value.ToString();
//        string password = passwordTB.Value.ToString();
//        adminUser.UserName = userName;
//        adminUser.Password = password;
//        bool confirm = adminUser.userAdminConformation(userName, password);
//        Session["User"] = adminUser; 
//        //if (CheckBox_Cookie.Checked)
//        //{
//        //    Create_cookie();
//        //}
//       if (confirm)
//        {
//            if (checkBoxCookie.Checked)
//            {
//                Create_cookie();
//            }
//            Response.Redirect("Admin.aspx");

//        }
//        else 
//        {
//            WorngusernameorpasswordLBL.Visible = true;
//        }

//    }
//    protected void Create_cookie()
//    {
//        Response.Cookies["User_Password"].Value = adminUser.Password.ToString();
//        Response.Cookies["User_Password"].Expires = DateTime.Now.AddDays(20);
//    }
    
//}