using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Users
/// </summary>
public class Users
{
    #region variables
    protected string username;
    protected string password;
    #endregion

    #region Properties 
    public string UserName
    {
        get
        {
            return username;
        }

        set
        {
            username = value;
        }
    }
    public string Password
    {
        get
        {
            return password;
        }

        set
        {
            password = value;
        }
    }
    #endregion

    #region constructors 
    public Users()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public Users(string _user_name, string _password)
    {
        UserName = _user_name;
        Password = _password;
    }
    #endregion

    public bool userAdminConformation(string username, string password)
    {
        DBServices dbs = new DBServices();
        return dbs.userAdminConformation("DBConnectionString", "Admin", "User_Name", username, password);
    }
}