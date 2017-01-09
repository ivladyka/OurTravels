using System;
using VikkiSoft_BLL;
using Telerik.Web.UI;

public partial class CitySiteEdit : EditControlBase
{
    public CitySiteEdit()
    {
        this.m_Name = "посилання";
        this.AllowUserTypes = "LoggedUser";
        BackURL = "";
    }

    protected override Type GetEditableEntityType()
    {
        return typeof(CitySite);
    }

    protected override void RedirectBackToList()
    {
        Response.Redirect("Office.aspx?content=CityEdit&CityID=" + CityID);
    }

    protected override void WriteDataToEntity()
    {
        base.WriteDataToEntity();
        if (IsNew)
        {
            CitySite cs = (CitySite)this.EditableEntity;
            cs.CityID = CityID;
        }
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
}