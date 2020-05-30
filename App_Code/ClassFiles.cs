using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for ClassFiles
/// </summary>
public class ClassFiles
{ 

	public ClassFiles()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static DataTable GetAll(bool IsImage)
    {
        string SQL = "SELECT * FROM [Files] WHERE [IsImage]=" + IsImage.ToString();
        SQL += " ORDER BY [UploadDate] DESC";
        DataTable dt = Dbase.SelectFromTable(SQL,"DB.accdb");
        return dt;
    }

    public static void Delete(string strID)
    {
        string SQL = "DELETE * FROM [Files] WHERE [FileID]=" + strID;
        Dbase.ChangeTable(SQL, "db.accdb");
    }

    public static void Insert(string FileName, int FileSize, string Description, string IsImage)
    {
        string SQL = "INSERT INTO [Files] ([FileName],[FileSize],[Description],[UploadDate],[IsImage])";
        SQL += " VALUES (";
        if (IsImage.ToUpper().Equals("True"))
        {
            SQL += "'" + "Images\\" + FileName + "',";
        }
        else
        {
            SQL += "'" + "Docs\\" + FileName + "',";
        }
        SQL += FileSize + ",";
        SQL += "'" + Description + "',";
        SQL += "#" + DateTime.Now.ToString() + "#,";
        SQL += IsImage + ")";
        Dbase.ChangeTable(SQL, "DB.accdb");
    }
}