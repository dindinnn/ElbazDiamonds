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

        if(!Page.IsPostBack)
        {
            addproducts();
        }

        Button_find_diamonds.Attributes["Class"] = "flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-5";


    }
    protected void addproducts()
    {
       
        list_stones = s.getAllStonesViewsForaspx();

        foreach (var item in list_stones)
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

    protected void addproducts_ByName(string name)
    {
    
        StoneView sv =  s.getStone_Byname(name);       

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


            img_for_stone.Src = "../../" + sv.ImagePath;

            img_for_stone.Alt = "IMG-PRODUCT";

            New_stone_span_Price.InnerHtml = "Stone Weight: " + sv.Weight.ToString();

            a_stone.InnerHtml = "Stone Name: " + sv.Name.ToString();

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
   
    protected void addproducts_after_filter(List<string> list_shapes, List<string> list_clarity, List<string> list_color,
          List<string> list_cut, List<string> list_polish, List<string> list_symmetry, List<string> list_lab, double weightMin,
            double weightMax, double priceMin, double priceMax, string name)
    {
        if (name != null) { addproducts_ByName(name); }

        else
        {         
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


        #region SHAPE
        List<string> list_shapes_ = s.readfromyDS("Shape");
        foreach (var S in list_shapes_)
        {
            HtmlInputCheckBox chk_SHAPE = (HtmlInputCheckBox)SAHPE.FindControl("ShapeCB_" + S.ToString());

            if (chk_SHAPE.Checked == true)
            {
                list_shapes.Add(S.ToString());
            }
        }


        #endregion

        #region Weight

        HtmlInputGenericControl weightMin_control = (HtmlInputGenericControl)WEIGHT.FindControl("weightMin");
        if(weightMin_control.Value == "".ToString() ) { weightMin_control.Value = "0.1"; } 
        weightMin = Convert.ToDouble(weightMin_control.Value);

        HtmlInputGenericControl weightMax_control = (HtmlInputGenericControl)WEIGHT.FindControl("weightMin");
        if (weightMax_control.Value == "".ToString() ) { weightMin_control.Value = "0.1"; }
        weightMax = Convert.ToDouble(weightMin_control.Value);

        #endregion

        #region Price       

        HtmlInputGenericControl priceMin_control = (HtmlInputGenericControl)WEIGHT.FindControl("weightMin");
        if (priceMin_control.Value == "".ToString()) { weightMin_control.Value = "1"; }
        priceMin = Convert.ToDouble(weightMin_control.Value.ToString());

        HtmlInputGenericControl priceMax_control = (HtmlInputGenericControl)WEIGHT.FindControl("weightMin");
        if (priceMax_control.Value == "".ToString()) { weightMin_control.Value = "1"; }
        priceMax = Convert.ToDouble(weightMin_control.Value.ToString());

        #endregion

        #region CLARITY
        List<string> list_clarity_ = s.readfromyDS("Clarity");
        foreach (var C in list_clarity_)
        {
            CheckBox chk_CLARITY = (CheckBox)CLARITY.FindControl("ClarityCB_" + C.ToString());
            if (chk_CLARITY.Checked == true)
            {
                list_clarity.Add(C.ToString());
            }
        }

        #endregion

        #region COLOR
        List<string> list_color_ = s.readfromyDS("Color");
        foreach (var CR in list_color_)
        {
            CheckBox chk_COLOR = (CheckBox)COLOR.FindControl("ColorCB_" + CR.ToString());
            if (chk_COLOR.Checked == true)
            {
                list_color.Add(CR.ToString());
            }

        }

        #endregion

        #region CUT
        List<string> list_cut_ = s.readfromyDS("Cut");
        foreach (var CU_ in list_cut_)
        {
            CheckBox chk_CUT = (CheckBox)CUT.FindControl("CutCB_" + CU_.ToString());
            if (chk_CUT.Checked == true)
            {
                list_cut.Add(CU_.ToString());
            }
        }
        #endregion

        #region POLISH
        List<string> list_polish_ = s.readfromyDS("Polish");
        foreach (var P in list_polish_)
        {
            CheckBox chk_P = (CheckBox)POLISH.FindControl("PolishCB_" + P.ToString());
            if (chk_P.Checked == true)
            {
                list_polish.Add(P.ToString());
            }
        }
        #endregion

        #region SYMMETRY
        List<string> list_symmetry_ = s.readfromyDS("Symmetry");
        foreach (var SYM in list_symmetry_)
        {
            CheckBox chk_SYM = (CheckBox)SYMMETRY.FindControl("SymmetryCB_" + SYM.ToString());
            if (chk_SYM.Checked == true)
            {
                list_symmetry.Add(SYM.ToString());
            }
        }

        #endregion

        #region LAB
        List<string> list_lab_ = s.readfromyDS("Lab");
        foreach (var LAB_ in list_lab_)
        {
            CheckBox chk_LAB = (CheckBox)LAB.FindControl("LabCB_" + LAB_.ToString());
            if (chk_LAB.Checked == true)
            {
                list_lab.Add(LAB_.ToString());
            }
        }

        #endregion

        #region Name

        HtmlInputText txt_name = (HtmlInputText)NAME.FindControl("Search_By_ID".ToString());
        name = txt_name.Value;

        #endregion

        addproducts_after_filter(list_shapes,
         list_clarity,
         list_color,
         list_cut,
         list_polish,
         list_symmetry,
         list_lab,
         weightMin,
         weightMax,
         priceMin,
         priceMax,
         name);

        



    }
    protected void Check_Value_Price(object sender, EventArgs e)
    {





    }



}

