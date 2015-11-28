using System;
using System.Data;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using VikkiSoft_BLL;

public partial class BlogPageList : ListControlBase, Interfaces.IColouredGrid
{
    public BlogPageList()
    {
        this.m_Name = "Сторінки";
        this.AllowUserTypes = "LoggedUser";
        BackURL = "~/Office/Office.aspx";
    }

    protected override string GetEditableControlName()
    {
        return "BlogPageEdit";
    }

    protected override Type GetEditableEntityType()
    {
        return typeof(BlogPage);
    }

    protected override string[] GetPrimaryKeys()
    {
        return new string[] { "BlogPageID" };
    }

    public override void InitGrid()
    {
        base.InitGrid();
        this.editableGrid.GridMode = GridModes.Add | GridModes.Delete
            | GridModes.Edit | GridModes.Refresh;
        editableGrid.Width = 900;
        SetColumnSettings(BlogPage.ColumnNames.BlogPageID, false, BlogPage.ColumnNames.BlogPageID,
           0, HorizontalAlign.Center, "");
        SetColumnSettings(BlogPage.ColumnNames.Name, true, "Назва", 0, HorizontalAlign.Center, "");
        SetColumnSettings(BlogPage.ColumnNames.Name_en, false, "", 0, HorizontalAlign.Center, "");
        SetColumnSettings(BlogPage.ColumnNames.PageContent, false, BlogPage.ColumnNames.PageContent,
           0, HorizontalAlign.Center, "");
    }

    #region IColouredGrid Members

    public Interfaces.GridColorSchemes GridColorScheme
    {
        get
        {
            return Interfaces.GridColorSchemes.Green;
        }
    }

    #endregion
}
