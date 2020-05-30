using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Admins
/// </summary>
public class ClassAdmins
{
    string AdminFullName, AdminEmail, AdminPassWord, UserType;
    public ClassAdmins(string AdminFullName, string AdminEmail, string AdminPassWord, string UserType)
    {
        this.AdminFullName = AdminFullName;
        this.AdminEmail = AdminEmail;
        this.AdminPassWord = AdminPassWord;
        this.UserType = UserType;
    }

    //Login Admin
    public static ClassAdmins GetAdmin(string AdminEmail, string AdminPassWord)
    {
        string MyQuery = "SELECT * FROM [Admins] WHERE [AdminEmail]='{0}' AND [AdminPassWord]='{1}'";
        MyQuery = string.Format(MyQuery, AdminEmail, AdminPassWord);
        DataTable dt = Dbase.SelectFromTable(MyQuery, "DB.accdb");
        if (dt.Rows.Count == 0)
            return null;
        return new ClassAdmins(dt.Rows[0]["AdminFullName"].ToString(), AdminEmail, AdminPassWord, "Admin");
    }

    

}