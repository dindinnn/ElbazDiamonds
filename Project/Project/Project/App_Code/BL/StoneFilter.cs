using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for StoneFilter
/// </summary>
public class StoneFilter
{
    public StoneFilter()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    private List<string> list_shapes = new List<string>();
    private List<string> list_clarity = new List<string>();
    private List<string> list_color = new List<string>();
    private List<string> list_cut = new List<string>();
    private List<string> list_polish = new List<string>();
    private List<string> list_symmetry = new List<string>();
    private List<string> list_lab = new List<string>();
    private double weightMin;
    private double weightMax;
    private double priceMin;
    private double priceMax;

    #region  Properties

    public List<string> List_shapes
    {
        get
        {
            return list_shapes;
        }

        set
        {
            list_shapes = value;
        }
    }

    public List<string> List_clarity
    {
        get
        {
            return list_clarity;
        }

        set
        {
            list_clarity = value;
        }
    }

    public List<string> List_color
    {
        get
        {
            return list_color;
        }

        set
        {
            list_color = value;
        }
    }

    public List<string> List_cut
    {
        get
        {
            return list_cut;
        }

        set
        {
            list_cut = value;
        }
    }

    public List<string> List_polish
    {
        get
        {
            return list_polish;
        }

        set
        {
            list_polish = value;
        }
    }

    public List<string> List_symmetry
    {
        get
        {
            return list_symmetry;
        }

        set
        {
            list_symmetry = value;
        }
    }

    public List<string> List_lab
    {
        get
        {
            return list_lab;
        }

        set
        {
            list_lab = value;
        }
    }

    public double WeightMin
    {
        get
        {
            return weightMin;
        }

        set
        {
            weightMin = value;
        }
    }

    public double WeightMax
    {
        get
        {
            return weightMax;
        }

        set
        {
            weightMax = value;
        }
    }

    public double PriceMin
    {
        get
        {
            return priceMin;
        }

        set
        {
            priceMin = value;
        }
    }

    public double PriceMax
    {
        get
        {
            return priceMax;
        }

        set
        {
            priceMax = value;
        }
    }
    #endregion

    public List<StoneView> generateSQLQuery()
    {

        string result = "SELECT * FROM View_DDL WHERE ";

        //shapes
        for (int i = 0; i < list_shapes.Count; i++)
        {
            if (i == 0)
            {
                result += "( ";
            }
            else
            {
                result += "OR ";
            }
            result += "Shape_Name = " + "'" + list_shapes[i] + "' ";
            if (i == list_shapes.Count - 1)
            {
                result += ") ";
            }
        }

        //bool isWhereExsist = false;

        if (( list_shapes.Count > 0) && (list_clarity.Count > 0))
        {
            result += "AND ";
        }

        for (int i = 0; i < list_clarity.Count; i++)
        {
            if (i == 0)
            {
                result += "( ";
            }
            else
            {
                result += "OR ";
            }
            result += "Clarity_Name = " + "'" + list_clarity[i] + "' ";
            if (i == list_clarity.Count - 1)
            {
                result += ") ";
            }
        }

        if (((list_shapes.Count > 0) || (list_clarity.Count > 0)) && (list_color.Count > 0))
        {
            result += "AND ";
        }

        for (int i = 0; i < list_color.Count; i++)
        {
            if (i == 0)
            {
                result += "( ";
            }
            else
            {
                result += "OR ";
            }
            result += "Color_Name = " + "'" + list_color[i] + "' ";
            if (i == list_color.Count - 1)
            {
                result += ") ";
            }
        }

        if (((list_shapes.Count > 0) || (list_clarity.Count > 0) || (list_color.Count > 0)) && (list_cut.Count > 0))
        {
            result += "AND ";
        }

        for (int i = 0; i < list_cut.Count; i++)
        {
            if (i == 0)
            {
                result += "( ";
            }
            else
            {
                result += "OR ";
            }
            result += "Cut_Name = " + "'" + list_cut[i] + "' ";
            if (i == list_cut.Count - 1)
            {
                result += ") ";
            }
        }

        //

        if (((list_shapes.Count > 0) || (list_clarity.Count > 0) || (list_color.Count > 0) || (list_cut.Count > 0)) && (list_polish.Count > 0))
        {
            result += "AND ";
        }

        for (int i = 0; i < list_polish.Count; i++)
        {
            if (i == 0)
            {
                result += "( ";
            }
            else
            {
                result += "OR ";
            }
            result += "Polish_Name = " + "'" + list_polish[i] + "' ";
            if (i == list_polish.Count - 1)
            {
                result += ") ";
            }
        }

        //lab

        if (((list_shapes.Count > 0) || (list_clarity.Count > 0) || (list_color.Count > 0) || (list_cut.Count > 0) || (list_polish.Count > 0)) && (list_symmetry.Count > 0))
        {
            result += "AND ";
        }

        for (int i = 0; i < list_symmetry.Count; i++)
        {
            if (i == 0)
            {
                result += "( ";
            }
            else
            {
                result += "OR ";
            }
            result += "Symmetry_Name = " + "'" + list_symmetry[i] + "' ";
            if (i == list_symmetry.Count - 1)
            {
                result += ") ";
            }
        }



        //

        if (((list_shapes.Count > 0) || (list_clarity.Count > 0) || (list_color.Count > 0) || (list_cut.Count > 0) || (list_polish.Count > 0) || (list_symmetry.Count > 0)) && (list_lab.Count > 0))
        {
            result += "AND ";
        }

        for (int i = 0; i < list_lab.Count; i++)
        {
            if (i == 0)
            {
                result += "( ";
            }
            else
            {
                result += "OR ";
            }
            result += "Lab_Name = " + "'" + list_lab[i] + "' ";
            if (i == list_lab.Count - 1)
            {
                result += ") ";
            }
        }
        //
        if (((list_shapes.Count > 0) || (list_clarity.Count > 0) || (list_color.Count > 0) || (list_cut.Count > 0) || (list_polish.Count > 0) || (list_symmetry.Count > 0) || (list_lab.Count > 0)) && weightMin > -1  )
        {
            result += "AND ";
        }

        if ( weightMin > -1 )
        {
            result += "( Stone_Weight >= " + weightMin + " AND " + "Stone_Weight <= " + weightMax + " ) ";
        }

        if (((list_shapes.Count > 0) || (list_clarity.Count > 0) || (list_color.Count > 0) || (list_cut.Count > 0) || (list_polish.Count > 0) || (list_symmetry.Count > 0) || (list_lab.Count > 0) || (weightMin > -1)) && PriceMin > -1 )
        {
            result += "AND ";
        }

        if (PriceMin > -1)
        {
            result += "( Stone_T_Sale_Price >= " + PriceMin + " AND " + "Stone_T_Sale_Price <= " + priceMax + " ) ";
        }
        return readfromyDS_f(result);
    }
    public List<StoneView> readfromyDS_f(string conString)
    {
        DBServices dbs = new DBServices();
        dbs = dbs.ReadFromDataBase_Filter("DBConnectionString", conString);
        List<StoneView> stones = new List<StoneView>();
        foreach (DataRow dr in dbs.dt.Rows)
        {
            StoneView sv = new StoneView();
            sv.Name = (string)dr["Stone_Name"];
            sv.Weight = (double)dr["Stone_Weight"];
            sv.Shape = (string)dr["Shape_Name"];
            sv.Color = (string)dr["Color_Name"];
            sv.Clarity = (string)dr["Clarity_Name"];
            sv.M1 = (double)dr["Stone_M1"];
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
}
