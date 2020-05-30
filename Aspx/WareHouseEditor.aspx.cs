using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Aspx_WareHouseEditor : System.Web.UI.Page
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

    protected void GridViewWareHouse_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridViewWareHouse.EditIndex = -1; // -1-> ViewMode  if not it will stay in EditMode
    }

    protected void GridViewWareHouse_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Insert")
        {
            TextBox WHName = (TextBox)GridViewWareHouse.FooterRow.FindControl("TextBoxInsertWareHouseName");
            TextBox WHContainers = (TextBox)GridViewWareHouse.FooterRow.FindControl("TextBoxInsertWareHouseContainers");
            TextBox MaxContainers = (TextBox)GridViewWareHouse.FooterRow.FindControl("TextBoxInsertMaxContainers");
            ClassWareHouses.AddWareHouse(WHName.Text, WHContainers.Text, MaxContainers.Text);
            GridViewWareHouse.EditIndex = -1;
            FillGrid();
        }
    }

    protected void GridViewWareHouse_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label LabelWHID;
        LabelWHID = (Label)GridViewWareHouse.Rows[e.RowIndex].FindControl("LabelWareHouseID");
        ClassWareHouses.DeleteWareHouse(LabelWHID.Text);
        FillGrid();
    }

    protected void GridViewWareHouse_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewWareHouse.EditIndex = e.NewEditIndex;
        FillGrid();
    }

    protected void GridViewWareHouse_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label LabelWHID = (Label)GridViewWareHouse.Rows[e.RowIndex].FindControl("LabelWareHouseID");
        TextBox WHName = (TextBox)GridViewWareHouse.FooterRow.FindControl("TextBoxInsertWareHouseName");
        TextBox WHContainers = (TextBox)GridViewWareHouse.FooterRow.FindControl("TextBoxInsertWareHouseContainers");
        TextBox MaxContainers = (TextBox)GridViewWareHouse.FooterRow.FindControl("TextBoxInsertMaxContainers");
        ClassWareHouses.UpdateWareHouse(WHName.Text, WHContainers.Text, MaxContainers.Text, LabelWHID.Text);
        GridViewWareHouse.EditIndex = -1;
        FillGrid();
    }

    protected void GridViewWareHouse_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
}