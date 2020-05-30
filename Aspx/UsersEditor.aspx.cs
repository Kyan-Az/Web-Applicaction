using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Aspx_UsersEditor : System.Web.UI.Page
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
            DataTable dt = ClassUsers.GetAllUsers();
            GridViewUsers.DataSource = ClassUsers.GetAllUsers();
            GridViewUsers.DataBind();
        }
        catch (Exception ex)
        {
            LabelError.Text = ex.Message;
        }
    }

    protected void GridViewUsers_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridViewUsers_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridViewUsers.PageIndex = e.NewPageIndex;
        FillGrid();
    }

    protected void GridViewUsers_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewUsers.EditIndex = e.NewEditIndex;
        FillGrid();
    }

    protected void GridViewUsers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridViewUsers.EditIndex = -1;// -1-> ViewMode  if not it will stay in EditMode
        FillGrid();
    }

    protected void GridViewUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label LabelUserID = (Label)GridViewUsers.Rows[e.RowIndex].FindControl("LabelUserID");
        TextBox TextBoxUserName = (TextBox)GridViewUsers.Rows[e.RowIndex].FindControl("TextBoxEditUserName");
        TextBox TextBoxUserPassWord = (TextBox)GridViewUsers.Rows[e.RowIndex].FindControl("TextBoxEditUserPassWord");
        TextBox TextBoxUserEmail = (TextBox)GridViewUsers.Rows[e.RowIndex].FindControl("TextBoxEditUserEmail");
        TextBox TextBoxUserType = (TextBox)GridViewUsers.Rows[e.RowIndex].FindControl("TextBoxEditUserType");
        //DropDownList DropDownListType = (DropDownList)GridViewUsers.Rows[e.RowIndex].FindControl("DropDownListEditUserType");
        ClassUsers.UpdateUser(TextBoxUserName.Text, TextBoxUserEmail.Text, TextBoxUserPassWord.Text, TextBoxUserType.Text, LabelUserID.Text);



        GridViewUsers.EditIndex = -1;
        FillGrid();
    }
 
    protected void GridViewUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label LabelUserID;
        LabelUserID = (Label)GridViewUsers.Rows[e.RowIndex].FindControl("LabelUserID");
        ClassUsers.DeleteUser(LabelUserID.Text);
        FillGrid();
    }
    protected void GridViewUsers_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Insert")
        {
            TextBox TextBoxFullName = (TextBox)GridViewUsers.FooterRow.FindControl("TextBoxInsertFullName");
            TextBox TextBoxMyPassWord = (TextBox)GridViewUsers.FooterRow.FindControl("TextBoxInsertMyPassWord");
            TextBox TextBoxMyEmail = (TextBox)GridViewUsers.FooterRow.FindControl("TextBoxInsertMyEmail");
            DropDownList DropDownListType = (DropDownList)GridViewUsers.FooterRow.FindControl("DropDownListInsertUserType");
            ClassUsers.AddUser(TextBoxFullName.Text, TextBoxMyPassWord.Text, TextBoxMyEmail.Text, DropDownListType.Text);
            GridViewUsers.EditIndex = -1;
            FillGrid();
        }
    }
}