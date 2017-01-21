using System;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using VikkiSoft_BLL;

public partial class SiteLinksList : ListControlBase, Interfaces.IColouredGrid
{
    public SiteLinksList()
    {
        this.m_Name = "місто";
        this.AllowUserTypes = "LoggedUser";
    }

    protected override string GetEditableControlName()
    {
        return "SiteLinksEdit";
    }

    protected override Type GetEditableEntityType()
    {
        return typeof(CitySite);
    }

    protected override string[] GetPrimaryKeys()
    {
        return new string[] { "CitySiteID", "CountrySiteID" };
    }

    public override void InitGrid()
    {
        base.InitGrid();
        this.editableGrid.UrlToAdd += "&SiteID=" + SiteID;
        this.editableGrid.GridMode = GridModes.Add | GridModes.Edit | GridModes.Delete
            | GridModes.Refresh;
        editableGrid.AllowPaging = true;
        editableGrid.PageSize = 20;
        editableGrid.Width = 480;
        SetColumnSettings(CitySite.ColumnNames.CitySiteID, false, CitySite.ColumnNames.CitySiteID, 0, HorizontalAlign.Center, "");
        SetColumnSettings(CitySite.ColumnNames.SiteID, false, CitySite.ColumnNames.SiteID, 0, HorizontalAlign.Center, "");
        SetColumnSettings(CitySite.ColumnNames.CityID, false, CitySite.ColumnNames.CityID, 0, HorizontalAlign.Center, "");
        SetColumnSettings(CountrySite.ColumnNames.CountryID, false, CountrySite.ColumnNames.CountryID, 0, HorizontalAlign.Center, "");
        SetColumnSettings(CountrySite.ColumnNames.CountrySiteID, false, CountrySite.ColumnNames.CountryID, 0, HorizontalAlign.Center, "");
        SetColumnSettings("CityName", true, "Місто", 0, HorizontalAlign.Left, "");
        SetColumnSettings("CountryName", true, "Країна", 0, HorizontalAlign.Left, "");
    }

    protected override DataTable GetDataSource()
    {
        CitySite cs = new CitySite();
        cs.LoadSiteLinksBySiteID(SiteID);
        return cs.DefaultView.Table;
    }

    private int SiteID
    {
        get
        {
            if (Request.Params["SiteID"] != null)
            {
                return int.Parse(Request.Params["SiteID"]);
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
                        lnkEdit.NavigateUrl += "&SiteID=" + SiteID;
                    }
                }
            }
        }
    }

    protected override void OnEditableGridDelete(object sender, EditableGridDeleteEventArgs e)
    {
        DataRowView r = (DataRowView)e.DeletedItem.DataItem;
        int citySiteID = Convert.ToInt32(r["CitySiteID"]);
        int countrySiteID = Convert.ToInt32(r["CountrySiteID"]);
        if(citySiteID > 0)
        {
            CitySite cs = new CitySite();
            if (cs.LoadByPrimaryKey(citySiteID))
            {
                cs.DeleteAll();
                cs.Save();
            }
        }
        else if (countrySiteID > 0)
        {
            CountrySite cs = new CountrySite();
            if (cs.LoadByPrimaryKey(countrySiteID))
            {
                cs.DeleteAll();
                cs.Save();
            }
        }
        base.OnEditableGridDelete(sender, e);
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