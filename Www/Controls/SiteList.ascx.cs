using System;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using VikkiSoft_BLL;

public partial class SiteList : ListControlBase, Interfaces.IColouredGrid
{
    public SiteList()
	{
        this.m_Name = "Корисні Посилання";
        this.AllowUserTypes = "LoggedUser";
        BackURL = "~/Office/Office.aspx";
	}

	protected override string GetEditableControlName()
	{
        return "SiteEdit";
	}

	protected override Type GetEditableEntityType()
	{
        return typeof(Site);
	}

	protected override string[] GetPrimaryKeys()
	{
        return new string[] { "SiteID" };
    }

	public override void InitGrid()
	{
		base.InitGrid ();
		this.editableGrid.GridMode = GridModes.Add | GridModes.Delete
			| GridModes.Edit | GridModes.Refresh;				
		editableGrid.Width = 1200;
        SetColumnSettings(VikkiSoft_BLL.Site.ColumnNames.SiteID, false, VikkiSoft_BLL.Site.ColumnNames.SiteID,
				0, HorizontalAlign.Center, "");
        SetColumnSettings(VikkiSoft_BLL.Site.ColumnNames.Name, true, "Назва", 0, HorizontalAlign.Center, "");
        SetColumnSettings("SiteTypeName", true, "Тип посилання", 0, HorizontalAlign.Center, "");
        SetColumnSettings(VikkiSoft_BLL.Site.ColumnNames.Active, true, "Активне", 0, HorizontalAlign.Center, "");
        SetColumnSettings(VikkiSoft_BLL.Site.ColumnNames.Notes, true, "Примітки", 0, HorizontalAlign.Center, "");
        SetColumnSettings(VikkiSoft_BLL.Site.ColumnNames.OrderIndex, true, "Порядок сортування", 50, HorizontalAlign.Center, "");
        SetColumnSettings(VikkiSoft_BLL.Site.ColumnNames.Main, true, "Головне", 0, HorizontalAlign.Center, "");
        SetColumnSettings(VikkiSoft_BLL.Site.ColumnNames.Latitude, true, "Широта", 0, HorizontalAlign.Center, "");
        SetColumnSettings(VikkiSoft_BLL.Site.ColumnNames.Longitude, true, "Довгота", 0, HorizontalAlign.Center, "");
	}

    protected override DataTable GetDataSource()
    {
        VikkiSoft_BLL.Site s = new VikkiSoft_BLL.Site();
        s.LoadWithSiteTypeName();
        return s.DefaultView.Table;
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