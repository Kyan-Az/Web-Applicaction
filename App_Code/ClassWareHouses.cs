using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data;
/// <summary>
/// Summary description for ClassWareHouses
/// </summary>
public class ClassWareHouses
{
    string WareHouseName;
    int WareHouseContainers, MaxContainers;
    public ClassWareHouses(string WareHouseName, int WareHouseContainers, int MaxContainers)
    {
        this.WareHouseName = WareHouseName;
        this.WareHouseContainers = WareHouseContainers;
        this.MaxContainers = MaxContainers;
    }

    //Add WareHouse
    public static void AddWareHouse(string WareHouseName, string WareHouseContainers, string MaxContainers)
    {
        string SQL="INSERT INTO [WareHouses] ([WareHouseName],[WareHouseContainers],[MaxContainers])";
        SQL=SQL+"VALUES ('{0}',{2},{3})";
        SQL=string.Format(WareHouseName,WareHouseContainers,MaxContainers);
        Dbase.ChangeTable(SQL,"DB.accdb");
    }

    //Add Containers To Ware House
    public static void AddContainers(int WareHouseContainers,string WareHouseName)
    {
        string SQL = "UPDATE [WareHouses] SET [WareHouseContainers]={0} WHERE [WareHouseName]='{1}'";
        SQL = string.Format(SQL, WareHouseContainers, WareHouseName);
        Dbase.ChangeTable(SQL, "Db.accdb");
    }

    //Get All WareHouses as a DataBase
    public static DataTable GetAllWareHouses()
    {
        string SQL;
        SQL = "SELECT * FROM [WareHouses]";
        DataTable dt = Dbase.SelectFromTable(SQL, "DB.accdb");
        return dt;
    }

    //Delete WareHouse
    public static void DeleteWareHouse(string WareHouseID)
    {
        string SQL = "DELETE * FROM [WareHouses] WHERE [WareHouseID]=" + WareHouseID;
        Dbase.ChangeTable(SQL, "DB.accdb");
    }

    //Updtae WareHouse
    public static void UpdateWareHouse(string WareHouseName, string WareHouseContainers, string MaxContainers, string WareHouseID)
    {
        string SQL = "UPDATE [WareHouses] SET [WareHouseName]='{0}',[WareHouseContainers]='{1}',[MaxContainers]='{2}' WHERE [WareHouseID]={3}";
        SQL = string.Format(SQL, WareHouseName,WareHouseContainers, MaxContainers,WareHouseID);
        Dbase.ChangeTable(SQL, "DB.accdb");
    }
}