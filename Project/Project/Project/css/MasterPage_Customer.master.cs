using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class css_MasterPage_Customer : System.Web.UI.MasterPage
{
    Stone s = new Stone();
    List<Stone> list_stones;
    //Category c = new Category();
    //List<Category> list_C;
    double percent;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["User"] == null)
        //{
        //    Response.Redirect("Login.aspx");
        //}
    //    addproducts();
    //}
    ////protected void addproducts()
    //{

    //    list_stones = s.readproductDS();
    //    //list_C = c.readCategoryDS_Customer();
    //    CheckPrecent();
    //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + list_P[0].Title + " is on sale, just for you! " + (1 - percent) * 100 + "% off!')", true);

    //    foreach (var item in list_P)//ריצה על כל מוצר
    //    {
    //        HtmlGenericControl New_Product = new HtmlGenericControl("div");
    //        HtmlGenericControl p1 = new HtmlGenericControl("p");
    //        HtmlGenericControl h5 = new HtmlGenericControl("h5");

    //        New_Product.Attributes["Class"] = "P_Class";


    //        //הוספה בשביל ה style 


    //        foreach (var C in list_C)
    //        {
    //            if (c.Name == item.CategoryName)
    //            {
    //                p1.InnerHtml = "Category: " + c.Name + "</br> ";//הוספת שם קטגוריה
    //            }
    //        }
    //        Image img = new Image();
    //        img.ImageUrl = item.ImagePath;//הוספת תמונה

    //        h5.InnerHtml = item.Title;//שם המוצר

    //        p1.InnerHtml += "Product Price: " + item.Price.ToString() + "</br> ";//מחיר

    //        p1.InnerHtml += "Product Invetory: " + item.Amount.ToString() + "</br> ";//מלאי

    //        CheckBox Check_Box = new CheckBox();
    //        Check_Box.ID = "Check_Box" + item.Id.ToString();
    //        if (item.Amount == 0)//אם ריק אל תאפשר ללחוץ
    //        {
    //            Check_Box.Enabled = false;
    //        }
    //        //הוספה
    //        New_Product.Controls.Add(img);
    //        New_Product.Controls.Add(h5);
    //        New_Product.Controls.Add(p1);
    //        New_Product.Controls.Add(Check_Box);
    //        ph.Controls.Add(New_Product);

    //    }


    //}

}
