using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using VikkiSoft_BLL;

public partial class MasterPage : MasterPageBase
{
    string m_Title = "";
    string m_Keywords = "";
    string m_Description = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        hlMenuAccommodation.NavigateUrl = this.SiteURL + "/page/3/accommodation/";
        hlHomeTop.NavigateUrl = this.SiteURL + "/Default.aspx";
        hlAboutUs.NavigateUrl = this.SiteURL + "/BlogPageView.aspx?bpid=1";
        hlPrivacyPolicy.NavigateUrl = this.SiteURL + "/BlogPageView.aspx?bpid=2";
        hlContactUsTop.NavigateUrl = this.SiteURL + "/ContactUs.aspx";
        if (!Page.IsPostBack)
        {
            LoadCommonPageData();
        }
    }

    public string ScriptTag
    {
        get
        {
            return GetJavaScriptTag("/js/jquery.min.js") + GetJavaScriptTag("/js/jquery.cycle.all.js")
                + GetJavaScriptTag("/js/jquery.easing.1.3.js") + GetJavaScriptTag("/js/cycle_script.js") 
                + GetJavaScriptTag("/js/Scripts.js");
        }
    }

    private string GetJavaScriptTag(string scriptURL)
    {
        return "<script src='" + SiteURL + scriptURL + "' type='text/javascript'></script>";
    }

    public string Canonical
    {
        get
        {
            return "<link rel=\"canonical\" href=\"" + Page.Request.Url.ToString() + "\" /> ";
        }
    }

    private void LoadCommonPageData()
    {
        Settings s = new Settings();
        if (s.LoadByPrimaryKey(1))
        {
            if (IsCountryPage)
            {
                Country c = new Country();
                if (c.LoadByPrimaryKey(CountryID))
                {
                    m_Title = c.GetColumn(Country.ColumnNames.Name).ToString();
                    if (!s.IsColumnNull(Settings.ColumnNames.TitleSuffix))
                    {
                        m_Title += " - " + s.GetColumn(Settings.ColumnNames.TitleSuffix).ToString();
                    }
                    if (!c.IsColumnNull(Country.ColumnNames.Keywords))
                    {
                        m_Keywords = c.GetColumn(Country.ColumnNames.Keywords).ToString();
                    }
                    if (!c.IsColumnNull(Country.ColumnNames.Description))
                    {
                        m_Description = c.GetColumn(Country.ColumnNames.Description).ToString();
                    }
                }
            }
            else if (IsCityPage)
            {
                City c = new City();
                if (c.LoadByPrimaryKey(CityID))
                {
                    m_Title = c.GetColumn(City.ColumnNames.Name).ToString();
                    if (!s.IsColumnNull(Settings.ColumnNames.TitleSuffix))
                    {
                        m_Title += " - " + s.GetColumn(Settings.ColumnNames.TitleSuffix).ToString();
                    }
                    if (!c.IsColumnNull(City.ColumnNames.Keywords))
                    {
                        m_Keywords = c.GetColumn(City.ColumnNames.Keywords).ToString();
                    }
                    if (!c.IsColumnNull(City.ColumnNames.Description))
                    {
                        m_Description = c.GetColumn(City.ColumnNames.Description).ToString();
                    }
                }
            }
            else if (IsBlogPagePage)
            {
                BlogPage bp = new BlogPage();
                if (bp.LoadByPrimaryKey(BlogPageID))
                {
                    m_Title = bp.GetColumn(BlogPage.ColumnNames.Name).ToString();
                    if (!s.IsColumnNull(Settings.ColumnNames.TitleSuffix))
                    {
                        m_Title += " - " + s.GetColumn(Settings.ColumnNames.TitleSuffix).ToString();
                    }
                    if (!bp.IsColumnNull(BlogPage.ColumnNames.Keywords))
                    {
                        m_Keywords = bp.GetColumn(BlogPage.ColumnNames.Keywords).ToString();
                    }
                    if (!bp.IsColumnNull(BlogPage.ColumnNames.Description))
                    {
                        m_Description = bp.GetColumn(BlogPage.ColumnNames.Description).ToString();
                    }
                }
            }
            if (m_Title.TrimEnd().Length == 0 && !s.IsColumnNull(Settings.ColumnNames.Title))
            {
                m_Title = s.GetColumn(Settings.ColumnNames.Title).ToString();
            }
            if (m_Keywords.TrimEnd().Length == 0 && !s.IsColumnNull(Settings.ColumnNames.Keywords))
            {
                m_Keywords = s.GetColumn(Settings.ColumnNames.Keywords).ToString();
            }
            if (m_Description.TrimEnd().Length == 0 && !s.IsColumnNull(Settings.ColumnNames.Description))
            {
                m_Description = s.GetColumn(Settings.ColumnNames.Description).ToString();
            }
        }
    }

    public string Title
    {
        get
        {
            return "<title>" + m_Title + "</title><meta name='title' content='" + m_Title + "' />";
        }
    }

    public string Description
    {
        get
        {
            return "<meta name='description' content='" + m_Description + "' />";
        }
    }

    public string Keywords
    {
        get
        {
            return "<meta name='keywords' content='" + m_Keywords + "' />";
        }
    }

    public string menuHome
    {
        get
        {
            return Resources.Vikkisoft.menuHome;
        }
    }
    public string menuHotels
    {
        get
        {
            return Resources.Vikkisoft.menuHotels;
        }
    }
    public string menuPrivacyPolicy
    {
        get
        {
            return Resources.Vikkisoft.menuPrivacyPolicy;
        }
    }
    public string menuAboutUS
    {
        get
        {
            return Resources.Vikkisoft.menuAboutUS;
        }
    }
    public string menuContactUS
    {
        get
        {
            return Resources.Vikkisoft.menuContactUS;
        }
    }
}
