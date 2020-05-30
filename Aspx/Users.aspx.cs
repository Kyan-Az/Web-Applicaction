using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Aspx_UseresEditor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BuildTable();
        }
    }
    private void BuildTable()
    {
        try
        {
            ClassUsers obj = new ClassUsers();
            LabelTable.Text = obj.GetAllAsHTMLTableUsers();
        }
        catch (Exception ex)
        {
            LabelTable.Text = ex.Message;
        }
    }
}