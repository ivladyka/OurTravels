using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VikkiSoft_BLL;

public partial class CountryView : ProjectPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            VikkiSoft_BLL.Country c = new VikkiSoft_BLL.Country();
            if (c.LoadDetailInfo(CountryID))
            {
                lblName.Text = c.GetColumn(Country.ColumnNames.Name).ToString();
                if (!c.IsColumnNull(Country.ColumnNames.CapitalID))
                {
                    hlCapital.Text = c.GetColumn("CapitalName").ToString();
                    hlCapital.NavigateUrl = Utils.GenerateFriendlyURL("city",
                        new string[] { c.GetColumn("Name_en").ToString(), c.GetColumn("CapitalName_en").ToString() });
                }
                else
                {
                    pnlCapital.Visible = false;
                }
                if (!c.IsColumnNull(Country.ColumnNames.Content))
                {
                    divCountryContent.InnerHtml = Utils.FormatContent(c.GetColumn(Country.ColumnNames.Content).ToString(), SiteURL).Replace("[Country_Advert1]", c.s_Advert1)
                        .Replace("[Country_Advert2]", c.s_Advert2);
                }
                else
                {
                    divCountryContentContainer.Visible = false;
                    
                }
                if (!c.IsColumnNull(Country.ColumnNames.MainImage) && c.s_MainImage.Length > 0)
                {
                    pnlPageTitle.Attributes["style"] = "background-image: url(" + Master.SiteURL + Utils.GaleryImagePath.Replace("~", "") + "/" + c.MainImage + ");";
                }
            }
        }
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (!divCountryContentContainer.Visible && cityTableView.CityCount <= 8)
        {
            h4OurTravelsInThisWay.Visible = hrOurTravelsInThisWay.Visible = false;
        }
    }

    private int CountryID
    {
        get
        {
            return Master.CountryID;
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
}