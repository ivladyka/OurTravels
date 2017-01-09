using System;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using VikkiSoft_BLL;

public partial class CitySiteList : ListControlBase, Interfaces.IColouredGrid
{
    public CitySiteList()
    {
        this.m_Name = "посилання";
        this.AllowUserTypes = "LoggedUser";
    }

    protected override string GetEditableControlName()
    {
        return "CitySiteEdit";
    }

    protected override Type GetEditableEntityType()
    {
        return typeof(CitySite);
    }

    protected override string[] GetPrimaryKeys()
    {
        return new string[] { "CitySiteID" };
    }

    public override void InitGrid()
    {
        base.InitGrid();
        this.editableGrid.UrlToAdd += "&CityID=" + CityID;
        this.editableGrid.GridMode = GridModes.Add | GridModes.Edit | GridModes.Delete
            | GridModes.Refresh;
        editableGrid.AllowPaging = true;
        editableGrid.PageSize = 20;
        editableGrid.Width = 480;
        SetColumnSettings(CitySite.ColumnNames.CitySiteID, false, CitySite.ColumnNames.CitySiteID, 0, HorizontalAlign.Center, "");
        SetColumnSettings(CitySite.ColumnNames.CityID, false, CitySite.ColumnNames.CityID, 0, HorizontalAlign.Center, "");
        SetColumnSettings(CitySite.ColumnNames.SiteID, false, CitySite.ColumnNames.SiteID, 0, HorizontalAlign.Center, "");
        SetColumnSettings("SiteName", true, "Посилання", 0, HorizontalAlign.Left, "");
    }

    protected override DataTable GetDataSource()
    {
        CitySite bpc = new CitySite();
        bpc.LoadByCityID(CityID);
        return bpc.DefaultView.Table;
    }

    private int CityID
    {
        get
        {
            if (Request.Params["CityID"] != null)
            {
                return int.Parse(Request.Params["CityID"]);
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
                        lnkEdit.NavigateUrl += "&CityID=" + CityID;
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