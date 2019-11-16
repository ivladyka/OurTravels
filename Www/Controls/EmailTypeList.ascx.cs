using System;
using System.Data;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using VikkiSoft_BLL;

public partial class EmailTypeList : ListControlBase, Interfaces.IColouredGrid
{
    public EmailTypeList()
	{
        this.m_Name = "Типи Email";
        this.AllowUserTypes = "LoggedUser";
        BackURL = "~/Office/Office.aspx";
	}

    protected override string GetEditableControlName()
    {
        return "EmailTypeEdit";
    }

    protected override Type GetEditableEntityType()
    {
        return typeof(EmailType);
    }

    protected override string[] GetPrimaryKeys()
    {
        return new string[] { "EmailTypeID" };
    }

    public override void InitGrid()
    {
        base.InitGrid();
        this.editableGrid.GridMode = GridModes.Add | GridModes.Delete
            | GridModes.Edit | GridModes.Refresh;
        editableGrid.Width = 600;
        SetColumnSettings(VikkiSoft_BLL.EmailType.ColumnNames.EmailTypeID, false, VikkiSoft_BLL.EmailType.ColumnNames.EmailTypeID,
                0, HorizontalAlign.Center, "");
        SetColumnSettings(VikkiSoft_BLL.EmailType.ColumnNames.Name, true, "Назва", 0, HorizontalAlign.Center, "");
    }

    protected override DataTable GetDataSource()
    {
        VikkiSoft_BLL.EmailType et = new VikkiSoft_BLL.EmailType();
        et.LoadAll();
        return et.DefaultView.Table;
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