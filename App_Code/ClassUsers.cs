using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for ClassUsers
/// </summary>
public class ClassUsers
{
    string UserFullName, UserEmail, UserPassWord, UserType;

    public ClassUsers()
    { }

    public ClassUsers(string UserFullName, string UserEmail, string UserPassWord, string UserType)
    {
        this.UserFullName = UserFullName;
        this.UserEmail = UserEmail;
        this.UserPassWord = UserPassWord;
        this.UserType = UserType;
    }

    //Login User
    public static ClassUsers GetUser(string UsersEmail, string UsersPassWord)
    {
        string MyQuery = "SELECT * FROM [Users] WHERE [UserEmail]='{0}' AND [UsersPassWord]='{1}'";
        MyQuery = string.Format(MyQuery, UsersEmail, UsersPassWord);
        DataTable dt = Dbase.SelectFromTable(MyQuery, "DB.accdb");
        if (dt.Rows.Count == 0)
            return null;
        return new ClassUsers(dt.Rows[0]["UsersFullName"].ToString(), UsersEmail, UsersPassWord, "Users");
    }

    //Add User
    public static void AddUser(string UserFullName, string UserEmail, string UserPassWord, string UserType)
    {
        string SQL = "INSERT INTO [Users] ([UserFullName],[UserEmail],[UserPassWord],[UserType])";
        SQL = SQL + "VALUES ('{0}','{1}','{2}','{3}')";
        SQL = string.Format(SQL, UserFullName, UserEmail, UserPassWord, UserType);
        Dbase.ChangeTable(SQL, "DB.accdb");

        string SQL2 = "INSERT INTO [Carts] ([CartID],[CartProduct])";
        SQL2 += "VALUES ('{0}','')";
        SQL2 = string.Format(SQL2, GetUserID(UserEmail));
        Dbase.ChangeTable(SQL2, "DB.accdb");
    }

    //Get all users as data table
    public static DataTable GetAllUsers()
    {
        string SQL;
        SQL = "SELECT * FROM [Users]";
        DataTable dt = Dbase.SelectFromTable(SQL, "DB.accdb");
        return dt;
    }

    //Get all as Html Table for Users
    public string GetAllAsHTMLTableUsers()
    {
        DataTable dt = ClassUsers.GetAllUsers();
        string strTable = "<table border=1><tr>";
        for (int i = 0; i < dt.Columns.Count; i++)
        {
            strTable += "<td>" + dt.Columns[i].ColumnName + "</td>";
        }
        strTable += "</tr>";

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            strTable += "<tr>";
            for (int j = 0; j < dt.Columns.Count; j++)
                strTable += "<td>" + dt.Rows[i][dt.Columns[j].ColumnName] + "</td>";
            strTable += "</tr>";
        }
        strTable += "</table>";
        return strTable;

    }

    //Delete User
    public static void DeleteUser(string UserID)
    {
        string SQL = "DELETE * FROM [Users] WHERE [UserID]=" + UserID;
        Dbase.ChangeTable(SQL, "DB.accdb");
    }
    
    //Updtae User
    public static void UpdateUser(string UserFullName,string UserEmail,string UserPassWord,string UserType,string UserID)
    {
        string SQL = "UPDATE [Users] SET [UserFullName]='{0}',[UserEmail]='{1}',[UserPassWord]='{2}',[UserType]='{3}' WHERE [UserID]={4}";
        SQL = string.Format(SQL,UserFullName, UserEmail, UserPassWord, UserType, UserID);
        Dbase.ChangeTable(SQL, "DB.accdb");
    }

    //Get UserID
    public static string GetUserID(string UserEmail)
    {
        string MyQuery = "SELECT [UserID] FROM [Users] WHERE [UserEmail]='{0}'";
        MyQuery = string.Format(MyQuery, UserEmail);
        DataTable dt = Dbase.SelectFromTable(MyQuery, "DB.accdb");
        if (dt.Rows.Count == 0)
            return null;
        return dt.Rows[0]["UserID"].ToString();
    }

}