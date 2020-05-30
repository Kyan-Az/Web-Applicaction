using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Aspx_FileUpload : System.Web.UI.Page
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
            DataTable dt = ClassFiles.GetAll(false);
            GridViewFiles.DataSource = dt;
            GridViewFiles.DataBind();
        }

        catch (Exception ex)
        {
            LabelErrorMsg.Text = "Error in FilesEditor::FillGrid" + ex.Message;
        }
    }

    protected void ButtonUpload_Click(object sender, EventArgs e)
    {
        try
        {
            string strRealPath = Request.PhysicalApplicationPath;
            strRealPath += "Docs\\";
            if (FileUpload1.HasFile)
            {
                if (!System.IO.Directory.Exists(strRealPath))
                {
                    LabelErrorMsg.Text = "Docs directory does not exist";
                }
                else if (FileUpload1.PostedFile.ContentLength < 10000000)
                {
                    if (System.IO.File.Exists(strRealPath + FileUpload1.FileName))
                    {
                        LabelErrorMsg.Text = "A file with the same name already exist";
                    }
                    else
                    {
                        FileUpload1.SaveAs(strRealPath + FileUpload1.FileName);
                        ClassFiles.Insert(FileUpload1.FileName, FileUpload1.PostedFile.ContentLength, TextBoxDescription.Text, "False");
                        LabelErrorMsg.Text = "Successfully Uploaded";
                    }
                }
                else
                {
                    LabelErrorMsg.Text = "the file size must be less or equal to 100MB";
                }
            }
            else
            {
                LabelErrorMsg.Text = "Please select a file first..";
            }
            FillGrid();
        }
        catch (Exception ex)
        {
            LabelErrorMsg.Text = "Error in FilesEditor::ButtonUpload_Click" + ex.Message;
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            string strID = GridViewFiles.DataKeys[e.RowIndex].Values[0].ToString();
            Label LabelFileName = GridViewFiles.Rows[e.RowIndex].FindControl("LabelFileName") as Label;
            string strFileName = LabelFileName.Text;

            //Delete the file record from the Data Base
            ClassFiles.Delete(strID);

            //2: Delete the physical file from the file system
            string strRealPath = Request.PhysicalApplicationPath;
            System.IO.File.Delete(strRealPath + strFileName);

            FillGrid();
        }
        catch (Exception Ex)
        {
            LabelErrorMsg.Text = "Error in FilesEditor::ButtonUpload_Click" + Ex.Message;
        }
    }

    public string GetFileName(object obj)
    {
        return "..\\" + obj.ToString();
    }
}