using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Aspx_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ValidUser"] == null || (bool)Session["ValidUser"] == false)
        {
            LinkButtonLogin.Text = "Login";
            LinkButtonSignup.Visible = true;
        }
        else
        {
            LinkButtonLogin.Text = "Logout";
            LinkButtonSignup.Visible = false;
        }
        if (Session["Admin"] == null || (bool)Session["Admin"] == false)
        {
            LinkButtonAdmin.Visible = false;
        }
        else
        {
            LinkButtonAdmin.Visible = true;
        }
    }
    protected void LinkButtonLogin_Click(object sender, EventArgs e)
    {
        if (LinkButtonLogin.Text == "Login")
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            LinkButtonLogin.Text = "Login";
            Session["ValidUser"] = false;
            Response.Redirect("Home.aspx");
        }
    }
    protected void LinkButtonAccount_Click(object sender, EventArgs e)
    {
        Response.Redirect("Account.aspx");
    }
    protected void LinkButtonSignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }
    protected void LinkButtonAdmin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
}
