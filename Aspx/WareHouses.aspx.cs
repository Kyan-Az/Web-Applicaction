using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Aspx_WareHouses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGrid();
        }
    }

    private void FillGrid()
    {
        try
        {
            DataTable dt = ClassWareHouses.GetAllWareHouses();
            GridViewWareHouse.DataSource = dt;
            GridViewWareHouse.DataBind();
        }
        catch (Exception ex)
        {
            LabelError.Text = ex.Message;
        }
    }


    protected void GridViewWareHouse_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridViewWareHouse.PageIndex = e.NewPageIndex;
        FillGrid();
    }
}