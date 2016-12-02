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
        editableGrid.Width = 1500;
        SetColumnSettings(BlogPage.ColumnNames.BlogPageID, false, BlogPage.ColumnNames.BlogPageID,
           0, HorizontalAlign.Center, "");
        SetColumnSettings(BlogPage.ColumnNames.Name, true, "Назва", 0, HorizontalAlign.Center, "");
        SetColumnSettings(BlogPage.ColumnNames.Name_en, true, "Дружній URL", 0, HorizontalAlign.Center, "");
        SetColumnSettings(BlogPage.ColumnNames.PageContent, false, BlogPage.ColumnNames.PageContent,
           0, HorizontalAlign.Center, "");
    }

    protected override void OnEditableGridItemDataBound(object sender, GridItemEventArgs e)
    {
        base.OnEditableGridItemDataBound(sender, e);
        if (e.Item is GridDataItem)
        {
            if (e.Item.ItemType == GridItemType.Item || e.Item.ItemType == GridItemType.AlternatingItem)
            {
                DataRowView dataRowView = e.Item.DataItem as DataRowView;
                if (dataRowView != null)
                {
                    HyperLink hl = new HyperLink();
                    hl.Target = "_blank";
                    hl.Text = "Go this page";
                    hl.NavigateUrl = Utils.GenerateFriendlyURL("page", new string[] {
                       dataRowView[BlogPage.ColumnNames.BlogPageID].ToString(),
                        dataRowView[BlogPage.ColumnNames.Name_en].ToString()});
                    e.Item.Cells[5].Controls.Add(hl);
                }
            }
        }
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
