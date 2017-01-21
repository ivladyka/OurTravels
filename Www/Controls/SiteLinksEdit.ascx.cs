using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VikkiSoft_BLL;

public partial class SiteLinksEdit : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            if(CitySiteID > 0)
            {
                CitySite cs = new CitySite();
                if(cs.LoadByPrimaryKey(CitySiteID))
                {
                    City c = new City();
                    if (c.LoadByPrimaryKey(cs.CityID))
                    {
                        ddlCountryChoice.SelectedValue = c.CountryID.ToString();
                        choice_CityID.LoadCityDDL(c.CountryID);
                        choice_CityID.SelectedValue = cs.CityID.ToString();
                    }
                }
            }
            else if (CountrySiteID > 0)
            {
                CountrySite cs = new CountrySite();
                if (cs.LoadByPrimaryKey(CountrySiteID))
                {
                    ddlCountryChoice.SelectedValue = cs.CountryID.ToString();
                    rowCity.Visible = false;
                }
            }
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (CitySiteID > 0 || CountrySiteID > 0)
        {
            if(CitySiteID > 0)
            {
                CitySite cs = new CitySite();
                if (cs.LoadByPrimaryKey(CitySiteID))
                {
                    cs.CityID = int.Parse(choice_CityID.SelectedValue);
                    cs.Save();
                }
            }
            else
            {
                CountrySite cs = new CountrySite();
                if (cs.LoadByPrimaryKey(CountrySiteID))
                {
                    cs.CountryID = int.Parse(ddlCountryChoice.SelectedValue);
                    cs.Save();
                }
            }
        }
        else
        {
            if (string.IsNullOrEmpty(choice_CityID.SelectedValue))
            {
                if (!string.IsNullOrEmpty(ddlCountryChoice.SelectedValue))
                {
                    CountrySite cs = new CountrySite();
                    cs.AddNew();
                    cs.CountryID = int.Parse(ddlCountryChoice.SelectedValue);
                    cs.SiteID = SiteID;
                    cs.Save();
                }
            }
            else
            {
                CitySite cs = new CitySite();
                cs.AddNew();
                cs.CityID = int.Parse(choice_CityID.SelectedValue);
                cs.SiteID = SiteID;
                cs.Save();
            }
        }
        btnCancel_Click(sender, e);
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Office/Office.aspx?content=SiteEdit&SiteID=" + SiteID);
    }

    override protected void OnInit(EventArgs e)
    {
        this.ddlCountryChoice.SelectedItemChanged += new SelectedItemChangedEventHandler(ddlCountryChoice_SelectedItemChanged);
    }

    private void ddlCountryChoice_SelectedItemChanged(object sender, SelectedItemChangedEventArgs e)
    {
        choice_CityID.LoadCityDDL(int.Parse(e.NewValue));
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

    private int CitySiteID
    {
        get
        {
            if (Request.Params["CitySiteID"] != null)
            {
                return int.Parse(Request.Params["CitySiteID"]);
            }
            return 0;
        }
    }

    private int CountrySiteID
    {
        get
        {
            if (Request.Params["CountrySiteID"] != null)
            {
                return int.Parse(Request.Params["CountrySiteID"]);
            }
            return 0;
        }
    }
}