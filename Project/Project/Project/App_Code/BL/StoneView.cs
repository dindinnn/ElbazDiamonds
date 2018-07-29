using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for StoneView
/// </summary>
public class StoneView
{
 


    #region variables
    protected string name;
    protected double weight;
    protected string shape;
    protected string color;
    protected string clarity;
    protected double m1;
    protected double m2;
    protected double m3;
    protected double depth;
    protected double table;
    protected string girdle;
    protected string culet;
    protected string cut;
    protected string polish;
    protected string symmetry;
    protected string fluorescence;
    protected string lab;
    protected long certificate;
    protected double cost_p_discount;
    protected double cost_price_ct;
    protected double t_cost_price;
    protected double sale_p_discount;
    protected double sale_price_ct;
    protected double t_sale_price;
    protected string imagePath;
    protected string status;
    #endregion

    #region Properties 
    public string Name
    {
        get { return name; }
        set { name = value; }
    }
    public double Weight
    {
        get { return weight; }
        set { weight = value; }
    }
    public string Shape
    {
        get { return shape; }
        set { shape = value; }
    }
    public string Color
    {
        get { return color; }
        set { color = value; }
    }
    public string Clarity
    {
        get { return clarity; }
        set { clarity = value; }
    }
    public double M1
    {
        get { return m1; }
        set { m1 = value; }
    }
    public double M2
    {
        get { return m2; }
        set { m2 = value; }
    }
    public double M3
    {
        get { return m3; }
        set { m3 = value; }
    }
    public double Depth
    {
        get { return depth; }
        set { depth = value; }
    }
    public double Table
    {
        get { return table; }
        set { table = value; }
    }
    public string Girdle
    {
        get { return girdle; }
        set { girdle = value; }
    }
    public string Culet
    {
        get { return culet; }
        set { culet = value; }
    }
    public string Cut
    {
        get { return cut; }
        set { cut = value; }
    }
    public string Polish
    {
        get { return polish; }
        set { polish = value; }
    }
    public string Symmetry
    {
        get { return symmetry; }
        set { symmetry = value; }
    }
    public string Fluorescence
    {
        get { return fluorescence; }
        set { fluorescence = value; }
    }
    public string Lab
    {
        get { return lab; }
        set { lab = value; }
    }
    public long Certificate
    {
        get { return certificate; }
        set { certificate = value; }
    }
    public double Cost_P_Discount
    {
        get { return cost_p_discount; }
        set { cost_p_discount = value; }
    }
    public double Cost_Price_CT
    {
        get { return cost_price_ct; }
        set { cost_price_ct = value; }
    }
    public double T_Cost_Price
    {
        get { return t_cost_price; }
        set { t_cost_price = value; }
    }
    public double Sale_P_Discount
    {
        get { return sale_p_discount; }
        set { sale_p_discount = value; }
    }
    public double Sale_Price_CT
    {
        get { return sale_price_ct; }
        set { sale_price_ct = value; }
    }
    public double T_Sale_Price
    {
        get { return t_sale_price; }
        set { t_sale_price = value; }
    }
    public string ImagePath
    {
        get { return imagePath; }
        set { imagePath = value; }
    }
    public string Status
    {
        get { return status; }
        set { status = value; }
    }
    #endregion

    #region constructors 
    public StoneView()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public StoneView(
        string _name,
        double _weight,
        string _shape,
        string _color,
        string _clarity,
        double _m1,
        double _m2,
        double _m3,
        double _depth,
        double _table,
        string _girdle,
        string _culet,
        string _cut,
        string _polish,
        string _symmetry,
        string _fluorescence,
        string _lab,
        long _certificate,
        double _cost_P_Discount,
        double _cost_Price_CT,
        double _t_Cost_Price,
        double _sale_P_Discount,
        double _sale_Price_CT,
        double _t_Sale_Price,
        string _imagePath,
        string _status)
    {
        Name = _name;
        Weight = _weight;
        Shape = _shape;
        Color = _color;
        Clarity = _clarity;
        M1 = _m1;
        M2 = _m2;
        M3 = _m3;
        Depth = _depth;
        Table = _table;
        Girdle = _girdle;
        Culet = _culet;
        Cut = _cut;
        Polish = _polish;
        Symmetry = _symmetry;
        Fluorescence = _fluorescence;
        Lab = _lab;
        Certificate = _certificate;
        Cost_P_Discount = _cost_P_Discount;
        Cost_Price_CT = _cost_Price_CT;
        T_Cost_Price = _t_Cost_Price;
        Sale_P_Discount = _sale_P_Discount;
        Sale_Price_CT = _sale_Price_CT;
        T_Sale_Price = _t_Sale_Price;
        ImagePath = _imagePath;
        Status = _status;
    }
    #endregion

    static public List<StoneView> getAllStonesViews()
    {
        DBServices dbs = new DBServices();
        dbs = dbs.ReadFromDbView("DBConnectionString", "View_DDL");
        List<StoneView> stones = new List<StoneView>();
        foreach (DataRow dr in dbs.dt.Rows)
        {
            StoneView sv = new StoneView();
            sv.Name = (string)dr["Stone_Name"];
            sv.Weight = (double)dr["Stone_Weight"];
            sv.Shape = (string)dr["Shape_Name"];
            sv.Color = (string)dr["Color_Name"];
            sv.Clarity = (string)dr["Clarity_Name"];
            sv.m1 = (double)dr["Stone_M1"];
            sv.M2 = (double)dr["Stone_M1"];
            sv.M3 = (double)dr["Stone_M2"];
            sv.Depth = (double)dr["Stone_Depth"];
            sv.Table = (double)dr["Stone_Table"];
            sv.Girdle = (string)dr["Girdle_Name"];
            sv.Culet = (string)dr["Culet_Name"];
            sv.Cut = (string)dr["Cut_Name"];
            sv.Polish = (string)dr["Polish_Name"];
            sv.Symmetry = (string)dr["Symmetry_Name"];
            sv.Fluorescence = (string)dr["Fluorescence_Name"];
            sv.Lab = (string)dr["Lab_Name"];
            sv.Certificate = (long)dr["Stone_Certificate"];
            sv.Cost_P_Discount = (double)dr["Stone_Cost_P_Discount"];
            sv.Cost_Price_CT = (double)dr["Stone_Cost_Price_$_ct"];
            sv.T_Cost_Price = (double)dr["Stone_T_Cost_Price"];
            sv.Sale_P_Discount = (double)dr["Stone_Sale_P_Discount"];
            sv.Sale_Price_CT = (double)dr["Stone_Sale_Price_$_ct"];
            sv.T_Sale_Price = (double)dr["Stone_T_Sale_Price"];
            sv.ImagePath = (string)dr["Stone_Image"];
            sv.Status = (string)dr["Status_Name"];
            stones.Add(sv);
        }
        return stones;
    }

    static public StoneView getStoneDetails(string name)
    {
        DBServices dbs = new DBServices();
        dbs = dbs.ReadFromDbView("DBConnectionString", "View_DDL", name);
        StoneView sv = new StoneView();
        //foreach (DataRow dr in dbs.dt.Rows)
        //{
        DataRow dr = dbs.dt.Rows[0];
        sv.Name = (string)dr["Stone_Name"];
        sv.Weight = (double)dr["Stone_Weight"];
        sv.Shape = (string)dr["Shape_Name"];
        sv.Color = (string)dr["Color_Name"];
        sv.Clarity = (string)dr["Clarity_Name"];
        sv.Cut = (string)dr["Cut_Name"];
        sv.Polish = (string)dr["Polish_Name"];
        sv.Symmetry = (string)dr["Symmetry_Name"];
        sv.Cost_P_Discount = (double)dr["Stone_Cost_P_Discount"];
        sv.T_Cost_Price = (double)dr["Stone_T_Cost_Price"];
        sv.Sale_P_Discount = (double)dr["Stone_Sale_P_Discount"];
        sv.T_Sale_Price = (double)dr["Stone_T_Sale_Price"];
        sv.ImagePath = (string)dr["Stone_Image"];
        sv.Status = (string)dr["Status_Name"];
        //}
        return sv;
    }

    public List<StoneView> getAllStonesViewsForaspx()
    {
        DBServices dbs = new DBServices();
        dbs = dbs.ReadFromDbView("DBConnectionString", "View_DDL");
        List<StoneView> stones = new List<StoneView>();
        foreach (DataRow dr in dbs.dt.Rows)
        {
            StoneView sv = new StoneView();
            sv.Name = (string)dr["Stone_Name"];
            sv.Weight = (double)dr["Stone_Weight"];
            sv.Shape = (string)dr["Shape_Name"];
            sv.Color = (string)dr["Color_Name"];
            sv.Clarity = (string)dr["Clarity_Name"];
            sv.m1 = (double)dr["Stone_M1"];
            sv.M2 = (double)dr["Stone_M1"];
            sv.M3 = (double)dr["Stone_M2"];
            sv.Depth = (double)dr["Stone_Depth"];
            sv.Table = (double)dr["Stone_Table"];
            sv.Girdle = (string)dr["Girdle_Name"];
            sv.Culet = (string)dr["Culet_Name"];
            sv.Cut = (string)dr["Cut_Name"];
            sv.Polish = (string)dr["Polish_Name"];
            sv.Symmetry = (string)dr["Symmetry_Name"];
            sv.Fluorescence = (string)dr["Fluorescence_Name"];
            sv.Lab = (string)dr["Lab_Name"];
            sv.Certificate = (long)dr["Stone_Certificate"];
            sv.Cost_P_Discount = (double)dr["Stone_Cost_P_Discount"];
            sv.Cost_Price_CT = (double)dr["Stone_Cost_Price_$_ct"];
            sv.T_Cost_Price = (double)dr["Stone_T_Cost_Price"];
            sv.Sale_P_Discount = (double)dr["Stone_Sale_P_Discount"];
            sv.Sale_Price_CT = (double)dr["Stone_Sale_Price_$_ct"];
            sv.T_Sale_Price = (double)dr["Stone_T_Sale_Price"];
            sv.ImagePath = (string)dr["Stone_Image"];
            sv.Status = (string)dr["Status_Name"];
            stones.Add(sv);
        }
        return stones;
    }

    public List<string> readfromyDS(string tablNeame)
    {
        DBServices dbs = new DBServices();
        dbs = dbs.ReadFromDataBase("DBConnectionString", tablNeame);
        List<string> readfromyDS = new List<string>();
        foreach (DataRow dr in dbs.dt.Rows)
        {
            string drdbs = (string)dr[tablNeame + "_Name"];
            readfromyDS.Add(drdbs.ToString());
        }
        return readfromyDS;
    }

    public StoneView getStone_Byname(string name)
    {
        DBServices dbs = new DBServices();
        dbs = dbs.ReadFromDbView("DBConnectionString", "View_DDL", name);
        StoneView sv = new StoneView();
        //foreach (DataRow dr in dbs.dt.Rows)
        //{
        DataRow dr = dbs.dt.Rows[0];
        sv.Name = (string)dr["Stone_Name"];
        sv.Weight = (double)dr["Stone_Weight"];
        sv.Shape = (string)dr["Shape_Name"];
        sv.Color = (string)dr["Color_Name"];
        sv.Clarity = (string)dr["Clarity_Name"];
        sv.m1 = (double)dr["Stone_M1"];
        sv.M2 = (double)dr["Stone_M1"];
        sv.M3 = (double)dr["Stone_M2"];
        sv.Depth = (double)dr["Stone_Depth"];
        sv.Table = (double)dr["Stone_Table"];
        sv.Girdle = (string)dr["Girdle_Name"];
        sv.Culet = (string)dr["Culet_Name"];
        sv.Cut = (string)dr["Cut_Name"];
        sv.Polish = (string)dr["Polish_Name"];
        sv.Symmetry = (string)dr["Symmetry_Name"];
        sv.Fluorescence = (string)dr["Fluorescence_Name"];
        sv.Lab = (string)dr["Lab_Name"];
        sv.Certificate = (long)dr["Stone_Certificate"];
        sv.Cost_P_Discount = (double)dr["Stone_Cost_P_Discount"];
        sv.Cost_Price_CT = (double)dr["Stone_Cost_Price_$_ct"];
        sv.T_Cost_Price = (double)dr["Stone_T_Cost_Price"];
        sv.Sale_P_Discount = (double)dr["Stone_Sale_P_Discount"];
        sv.Sale_Price_CT = (double)dr["Stone_Sale_Price_$_ct"];
        sv.T_Sale_Price = (double)dr["Stone_T_Sale_Price"];
        sv.ImagePath = (string)dr["Stone_Image"];
        sv.Status = (string)dr["Status_Name"];

        //}
        return sv;
    }

    public void  getAllStonesViews_byfilter(List<string> list_shapes, List<string> list_clarity, List<string> list_color,
          List<string> list_cut, List<string> list_polish, List<string> list_symmetry, List<string> list_lab, double weightMin,
            double weightMax, double priceMin, double priceMax)
    {
    
    }
}