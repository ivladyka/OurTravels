using System;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using VikkiSoft_BLL;

public partial class BlogPageCityList : ListControlBase, Interfaces.IColouredGrid
{
    public BlogPageCityList()
    {
        this.m_Name = "місто";
        this.AllowUserTypes = "LoggedUser";
    }

    protected override string GetEditableControlName()
    {
        return "BlogPageCityEdit";
    }

    protected override Type GetEditableEntityType()
    {
        return typeof(BlogPageCity);
    }

    protected override string[] GetPrimaryKeys()
    {
        return new string[] { "BlogPageCityID" };
    }

    public override void InitGrid()
    {
        base.InitGrid();
        this.editableGrid.UrlToAdd += "&BlogPageID=" + BlogPageID;
        this.editableGrid.GridMode = GridModes.Add | GridModes.Edit | GridModes.Delete
            | GridModes.Refresh;
        editableGrid.AllowPaging = true;
        editableGrid.PageSize = 20;
        editableGrid.Width = 780;
        SetColumnSettings(BlogPageCity.ColumnNames.BlogPageCityID, false, BlogPageCity.ColumnNames.BlogPageCityID, 0, HorizontalAlign.Center, "");
        SetColumnSettings(BlogPageCity.ColumnNames.BlogPageID, false, BlogPageCity.ColumnNames.BlogPageID, 0, HorizontalAlign.Center, "");
        SetColumnSettings(BlogPageCity.ColumnNames.CityID, false, BlogPageCity.ColumnNames.BlogPageID, 0, HorizontalAlign.Center, "");
        SetColumnSettings("CityName", true, "Місто", 0, HorizontalAlign.Center, "");
    }

    protected override DataTable GetDataSource()
    {
        BlogPageCity bpc = new BlogPageCity();
        bpc.LoadByBlogPageID(BlogPageID);
        return bpc.DefaultView.Table;
    }

    private int BlogPageID
    {
        get
        {
            if (Request.Params["BlogPageID"] != null)
            {
                return int.Parse(Request.Params["BlogPageID"]);
            }
            return 0;
        }
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
                    HyperLink lnkEdit = e.Item.Cells[2].FindControl("lnkEdit") as HyperLink;
                    if (lnkEdit != null)
                    {
                        lnkEdit.NavigateUrl += "&BlogPageID=" + BlogPageID;
                    }
                }
            }
        }
    }

    #region IColouredGrid Members

    public Interfaces.GridColorSchemes GridColorScheme
    {
        get
        {
            return Interfaces.GridColorSchemes.Blue;
        }
    }

    #endregion
}