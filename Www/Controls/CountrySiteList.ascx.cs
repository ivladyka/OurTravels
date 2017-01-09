using System;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using VikkiSoft_BLL;

public partial class CountrySiteList : ListControlBase, Interfaces.IColouredGrid
{
    public CountrySiteList()
    {
        this.m_Name = "посилання";
        this.AllowUserTypes = "LoggedUser";
    }

    protected override string GetEditableControlName()
    {
        return "CountrySiteEdit";
    }

    protected override Type GetEditableEntityType()
    {
        return typeof(CountrySite);
    }

    protected override string[] GetPrimaryKeys()
    {
        return new string[] { "CountrySiteID" };
    }

    public override void InitGrid()
    {
        base.InitGrid();
        this.editableGrid.UrlToAdd += "&CountryID=" + CountryID;
        this.editableGrid.GridMode = GridModes.Add | GridModes.Edit | GridModes.Delete
            | GridModes.Refresh;
        editableGrid.AllowPaging = true;
        editableGrid.PageSize = 20;
        editableGrid.Width = 480;
        SetColumnSettings(CountrySite.ColumnNames.CountrySiteID, false, CountrySite.ColumnNames.CountrySiteID, 0, HorizontalAlign.Center, "");
        SetColumnSettings(CountrySite.ColumnNames.CountryID, false, CountrySite.ColumnNames.CountryID, 0, HorizontalAlign.Center, "");
        SetColumnSettings(CountrySite.ColumnNames.SiteID, false, CountrySite.ColumnNames.SiteID, 0, HorizontalAlign.Center, "");
        SetColumnSettings("SiteName", true, "Посилання", 0, HorizontalAlign.Left, "");
    }

    protected override DataTable GetDataSource()
    {
        CountrySite bpc = new CountrySite();
        bpc.LoadByCountryID(CountryID);
        return bpc.DefaultView.Table;
    }

    private int CountryID
    {
        get
        {
            if (Request.Params["CountryID"] != null)
            {
                return int.Parse(Request.Params["CountryID"]);
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
                        lnkEdit.NavigateUrl += "&CountryID=" + CountryID;
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