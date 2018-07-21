using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Users
/// </summary>
public class Users
{
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

    protected string userName;
    protected string password;

    public string UserName
    {
        get
        {
            return userName;
        }

        set
        {
            userName = value;
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

    //public bool userAdminConformation(string username, string password)
    //{
    //    DBServices dbs = new DBServices();
    //    return dbs.userAdminConformation("DBConnectionString", "Admin", "User_Name", username, password);

    //}
}