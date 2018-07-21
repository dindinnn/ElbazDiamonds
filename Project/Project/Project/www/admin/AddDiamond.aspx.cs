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
        //    Response.Redirect("HomePageAdmin.aspx");
        //}

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Stone S;
        //שמירת תמונה
        string fileName = File_Load.FileName;
        File_Load.SaveAs(Server.MapPath(".") + "../../../img/diamondsImages/" + fileName); // gets the path to the current directory

        //בדיקה 
        //string name = Name_TB.Value.ToString();
        //double weight = Convert.ToDouble(Weight_TB.Value.ToString());
        //string shape = DDL_Shape_Id.SelectedValue;
        //string color = DDL_Color_Id.SelectedValue;
        //string clarity = DDL_Clarity_Id.SelectedValue;
        //double m1 = Convert.ToDouble(M1_TB.Value.ToString());
        //double m2 = Convert.ToDouble(M2_TB.Value.ToString());
        //double m3 = Convert.ToDouble(M3_TB.Value.ToString());
        //double depth = Convert.ToDouble(Depth_TB.Value.ToString());
        //double table = Convert.ToDouble(Table_TB.Value.ToString());
        //string girdle = DDL_Girdle_Id.SelectedValue;
        //string culet = DDL_Culet_Id.SelectedValue;
        //string cut = DDL_Cut_Id.SelectedValue;
        //string polish = DDL_Polish_Id.SelectedValue;
        //string symmetry = DDL_Symmetry_Id.SelectedValue;
        //string fluorescence = DDL_Fluorescence_Id.SelectedValue;
        //string lab = DDL_Lab_Id.SelectedValue;
        //long certificate = Convert.ToInt64(Certificate_TB.Value.ToString());
        //double cost_P_Discount = Convert.ToDouble(Cost_P_Discount_TB.Value.ToString());
        //double cost_Price_CT = Convert.ToDouble(Cost_Price_CT_TB.Value.ToString());
        //double t_Cost_Price = Convert.ToDouble(T_Cost_Price_TB.Value.ToString());
        //double sale_P_Discount = Convert.ToDouble(Sale_P_Discount_TB.Value.ToString());
        //double sale_Price_CT = Convert.ToDouble(Sale_Price_CT_TB.Value.ToString());
        //double t_Sale_Price = Convert.ToDouble(T_Sale_Price_TB.Value.ToString());
        //string imagePath = "/img/diamondsImages/" + fileName;
        //string status = Status_RBL.SelectedValue;


        //יצירת יהלום חדש
        try
        {
             S = new Stone(Name_TB.Value.ToString(), //שם האבן
             Convert.ToDouble(Weight_TB.Value.ToString()), //משקל האבן
             DDL_Shape_Id.SelectedValue, //צורת האבן
             DDL_Color_Id.SelectedValue, //צבע האבן
             DDL_Clarity_Id.SelectedValue, //צלילות האבן
             Convert.ToDouble(M1_TB.Value.ToString()), //מידה 1 של האבן
             Convert.ToDouble(M2_TB.Value.ToString()), //מידה 2 של האבן
             Convert.ToDouble(M3_TB.Value.ToString()), //מידה 3 של האבן
             Convert.ToDouble(Depth_TB.Value.ToString()), //עומק של האבן
             Convert.ToDouble(Table_TB.Value.ToString()), //שטח האבן
             DDL_Girdle_Id.SelectedValue, //היקף האבן
             DDL_Culet_Id.SelectedValue, //עוקץ של האבן
             DDL_Cut_Id.SelectedValue, //חיתוך של האבן
             DDL_Polish_Id.SelectedValue, //ליטוש של האבן
             DDL_Symmetry_Id.SelectedValue, //סימטריה של האבן
             DDL_Fluorescence_Id.SelectedValue, //פלורסנטיות של האבן
             DDL_Lab_Id.SelectedValue, //המעבדה של התעודה
             Convert.ToInt64(Certificate_TB.Value.ToString()), //מספר תעודה של האבן
             Convert.ToDouble(Cost_P_Discount_TB.Value.ToString()), //אחוז ההנחה באחוזים של מחיר הקניה מהמחירון
             Convert.ToDouble(Cost_Price_CT_TB.Value.ToString()), //מחיר קניה לקראט
             Convert.ToDouble(T_Cost_Price_TB.Value.ToString()), //מחיר קניה סהכ
             Convert.ToDouble(Sale_P_Discount_TB.Value.ToString()), //אחוז ההנחה באחוזים של מחיר המכירה מהמחירון 
             Convert.ToDouble(Sale_Price_CT_TB.Value.ToString()), //מחיר מכירה לקראט
             Convert.ToDouble(T_Sale_Price_TB.Value.ToString()), //מחיר מכירה סהכ
             "/img/diamondsImages/" + fileName, //נתיב תמונה
             Status_RBL.SelectedValue); //סטטוס האבן          
        }
        catch (Exception ex)
        {
            Label_Messages.Text = "הוזנו ערכים לא חוקיים למאפייני היהלום" + ex.Message;
            return;
        }

        try
        {
            int numEffected = S.insert(S);
            Label_Messages.Text = "הוספת בהצלחה " + numEffected.ToString() + "אבן חדשה";

        }
        catch (Exception ex)
        {
            Label_Messages.Text = "אירעה שגיאה בעת ניסיון להכניס את המוצר למסד הנתונים" + ex.Message;
        }
    }
}
