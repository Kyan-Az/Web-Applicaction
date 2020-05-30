using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// Summary description for ClassContacts
/// </summary>
public class ClassContacts
{
    int UserID;
    string UserFullName, UserEmail, Message;
    public ClassContacts(int UserID, string UserFullName, string UserEmail, string Message)
	{
        this.UserID = UserID;
        this.UserFullName = UserFullName;
        this.UserEmail = UserEmail;
        this.Message = Message;
	}

    //Add Contact Message
    public static void AddContactMessage(string UserID, string UserFullName, string UserEmail, string Message)
    {
        string SQL = "INSERT INTO [Contacts] ([UserID],[UserFullName],[UserEmail],[Message])";
        SQL = SQL + "VALUES ({0},'{1}','{2}','{3}')";
        SQL = string.Format(SQL, UserID, UserFullName, UserEmail, Message);
        Dbase.ChangeTable(SQL, "DB.accdb");
    }

    //Get All Contacts as DataBase
    public static DataTable GetAllContacts()
    {
        string SQL;
        SQL = "SELECT * FROM [Contacts]";
        DataTable dt = Dbase.SelectFromTable(SQL, "DB.accdb");
        return dt;
    }

    //Delete Contact messages
    public static void DeleteContact(string ContactID)
    {
        string SQL = "DELETE * FROM [Contacts] WHERE [ContactID]=" + ContactID;
        Dbase.ChangeTable(SQL, "DB.accdb");
    }

    //Update Contacts
    public static void UpdateContact(string Message)
    {
        string SQL="UPDATE [Contacts] SET [Message]='{0}'";
            SQL=string.Format(SQL,Message);
            Dbase.ChangeTable(SQL, "DB.accdb");
    }
   
}