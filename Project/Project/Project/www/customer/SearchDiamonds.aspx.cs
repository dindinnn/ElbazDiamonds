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

            img_for_stone.Src = "/" + item.ImagePath;

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
        List<string> list_clarity = new List<string>();
        List<string> list_color = new List<string>();
        List<string> list_cut = new List<string>();
        List<string> list_polish = new List<string>();
        List<string> list_symmetry = new List<string>();
        List<string> list_lab = new List<string>();
        double weightMin;
        double weightMax;
        double priceMin;
        double priceMax;
        string name;


        foreach (var item in list_stones)
        {

            #region Shape
            HtmlInputCheckBox chk = (HtmlInputCheckBox)SAHPE.FindControl("ShapeCB_" + item.Shape.ToString());
            if (chk.Checked == true)
            {
                string v = chk.Value;
                list_shapes.Add(item.Shape.ToString());
            }

            #endregion

            #region Weight

            HtmlInputGenericControl weightMin_control = (HtmlInputGenericControl)WEIGHT.FindControl("weightMin");
            weightMin = Convert.ToDouble(weightMin_control.Value.ToString());

            HtmlInputGenericControl weightMax_control = (HtmlInputGenericControl)WEIGHT.FindControl("weightMin");
            weightMax = Convert.ToDouble(weightMin_control.Value.ToString());

            #endregion

            #region Price       

            HtmlInputGenericControl priceMin_control = (HtmlInputGenericControl)WEIGHT.FindControl("weightMin");
            priceMin = Convert.ToDouble(weightMin_control.Value.ToString());

            HtmlInputGenericControl priceMax_control = (HtmlInputGenericControl)WEIGHT.FindControl("weightMin");
            priceMax = Convert.ToDouble(weightMin_control.Value.ToString());

            #endregion

            #region CLARITY
            HtmlInputCheckBox chk_CLARITY = (HtmlInputCheckBox)CLARITY.FindControl("ShapeCB_" + item.Clarity.ToString());
            if (chk.Checked == true)
            {
                string v = chk_CLARITY.Value;
                list_clarity.Add(item.Clarity.ToString());
            }

            #endregion

            #region COLOR
            HtmlInputCheckBox chk_COLOR = (HtmlInputCheckBox)COLOR.FindControl("ShapeCB_" + item.Color.ToString());
            if (chk.Checked == true)
            {
                string v = chk_COLOR.Value;
                list_color.Add(item.Color.ToString());
            }


            #endregion

            #region CUT
            HtmlInputCheckBox chk_CUT = (HtmlInputCheckBox)CUT.FindControl("ShapeCB_" + item.Cut.ToString());
            if (chk.Checked == true)
            {
                string v = chk_CUT.Value;
                list_cut.Add(item.Cut.ToString());
            }

            #endregion

            #region POLISH
            HtmlInputCheckBox chk_POLISH = (HtmlInputCheckBox)POLISH.FindControl("ShapeCB_" + item.Polish.ToString());
            if (chk.Checked == true)
            {
                string v = chk_POLISH.Value;
                list_shapes.Add(item.Shape.ToString());
            }

            #endregion

            #region SYMMETRY
            HtmlInputCheckBox chk_SYMMETRY = (HtmlInputCheckBox)SYMMETRY.FindControl("ShapeCB_" + item.Symmetry.ToString());
            if (chk.Checked == true)
            {
                string v = chk_SYMMETRY.Value;
                list_symmetry.Add(item.Shape.ToString());
            }

            #endregion

            #region LAB
            HtmlInputCheckBox chk_LAB = (HtmlInputCheckBox)LAB.FindControl("ShapeCB_" + item.Lab.ToString());
            if (chk.Checked == true)
            {
                string v = chk_LAB.Value;
                list_lab.Add(item.Shape.ToString());
            }

            #endregion

            #region Name

            HtmlInputText txt_name = (HtmlInputText)NAME.FindControl("Search_By_ID".ToString());
            name = txt_name.Value;

            #endregion

        }









        ////Session["toCart"] = toCart;
        //Response.Redirect("cart.aspx");




    }

    protected void Check_Value_Price(object sender, EventArgs e)
    {





    }



}

