using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class www_AddCustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("LoginAdmin.aspx");
        }
        Label_Messages.Text = "";
    }

    protected void btnAddCustomer_Click(object sender, EventArgs e)
    {
        try
        {
            string newCustomerUsername = Username_TB.Text;

            if (Customers.isCustomerExist(newCustomerUsername))
            {
                Label_Messages.Text = "קיים לקוח בשם זהה, נסה שנית";
                return;
            }

            Customers c = new Customers(Username_TB.Text,
           Password_TB.Text,
           First_Name_TB.Text,
           Last_Name_TB.Text,
           Company_Name_TB.Text,
           Phone_TB.Text,
           Country_TB.Text,
            City_TB.Text,
        Addresse_TB.Text,
        Email_TB.Text);

            c.insert();
            Label_Messages.Text = "הלקוח הוסף בהצלחה";
            //GridView1.DataBind();
        }

        catch (Exception ex)
        {
            Label_Messages.Text = "אירעה שגיאה בעת ניסיון להכניס את המוצר למסד הנתונים" + ex.Message;

        }
    }
}