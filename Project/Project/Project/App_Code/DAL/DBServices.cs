using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.Text;

/// <summary>
/// DBServices is a class created by me to provides some DataBase Services
/// </summary>
public class DBServices
{
    public SqlDataAdapter da;
    public DataTable dt;
    SqlConnection con = null;

    public DBServices()
{

}

//-----------------------------------------------------------------------------------------------------------
// This method creates a connection to the database according to the connectionString name in the web.config 
//-----------------------------------------------------------------------------------------------------------
public SqlConnection connect(String conString)
{
    // read the connection string from the configuration file
    string cStr = WebConfigurationManager.ConnectionStrings[conString].ConnectionString;
    SqlConnection con = new SqlConnection(cStr);
    con.Open();
    return con;
}

//--------------------------------------------------------------------------------------------------
// This method inserts a Stone to the "Stone" table
//--------------------------------------------------------------------------------------------------
public int insert_Stone(Stone S)
{
    SqlConnection con;
    SqlCommand cmd;

    try
    {
        con = connect("DBConnectionString"); // create the connection
    }
    catch (Exception ex)
    {
        // write to log
        throw (ex);
    }

        String cStr = BuildInsertCommand_Stone(S); // helper method to build the insert string

    cmd = CreateCommand(cStr, con); // create the command

    try
    {
        int numEffected = cmd.ExecuteNonQuery(); // execute the command
        return numEffected;
    }
    catch (Exception ex)
    {
        return 0;
        // write to log
        throw (ex);
    }
    finally
    {
        if (con != null)
        {
            // close the db connection
            con.Close();
        }
    }
}

//---------------------------------------------------------------------------------
// Create the SqlCommand
//---------------------------------------------------------------------------------
private SqlCommand CreateCommand(String CommandSTR, SqlConnection con)
{
    SqlCommand cmd = new SqlCommand(); // create the command object
    cmd.Connection = con;              // assign the connection to the command object
    cmd.CommandText = CommandSTR;      // can be Select, Insert, Update, Delete 
    cmd.CommandTimeout = 10;           // Time to wait for the execution' The default is 30 seconds
    cmd.CommandType = System.Data.CommandType.Text; // the type of the command, can also be stored procedure
    return cmd;
}

//--------------------------------------------------------------------
// Build the Insert command String for Stone
//--------------------------------------------------------------------
private string BuildInsertCommand_Stone(Stone S)
{
    String command;
    StringBuilder sb = new StringBuilder();
    // use a string builder to create the dynamic string
    sb.AppendFormat("Values ('{0}' , {1} , {2} , {3} , {4} , {5} , {6} , {7} , {8} , {9} , {10} "
        + ", {11} , {12} , {13} , {14} , {15} , {16} , {17} , {18} , {19} , {20} "
        + ", {21} , {22} , {23} , '{24}' , {25})",
        S.Name, S.Weight, S.Shape, S.Color, S.Clarity, S.M1, S.M2, S.M3, S.Depth, S.Table, S.Girdle, S.Culet, S.Cut,
        S.Polish, S.Symmetry, S.Fluorescence, S.Lab, S.Certificate, S.Cost_P_Discount, S.Cost_Price_CT, S.T_Cost_Price,
        S.Sale_P_Discount, S.Sale_Price_CT, S.T_Sale_Price, S.ImagePath, S.Status);

    String prefix = "INSERT INTO [dbo].[Stone] " + "(Stone_Name, Stone_Weight, Stone_Shape, Stone_Color, Stone_Clarity, "
       + "Stone_M1, Stone_M2, Stone_M3, Stone_Depth, Stone_Table, Stone_Girdle, Stone_Culet, Stone_Cut, Stone_Polish, "
       + "Stone_Symmetry, Stone_Fluorescence, Stone_Lab, Stone_Certificate, Stone_Cost_P_Discount, Stone_Cost_Price_$_ct, "
       + "Stone_T_Cost_Price, Stone_Sale_P_Discount, Stone_Sale_Price_$_ct, Stone_T_Sale_Price, Stone_Image, Stone_Status) ";
    command = prefix + sb.ToString();
    return command;
}

    //--------------------------------------------------------------------
    // Read from the DB into a table - ActiveStones
    //--------------------------------------------------------------------
    //public DBServices ReadFromDataBase_ActiveStones(string conString, string tableName)
    //{

    //    DBServices dbS = new DBServices(); // create a helper class
    //    con = new SqlConnection();
    //    try
    //    {
    //        con = dbS.connect(conString); // open the connection to the database/

    //        String selectStr = "SELECT * FROM " + tableName + " where Status = 'True'"; // create the select that will be used by the adapter to select data from the DB

    //        SqlDataAdapter da = new SqlDataAdapter(selectStr, con); // create the data adapter

    //        DataSet ds = new DataSet(); // create a DataSet and give it a name (not mandatory) as defualt it will be the same name as the DB
    //        da.Fill(ds);                        // Fill the datatable (in the dataset), using the Select command

    //        DataTable dt = ds.Tables[0];

    //        // add the datatable and the dataa adapter to the dbS helper class in order to be able to save it to a Session Object
    //        dbS.dt = dt;
    //        dbS.da = da;

    //        return dbS;
    //    }
    //    catch (Exception ex)
    //    {
    //        // write to log
    //        throw ex;
    //    }
    //    finally
    //    {
    //        if (con != null)
    //        {
    //            con.Close();
    //        }
    //    }
    //}

    //--------------------------------------------------------------------
    // Read from the DB into a table
    //--------------------------------------------------------------------
    public DBServices ReadFromDataBase(string conString, string tableName)
    {
        DBServices dbS = new DBServices(); // create a helper class
        SqlConnection con = null;

        try
        {
            con = dbS.connect(conString); // open the connection to the database/
            String selectStr = "SELECT * FROM " + tableName; // create the select that will be used by the adapter to select data from the DB
            SqlDataAdapter da = new SqlDataAdapter(selectStr, con); // create the data adapter
            DataSet ds = new DataSet(); // create a DataSet and give it a name (not mandatory) as defualt it will be the same name as the DB
            da.Fill(ds);                        // Fill the datatable (in the dataset), using the Select command
            DataTable dt = ds.Tables[0];
            // add the datatable and the dataa adapter to the dbS helper class in order to be able to save it to a Session Object
            dbS.dt = dt;
            dbS.da = da;
            return dbS;
        }
        catch (Exception ex)
        {
            // write to log
            throw ex;
        }
        finally
        {
            if (con != null)
            {
                con.Close();
            }
        }
    }

    //--------------------------------------------------------------------
    // Read from the DB into a table
    //--------------------------------------------------------------------
    public DBServices ReadFromDbView(string conString, string viewName)
    {
        DBServices dbS = new DBServices(); // create a helper class
        SqlConnection con = null;

        try
        {
            con = dbS.connect(conString); // open the connection to the database/
            String selectStr = "SELECT * FROM " + viewName; // create the select that will be used by the adapter to select data from the DB
            SqlDataAdapter da = new SqlDataAdapter(selectStr, con); // create the data adapter
            DataSet ds = new DataSet(); // create a DataSet and give it a name (not mandatory) as defualt it will be the same name as the DB
            da.Fill(ds);                        // Fill the datatable (in the dataset), using the Select command
            DataTable dt = ds.Tables[0];
            // add the datatable and the dataa adapter to the dbS helper class in order to be able to save it to a Session Object
            dbS.dt = dt;
            dbS.da = da;
            return dbS;
        }
        catch (Exception ex)
        {
            // write to log
            throw ex;
        }
        finally
        {
            if (con != null)
            {
                con.Close();
            }
        }
    }

    ////---------------------------------------------------------------------------------
    //// update the dataset into the database
    ////---------------------------------------------------------------------------------
    //public void Update()
    //{
    //    // the command build will automatically create insert/update/delete commands according to the select command
    //    SqlCommandBuilder builder = new SqlCommandBuilder(da);
    //    da.Update(dt);
    //}

    //---------------------------------------------------------------------------------
    // userConformation
    //---------------------------------------------------------------------------------
    public bool userAdminConformation(string conString, string tableName, string fieldName, string username, string password)
    {

        SqlConnection con = null;

        try
        {
            con = connect(conString); // create a connection to the database using the connection String defined in the web config file

            String selectSTR = "Select * from Admin where User_Name='" + username + "' and User_Password = '" + password + "'";

            SqlCommand cmd = new SqlCommand(selectSTR, con);

            // get a reader
            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection); // CommandBehavior.CloseConnection: the connection will be closed after reading has reached the end

            if (dr.Read())
            {
                return true;
            }
            else return false;
        }
        catch (Exception ex)
        {
            // write to log          
            return false;
        }
        finally
        {
            if (con != null)
            {
                con.Close();
            }
        }
    }


    //--------------------------------------------------------------------------------------------------
    // This method insert a Customer 
    //--------------------------------------------------------------------------------------------------
    public int insert_Customer(Customers c)
    {

        SqlConnection con;
        SqlCommand cmd;

        try
        {
            con = connect("DBConnectionString"); // create the connection
        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }

        String cStr = BuildInsertCommand_Customer(c);      // helper method to build the insert string
        cmd = CreateCommand(cStr, con);             // create the command

        try
        {
            int numEffected = cmd.ExecuteNonQuery(); // execute the command
            return numEffected;
        }
        catch (Exception ex)
        {
            return 0;
            // write to log
            throw (ex);
        }

        finally
        {
            if (con != null)
            {
                // close the db connection
                con.Close();
            }
        }

    }
    //--------------------------------------------------------------------
    // Build the Insert command String of new category
    //--------------------------------------------------------------------
    private string BuildInsertCommand_Customer(Customers c)
    {
        String command;

        StringBuilder sb = new StringBuilder();
        // use a string builder to create the dynamic string
        sb.AppendFormat("Values('{0}', '{1}' , '{2}' , '{3}' , '{4}' , '{5}' , '{6}' , '{7}' , '{8}' , '{9}' "
            + ")", c.Username, c.Password, c.FirstName, c.LastName, c.CompanyName, c.Phone, c.Address, c.City, c.Country, c.Email);
        String prefix = "INSERT INTO [dbo].[Customer] " + "(User_Name, User_Password, First_Name, Last_Name, Company_Name, Phone, Address, City, Country, Email) ";
        command = prefix + sb.ToString();
        return command;
    }

    //---------------------------------------------------------------------------------
    // IsCustomerExist
    //---------------------------------------------------------------------------------
    public bool IsCustomerExist(string conString, string username)
    {
        SqlConnection con = null;
        try
        {
            con = connect(conString); // create a connection to the database using the connection String defined in the web config file
            String selectSTR = "Select * from Customer where User_Name= '" + username + "'";
            SqlCommand cmd = new SqlCommand(selectSTR, con);
            // get a reader
            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection); // CommandBehavior.CloseConnection: the connection will be closed after reading has reached the end
            //int usertype;
            if (dr.Read())
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        catch (Exception ex)
        {
            // write to log
            throw (ex);
        }
        finally
        {
            if (con != null)
            {
                con.Close();
            }
        }
    }


    ////---------------------------------------------------------------------------------
    //// Amount_Check
    ////---------------------------------------------------------------------------------
    //public int amountCheck(string Stoneame)
    //{
    //    SqlConnection con;
    //    SqlCommand cmd;

    //    try
    //    {
    //        con = connect("DBConnectionString"); // create the connection
    //    }
    //    catch (Exception ex)
    //    {
    //        // write to log
    //        throw (ex);
    //    }

    //    String str = "SELECT Amount FROM Stone where [Stone_Name] = '" + Stoneame + "'";

    //    cmd = CreateCommand(str, con); // create the command

    //    try
    //    {
    //        int amount = int.Parse(cmd.ExecuteScalar().ToString()); // execute the command
    //        return amount;
    //    }
    //    catch (Exception ex)
    //    {
    //        return 0;
    //        // write to log
    //        throw (ex);
    //    }

    //    finally
    //    {
    //        if (con != null)
    //        {
    //            // close the db connection
    //            con.Close();
    //        }
    //    }
    //}


    ////---------------------------------------------------------------------------------
    //// insertsale
    ////---------------------------------------------------------------------------------
    //public int insertsale(Sales sale)
    //{
    //    SqlConnection con;
    //    SqlCommand cmd;

    //    try
    //    {
    //        con = connect("DBConnectionString"); // create the connection
    //    }
    //    catch (Exception ex)
    //    {
    //        // write to log
    //        throw (ex);
    //    }

    //    String cStr = BuildInsertCommand_sale(sale);      // helper method to build the insert string

    //    cmd = CreateCommand(cStr, con);             // create the command

    //    try
    //    {
    //        int numEffected = cmd.ExecuteNonQuery(); // execute the command
    //        return numEffected;
    //    }
    //    catch (Exception ex)
    //    {
    //        return 0;
    //        // write to log
    //        throw (ex);
    //    }

    ////    finally
    //    {
    //        if (con != null)
    //        {
    //            // close the db connection
    //            con.Close();
    //        }
    //    }
    //}

    ////--------------------------------------------------------------------
    //// Build the Insert command String of new Sale
    ////--------------------------------------------------------------------
    //private String BuildInsertCommand_sale(Sales sale)
    //{

    //    String command;
    //    StringBuilder sb = new StringBuilder();
    //    // use a string builder to create the dynamic string
    //    sb.AppendFormat("Values('{0}',{1} ,{2},'{3}','{4}',{5})", sale.Stone_Name.Title, sale.Total, sale.Amount, sale.Customer_Name, sale.Date, sale.Payment);
    //    String prefix = "INSERT INTO[dbo].[Sales] " + "(Stone_Name, Total, Amount, Customer_Name,Date,Payment)";
    //    command = prefix + sb.ToString();

    //    return command;
    //}


    ////---------------------------------------------------------------------------------
    //// UpdateStoneaftersale
    ////---------------------------------------------------------------------------------


    //public int after_sale_amount(Stone Stone, int amount)
    //{

    //    SqlConnection con;
    //    SqlCommand cmd;

    //    try
    //    {
    //        con = connect("DBConnectionString"); // create the connection
    //    }
    //    catch (Exception ex)
    //    {
    //        // write to log
    //        throw (ex);
    //    }

    //    String cStr = BuildAmountCommand_Update(Stone, amount);      // helper method to build the insert string

    //    cmd = CreateCommand(cStr, con);             // create the command

    //    try
    //    {
    //        int numEffected = cmd.ExecuteNonQuery(); // execute the command
    //        return numEffected;
    //    }
    //    catch (Exception ex)
    //    {
    //        return 0;
    //        // write to log
    //        throw (ex);
    //    }

    //    finally
    //    {
    //        if (con != null)
    //        {
    //            // close the db connection
    //            con.Close();
    //        }
    //    }
    //}

    ////--------------------------------------------------------------------
    //// Build the UPDATE command String of new Update after Sale
    ////--------------------------------------------------------------------
    //private String BuildAmountCommand_Update(Stone Stone, int amount)
    //{
    //    String prefix = "UPDATE Stone SET [Amount] = '" + (Stone.amountCheck(Stone) - amount) + "'  WHERE Stone_Name ='" + Stone.Title + "'";
    //    return prefix;
    //}

}
