using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


public partial class www_SearchDiamonds : System.Web.UI.Page
{
    public List<StoneView> list_stones = new List<StoneView>();
    StoneView s = new StoneView();

    protected void Page_Load(object sender, EventArgs e)
    {


        //if (Session["User"] == null)
        //{
        //    Response.Redirect("Login.aspx");
        //}

        addproducts();

        Button_find_diamonds.Attributes["Class"] = "flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-5";


    }


    protected void addproducts()
    {
        stones_div_table.Visible = true;
        list_stones = s.getAllStonesViewsForaspx();

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
            New_stone_div3.Attributes["Class"] = "block2-img wrap-pic-w of-hidden pos-relative";
            New_stone_div4.Attributes["Class"] = "block2-overlay trans-0-4";
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

            img_for_stone.Src = "../../" + item.ImagePath;

            img_for_stone.Alt = "IMG-PRODUCT";

            New_stone_span_Price.InnerHtml = "Stone Weight: " + item.Weight.ToString();

            a_stone.InnerHtml = "Stone Name: " + item.Name.ToString();

            BTN_AddToCart.InnerHtml = "Add to Cart";


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

    protected void addproducts_after_filter()
    {
        stones_div_table.Visible = true;
        list_stones = s.getAllStonesViewsForaspx();

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
            New_stone_div3.Attributes["Class"] = "block2-img wrap-pic-w of-hidden pos-relative";
            New_stone_div4.Attributes["Class"] = "block2-overlay trans-0-4";
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

            img_for_stone.Src = "/" +item.ImagePath;

            img_for_stone.Alt = "IMG-PRODUCT";

            New_stone_span_Price.InnerHtml = "Stone Weight: " + item.Weight.ToString();

            a_stone.InnerHtml = "Stone Name: " + item.Name.ToString();

            BTN_AddToCart.InnerHtml = "Add to Cart";


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
    protected void Button_find_diamonds_Click(object sender, EventArgs e)
    {


        List<string> list_shapes = new List<string>();


        //Shape
        foreach (var item in list_stones)
        {
            //string shape_CB;
            CheckBox Check_Box = (CheckBox)SAHPE.FindControl("ShapeCB_" + item.Shape.ToString());
            if (Check_Box.Checked)
            {
                list_shapes.Add(item.Shape.ToString());
            }

        }

        //Weight

        double weightMin = Convert.ToDouble(Request.Form["weightMin"].ToString());
        double weightMax = Convert.ToDouble(Request.Form["weightMax"].ToString());

        //Price

        double priceMin = Convert.ToDouble(Request.Form["priceMin"].ToString());
        double priceMax = Convert.ToDouble(Request.Form["priceMax"].ToString());








        ////Session["toCart"] = toCart;
        //Response.Redirect("cart.aspx");




    }




}

