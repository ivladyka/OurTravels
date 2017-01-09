using System;
using VikkiSoft_BLL;
using Telerik.Web.UI;

public partial class CountrySiteEdit : EditControlBase
{
    public CountrySiteEdit()
    {
        this.m_Name = "посилання";
        this.AllowUserTypes = "LoggedUser";
        BackURL = "";
    }

    protected override Type GetEditableEntityType()
    {
        return typeof(CountrySite);
    }

    protected override void RedirectBackToList()
    {
        Response.Redirect("Office.aspx?content=CountryEdit&CountryID=" + CountryID);
    }

    protected override void WriteDataToEntity()
    {
        base.WriteDataToEntity();
        if (IsNew)
        {
            CountrySite cs = (CountrySite)this.EditableEntity;
            cs.CountryID = CountryID;
        }
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
}