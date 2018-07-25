using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


public partial class www_SearchDiamonds : System.Web.UI.Page
{
    public List<Stone> list_stones = new List<Stone>();
    Stone s = new Stone();

    //Category c = new Category();
    //List<Category> list_C;
    //double percent;
    protected void Page_Load(object sender, EventArgs e)
    {


        //if (Session["User"] == null)
        //{
        //    Response.Redirect("Login.aspx");
        //}
        addproducts();
    }
    protected void addproducts()
    {

        list_stones = s.readStoneDS();
        //list_C = c.readCategoryDS_Customer();
        //CheckPrecent();
        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + list_P[0].Title + " is on sale, just for you! " + (1 - percent) * 100 + "% off!')", true);

        foreach (var item in list_stones)//ריצה על כל אבן
        {

            #region create  HtmlGenericControl

            HtmlGenericControl New_stone_div1 = new HtmlGenericControl("div");
            HtmlGenericControl New_stone_div2 = new HtmlGenericControl("div");
            HtmlGenericControl New_stone_div3 = new HtmlGenericControl("div");
            HtmlImage img_for_stone = new HtmlImage();
            HtmlGenericControl New_stone_div4 = new HtmlGenericControl("div");
            HtmlGenericControl New_stone_div5_AddToCart = new HtmlGenericControl("div");
            HtmlButton BTN_AddToCart = new HtmlButton();
            HtmlGenericControl New_stone_div6_Price = new HtmlGenericControl("div");
            HtmlGenericControl New_stone_span_Price = new HtmlGenericControl("span");
            HtmlGenericControl a_stone = new HtmlGenericControl("a");

            #endregion

            #region class for  HtmlGenericControl

            New_stone_div1.Attributes["Class"] = "col-sm-12 col-md-6 col-lg-4 p-b-50";
            New_stone_div2.Attributes["Class"] = "block2";
            New_stone_div3.Attributes["Class"] = "block2-img wrap-pic-w of-hidden pos-relative block2-labelnew";
            New_stone_div4.Attributes["Class"] = "block2 - overlay trans - 0 - 4";
            New_stone_div5_AddToCart.Attributes["Class"] = "block2-btn-addcart w-size1 trans-0-4";
            BTN_AddToCart.Attributes["Class"] = "flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4";
            a_stone.Attributes["Class"] = "block2-name dis-block s-text3 p-b-5";    
            New_stone_div6_Price.Attributes["Class"] = "block2-txt p-t-20";
            New_stone_span_Price.Attributes["Class"] = "block2-price m-text6 p-r-5";

            #endregion

            //foreach (var C in list_C)
            //{
            //    if (c.Name == item.CategoryName)
            //    {
            //        p1.InnerHtml = "Category: " + c.Name + "</br> ";//הוספת שם קטגוריה
            //    }
            //}

            img_for_stone.Src = item.ImagePath;//הוספת תמונה
            img_for_stone.Alt = "IMG-PRODUCT";

            New_stone_span_Price.InnerHtml = item.Sale_Price_CT.ToString();// sale ct

            a_stone.InnerHtml = item.Name;// name

            BTN_AddToCart.InnerHtml = "Add to Cart";


            ////CheckBox Check_Box = new CheckBox();
            //Check_Box.ID = "Check_Box" + item.Id.ToString();
            //if (item.Amount == 0)//אם ריק אל תאפשר ללחוץ
            //{
            //    Check_Box.Enabled = false;
            //}


            //הוספה

            New_stone_div5_AddToCart.Controls.Add(BTN_AddToCart);
            New_stone_div4.Controls.Add(New_stone_div5_AddToCart);
            New_stone_div3.Controls.Add(img_for_stone);
            New_stone_div3.Controls.Add(New_stone_div4);

            New_stone_div6_Price.Controls.Add(a_stone);
            New_stone_div6_Price.Controls.Add(New_stone_span_Price);

            New_stone_div2.Controls.Add(New_stone_div3);
            New_stone_div2.Controls.Add(New_stone_div6_Price);

            New_stone_div1.Controls.Add(New_stone_div2);

            stones_div_table.Controls.Add(New_stone_div1);








          



        }


    }




}

