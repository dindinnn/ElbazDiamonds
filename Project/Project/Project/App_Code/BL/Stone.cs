using System;
using System.Collections.Generic;
using System.Data;


/// <summary>
/// Summary description for Stone
/// </summary>
public class Stone
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
    public Stone()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public Stone(
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

    #region methods
    public int insert(Stone S)
    {
        DBServices dbs = new DBServices();
        
        int numAffected = dbs.insert_Stone(S);
        return numAffected;
    }

    public List<Stone> readStoneDS()
    {
        int i = 0;
        DBServices dbs = new DBServices();
        dbs = dbs.ReadFromDataBase_ActiveStones("DBConnectionString", "Stone");
        List<Stone> Stones = new List<Stone>();
        foreach (DataRow dr in dbs.dt.Rows)
        {
            Stone p = new Stone();
            p.id = i++;
            p.Title = (string)dr["Stone_name"];
            p.name = (string)dr["Shape_name"];
            p.ImagePath = (string)dr["Image"];
            p.Price = double.Parse(dr["Price"].ToString());
            p.Amount = int.Parse(dr["Amount"].ToString());
            p.Status = bool.Parse(dr["Status"].ToString());
            Stones.Add(p);




        }
        //חיבור מה db ומהספק החיצונ

        sepplierProxy.ExternalSupplier proxy = new sepplierProxy.ExternalSupplier();
        sepplierProxy.Stone[] StoneArr = proxy.getStones();

        foreach (var item in StoneArr)
        {
            Stone p = new Stone();
            p.id = i++;
            p.Title = item.Title;
            p.name = item.name;
            p.ImagePath = item.ImagePath;
            p.Price = item.Price;
            p.Amount = item.Amount;
            p.Status = item.Status;
            Stones.Add(p);
        }

        return Stones;
    }

    //public void discountStone(double discount)
    //{
    //    Price *= discount;
    //}

    //public int amountCheck(Stone p)
    //{

    //    DBServices dbs = new DBServices();
    //    return dbs.amountCheck(p.title);

    //}

    //public int after_sale_amount(int amount)
    //{
    //    DBServices dbs = new DBServices();
    //    return dbs.after_sale_amount(this, amount);
    //}

    #endregion
}







