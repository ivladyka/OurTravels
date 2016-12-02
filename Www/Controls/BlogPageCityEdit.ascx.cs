using System;
using VikkiSoft_BLL;
using Telerik.Web.UI;

public partial class BlogPageCityEdit : EditControlBase
{
    public BlogPageCityEdit()
    {
        this.m_Name = "місто";
        this.AllowUserTypes = "LoggedUser";
        BackURL = "";
    }

    protected override Type GetEditableEntityType()
    {
        return typeof(BlogPageCity);
    }

    protected override void InitOnFirstLoading()
    {
        base.InitOnFirstLoading();
        if (!IsNew)
        {
            BlogPageCity bpc = (BlogPageCity)this.EditableEntity;
            City c = new City();
            if (c.LoadByPrimaryKey(bpc.CityID))
            {
                ddlCountryChoice.SelectedValue = c.CountryID.ToString();
                choice_CityID.LoadCityDDL(c.CountryID);
                choice_CityID.SelectedValue = bpc.CityID.ToString();
            }
        }
    }

    protected override void SetEventHandlers()
    {
        base.SetEventHandlers();
        this.ddlCountryChoice.SelectedItemChanged += new SelectedItemChangedEventHandler(ddlCountryChoice_SelectedItemChanged);
    }

    private void ddlCountryChoice_SelectedItemChanged(object sender, SelectedItemChangedEventArgs e)
    {
        choice_CityID.LoadCityDDL(int.Parse(e.NewValue));
    }


    protected override void RedirectBackToList()
    {
        Response.Redirect("Office.aspx?content=BlogPageEdit&BlogPageID=" + BlogPageID);
    }

    protected override void WriteDataToEntity()
    {
        base.WriteDataToEntity();
        if (IsNew)
        {
            BlogPageCity bpc = (BlogPageCity)this.EditableEntity;
            bpc.BlogPageID = BlogPageID;
        }
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
}