using System;
using System.Data;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using VikkiSoft_BLL;

public partial class SiteTypeList : ListControlBase, Interfaces.IColouredGrid
{
    public SiteTypeList()
	{
        this.m_Name = "Типи Корисних Посилань";
        this.AllowUserTypes = "LoggedUser";
        BackURL = "~/Office/Office.aspx";
	}

    protected override string GetEditableControlName()
    {
        return "SiteTypeEdit";
    }

    protected override Type GetEditableEntityType()
    {
        return typeof(SiteType);
    }

    protected override string[] GetPrimaryKeys()
    {
        return new string[] { "SiteTypeID" };
    }

    public override void InitGrid()
    {
        base.InitGrid();
        this.editableGrid.GridMode = GridModes.Add | GridModes.Delete
            | GridModes.Edit | GridModes.Refresh;
        editableGrid.Width = 600;
        SetColumnSettings(VikkiSoft_BLL.SiteType.ColumnNames.SiteTypeID, false, VikkiSoft_BLL.SiteType.ColumnNames.SiteTypeID,
                0, HorizontalAlign.Center, "");
        SetColumnSettings(VikkiSoft_BLL.SiteType.ColumnNames.Name, true, "Назва", 0, HorizontalAlign.Center, "");
        SetColumnSettings(VikkiSoft_BLL.SiteType.ColumnNames.OrderIndex, true, "Порядок сортування", 50, HorizontalAlign.Center, "");
        SetColumnSettings("Icon", true, "Іконка", 70, HorizontalAlign.Center, "");
    }

    protected override DataTable GetDataSource()
    {
        VikkiSoft_BLL.SiteType st = new VikkiSoft_BLL.SiteType();
        st.LoadWithIcon();
        return st.DefaultView.Table;
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
                    Image img = new Image();
                    img.ImageUrl = SiteURL + Utils.SiteTypeImagePath.Replace("~", "") + "/" + dataRowView[SiteType.ColumnNames.SiteTypeID].ToString() + ".png";
                    img.Width = Unit.Pixel(40);
                    e.Item.Cells[4].Controls.Add(img);
                }
            }
        }
    }

    private string SiteURL
    {
        get
        {
            MasterPageBase master = Page.Master as MasterPageBase;
            if (master != null)
            {
                return master.SiteURL;
            }
            return "";
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