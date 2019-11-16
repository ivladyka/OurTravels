using System;
using System.Data;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using VikkiSoft_BLL;

public partial class EmailList : ListControlBase, Interfaces.IColouredGrid
{
    public EmailList()
	{
        this.m_Name = "Email";
        this.AllowUserTypes = "LoggedUser";
        BackURL = "~/Office/Office.aspx";
	}

    protected override string GetEditableControlName()
    {
        return "EmailEdit";
    }

    protected override Type GetEditableEntityType()
    {
        return typeof(Email);
    }

    protected override string[] GetPrimaryKeys()
    {
        return new string[] { "EmailID" };
    }

    public override void InitGrid()
    {
        base.InitGrid();
        this.editableGrid.GridMode = GridModes.Add | GridModes.Delete
            | GridModes.Edit | GridModes.Refresh;
        editableGrid.Width = 600;
        SetColumnSettings(VikkiSoft_BLL.Email.ColumnNames.EmailID, false, VikkiSoft_BLL.Email.ColumnNames.EmailID,
                0, HorizontalAlign.Center, "");
        SetColumnSettings(VikkiSoft_BLL.Email.ColumnNames.EmailAddress, true, "E-mail", 0, HorizontalAlign.Center, "");
        SetColumnSettings(VikkiSoft_BLL.Email.ColumnNames.AddedDate, true, "Дата", 0, HorizontalAlign.Center, "");
        SetColumnSettings(VikkiSoft_BLL.Email.ColumnNames.EmailTypeID, false, "", 0, HorizontalAlign.Center, "");
        SetColumnSettings(VikkiSoft_BLL.Email.ColumnNames.Sent, true, "Відписав", 0, HorizontalAlign.Center, "");
        SetColumnSettings("EmailTypeName", true, "Тип", 0, HorizontalAlign.Center, "");
    }

    protected override DataTable GetDataSource()
    {
        VikkiSoft_BLL.Email e = new VikkiSoft_BLL.Email();
        e.LoadWithEmailType();
        return e.DefaultView.Table;
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