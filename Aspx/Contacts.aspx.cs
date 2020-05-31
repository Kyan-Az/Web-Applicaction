using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Aspx_Contacts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            ClassContacts.AddContactMessage(ClassUsers.GetUserID(TextBoxEmail.Text), TextBoxName.Text, TextBoxEmail.Text, TextBoxSubject.Text);
            Response.Redirect("Home.aspx"); //Make it so it shows done message!
        }
        catch (Exception Ex)
        {
            LabelMsg.Text ="Error When Sending Message::"+ Ex.Message;
        }
    }
}