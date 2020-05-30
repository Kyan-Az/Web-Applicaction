using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Aspx_ContactsEditor : System.Web.UI.Page
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
            DataTable dt = ClassContacts.GetAllContacts();
            GridViewContact.DataSource = dt; 
            GridViewContact.DataBind();
        }
        catch (Exception ex)
        {
            LabelError.Text = ex.Message;
        }
    }
    protected void GridViewContact_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridViewContact.PageIndex = e.NewPageIndex;
        FillGrid();
    }
    protected void GridViewContact_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridViewContact.EditIndex = -1;// -1-> ViewMode  if not it will stay in EditMode
        FillGrid();
    }
    protected void GridViewContact_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Insert")
        {
            TextBox TextBoxMessage = (TextBox)GridViewContact.FooterRow.FindControl("TextBoxInsertMessage");
            Label ContactID = (Label)GridViewContact.FooterRow.FindControl("LabelContactID");
            Label UserID = (Label)GridViewContact.FooterRow.FindControl("LabelUserID");
            Label UserName = (Label)GridViewContact.FooterRow.FindControl("LabelUserName");
            Label UserEmail = (Label)GridViewContact.FooterRow.FindControl("LabelUserEmail");
            ClassContacts.AddContactMessage(UserID.Text, UserName.Text, UserEmail.Text, TextBoxMessage.Text);
            GridViewContact.EditIndex = -1;
            FillGrid();
        }
    }
   
    protected void GridViewContact_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label LabelContactID;
        LabelContactID = (Label)GridViewContact.Rows[e.RowIndex].FindControl("LabelContactID");
        ClassContacts.DeleteContact(LabelContactID.Text);
        FillGrid();
    }

    protected void GridViewContact_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewContact.EditIndex = e.NewEditIndex;
        FillGrid();
    }
    protected void GridViewContact_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox TextBoxMessage = (TextBox)GridViewContact.Rows[e.RowIndex].FindControl("TextBoxEditMessage");
        ClassContacts.UpdateContact(TextBoxMessage.Text);
        GridViewContact.EditIndex = -1;
        FillGrid();
    }
    protected void GridViewContact_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
}