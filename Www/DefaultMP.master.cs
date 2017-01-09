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
    string m_TitleImage = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        hlMenuAccommodation.NavigateUrl = this.SiteURL + "/page/3/accommodation/";
        hlMenuTransport.NavigateUrl = this.SiteURL + "/page/4/transport/";
        hlMenuAnimals.NavigateUrl = this.SiteURL + "/page/5/animals/";
        hlMenuChildren.NavigateUrl = this.SiteURL + "/page/6/children/";
        hlMenuPlanning.NavigateUrl = this.SiteURL + "/page/7/planning/";
        hlMenuSuitcase.NavigateUrl = this.SiteURL + "/page/8/suitcase/";
        hlHomeTop.NavigateUrl = hlLogoLink.NavigateUrl = this.SiteURL + "/Default.aspx";
        hlMenuAdvice.NavigateUrl = this.SiteURL + "/Advice.aspx";
        hlAboutUs.NavigateUrl = this.SiteURL + "/page/12/aboutus/";
        hlContactUsTop.NavigateUrl = this.SiteURL + "/ContactUs.aspx";
        hlBlogs.NavigateUrl = this.SiteURL + "/Blogs.aspx";
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
            return "<link rel=\"canonical\" href=\"" + Page.Request.Url.ToString() + "\" /> \n<meta property='og:url' content='" + Page.Request.Url.ToString() + "' />";
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
                    if (!c.IsColumnNull(City.ColumnNames.TitleImage))
                    {
                        m_TitleImage = c.GetColumn(City.ColumnNames.TitleImage).ToString();
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
                    if (!bp.IsColumnNull(BlogPage.ColumnNames.TitleImage))
                    {
                        m_TitleImage = bp.GetColumn(BlogPage.ColumnNames.TitleImage).ToString();
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
            return "<title>" + m_Title + "</title><meta name='title' content='" + m_Title + "' />\n<meta property='og:title' content='" + m_Title + "'/>";
        }
    }

    public string Description
    {
        get
        {
            return "<meta name='description' content='" + m_Description + "' />\n<meta property='og:description' content='" + m_Description + "'/>";
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

    public string AddShareScripts
    {
        get
        {
            if(Utils.ShowAddShare)
            {
                return "<script type=\"text/javascript\" src=\"/js/buttons.js\"></script><script type=\"text/javascript\" src=\"/js/loader.js\"></script>";
            }
            return "";
        }
    }

    public string AddShareScripts2
    {
        get
        {
            if (Utils.ShowAddShare)
            {
                return "<script type=\"text/javascript\">stLight.options({ publisher: \"5135c174-79a0-4070-9da8-6ea8546a4fff\", doNotHash: false, doNotCopy: false, hashAddressBar: false, publisherGA: \"UA-89139442-1\" });</script>"
                    + "<script>var options = { \"publisher\": \"5135c174-79a0-4070-9da8-6ea8546a4fff\", \"position\": \"left\", \"ad\": { \"visible\": false, \"openDelay\": 5, \"closeDelay\": 0 }, \"chicklets\": { \"items\": [\"facebook\", \"twitter\", \"odnoklassniki\", \"vkontakte\", \"googleplus\", \"blogger\", \"linkedin\", \"pinterest\", \"email\"] } };"
                    + "var st_hover_widget = new sharethis.widgets.hoverbuttons(options);</script>";
            }
            return "";
        }
    }

    public string FBImage
    {
        get
        {
            if (!string.IsNullOrEmpty(m_TitleImage))
            {
                return "<meta name='og:image' content='" + this.SiteURL + Utils.GaleryImagePath.Replace("~", "") + "/" + m_TitleImage + "' />";
            }
            return "";
        }
    }
}
