using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Aspx_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        if (ClassAdmins.GetAdmin(TextBoxEmail.Text, TextBoxPassWord.Text) != null)
        {
            Session["Admin"] = true;
            Session["ValidUser"] = true;
            Response.Redirect("Home.aspx");
        }
        else
            if (ClassUsers.GetUser(TextBoxEmail.Text, TextBoxPassWord.Text) != null)
            {
                Session["ValidUser"] = true;
                Response.Redirect("Home.aspx");
            }
    }
}