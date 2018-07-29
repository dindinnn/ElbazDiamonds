using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class www_customer_Cert : System.Web.UI.Page
{

    public List<StoneView> list_stones_cart = new List<StoneView>();
    StoneView s = new StoneView();
    Customer customerUser = new Customer();
    Order o = new Order();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User_Customer"] == null)
        {
           

            Response.Redirect("Login.aspx");
        }

        customerUser = (Customer)Session["User_Customer"];
        List<string> stones_names =  o.readfromyDS_o(customerUser.Username.ToString());
        foreach (var item in stones_names)
        {
            list_stones_cart.Add( s.getStone_Byname(item.ToString()));
        }
            

        //addproducts();

        if (!IsPostBack)
        {
            addproducts_c();

        }
    }

    protected void addproducts_c()
    {
        Table T = new Table();
        T.Attributes["Class"] = "table-shopping-cart";
        TableHeaderRow tr_1 = new TableHeaderRow();
        tr_1.Attributes["Class"] = "table-head";
        TableHeaderCell th1 = new TableHeaderCell();
        th1.Attributes["Class"] = "column-1";

        TableHeaderCell th2 = new TableHeaderCell();
        th1.Attributes["Class"] = "column-2";

        TableHeaderCell th3 = new TableHeaderCell();
        th1.Attributes["Class"] = "column-3";

        TableHeaderCell th5 = new TableHeaderCell();
        th1.Attributes["Class"] = "column-5";

        tr_1.Cells.Add(th1);
        tr_1.Cells.Add(th2);
        tr_1.Cells.Add(th3);
        tr_1.Cells.Add(th5);





        //list_stones_cart = s.getStone_Byname( string name);

        foreach (var item in list_stones_cart)
        {


            #region create  HtmlGenericControl


            TableRow New_stone_div1_c = new TableRow();
            TableCell New_stone_div2_c = new TableCell();
            HtmlGenericControl New_stone_divimage_c = new HtmlGenericControl("div");
            HtmlImage img_for_stone_c = new HtmlImage();
            TableCell New_stone_div4_c = new TableCell();
            TableCell New_stone_div5_c = new TableCell();
            TableCell New_stone_div6_c = new TableCell();

       
            #endregion

            #region class for  HtmlGenericControl

            New_stone_div1_c.Attributes["Class"] = "table-row";
            New_stone_div2_c.Attributes["Class"] = "column-1";
            New_stone_divimage_c.Attributes["Class"] = "cart-img-product b-rad-4 o-f-hidden";
            New_stone_div4_c.Attributes["Class"] = "column-2";
            New_stone_div5_c.Attributes["Class"] = "column-3";
            New_stone_div6_c.Attributes["Class"] = "column-5";
            




            #endregion

            img_for_stone_c.Src = item.ImagePath;
            New_stone_div4_c.Text = item.Name.ToString();
            New_stone_div5_c.Text = item.Sale_Price_CT.ToString();
            New_stone_div6_c.Text = item.T_Sale_Price.ToString();


            New_stone_divimage_c.Controls.Add(img_for_stone_c);
            New_stone_div2_c.Controls.Add(New_stone_divimage_c);
            New_stone_div1_c.Cells.Add(New_stone_div2_c);
            New_stone_div1_c.Cells.Add(New_stone_div4_c);
            New_stone_div1_c.Cells.Add(New_stone_div5_c);
            New_stone_div1_c.Cells.Add(New_stone_div6_c);
            T.Rows.Add(New_stone_div1_c);




        }
        
        divfortable.Controls.Add(T);


    }







}