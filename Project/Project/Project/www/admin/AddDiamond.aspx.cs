using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class www_AddDiamond : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["User"] == null)
        //{
        //    Response.Redirect("Admin.aspx");
        //}

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

         
        Response.Write("Button1_Click");
        //    Stone S;
        //    //שמירת תמונה
        //    string fname = File_Load.FileName;
        //    string path = Server.MapPath("."); // gets the path to the current directory
        //    File_Load.SaveAs(path + "/img/" + fname);

        //    //בדיקה פעיל או לא פעיל 
        //    bool status;
        //    if (RadioButtonList1.SelectedValue == "פעיל")
        //    {
        //        status = true;
        //    }
        //    else status = false;


        //    //יצירת מוצר חדש
        //    try
        //    {
        //        P = new Stone(DDL_ShapeId.SelectedValue.ToString(),//קטגוריה
        //            Name_TB.Value.ToString()//שם מוצר
        //            , "img/" + fname //נתיב תמונה
        //            , Convert.ToDouble(Price_TB.Value.ToString()),//מחיר
        //            Convert.ToInt16(Size.Value.ToString()),//כמות במלאי
        //           status//סטטוס           
        //            );

        //    }
        //    catch (Exception ex)
        //    {
        //        Label_Messages.Text = "הוזנו ערכים לא חוקיים למאפייני המוצר - הודעת השגיאה היא" + ex.Message;
        //        return;
        //    }

        //    try
        //    {
        //        int numEffected = P.insert(P);
        //        Label_Messages.Text = "הוספת בהצלחה " + numEffected.ToString() + " מוצר חדש";

        //    }
        //    catch (Exception ex)
        //    {
        //        Label_Messages.Text = "אירעה שגיאה בעת ניסיון להכניס את המוצר למסד הנתונים" + ex.Message;
        //    }


    }
}
