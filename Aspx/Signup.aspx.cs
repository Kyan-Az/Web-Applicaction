using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Aspx_Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonSignUp_Click(object sender, EventArgs e)
    {
       
        
            ClassUsers.AddUser(TextBoxFullName.Text, TextBoxEmail.Text, TextBoxPassWord.Text, "User");
            Session["ValidUser"] = true;
            Response.Redirect("Home.aspx");
        
    }
}