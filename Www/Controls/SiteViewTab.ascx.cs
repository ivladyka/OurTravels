using System;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using VikkiSoft_BLL;
using System.Text;
using System.IO;

public partial class Controls_SiteViewTab : System.Web.UI.UserControl
{
    private Hashtable m_htCityStyles = new Hashtable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LoadData();
        }
    }

    private void LoadData()
    {
        VikkiSoft_BLL.Site s = new VikkiSoft_BLL.Site();
        bool loaded = false;
        bool showCityName = false;
        if (IsBlogPagePage)
        {
            loaded = s.LoadByBlogPageID(BlogPageID);
            showCityName = true;
            m_htCityStyles.Clear();
            VikkiSoft_BLL.City c = new VikkiSoft_BLL.City();
            if (c.LoadByBlogPageID(BlogPageID, true))
            {
                if (c.RowCount > 0)
                {
                    int indexCity = 0;
                    do
                    {
                        m_htCityStyles.Add(c.s_Name, "city" + (indexCity > 0 ? indexCity.ToString() : ""));
                        indexCity++;
                    } while (c.MoveNext());
                }
            }
        }
        else if (IsCountryPage)
        {
            loaded = s.LoadByCountryID(CountryID);
        }
        else if (IsCityPage)
        {
            loaded = s.LoadByCityID(CityID);
        }
        if (loaded)
        {
            int i = 0;
            int siteTypeIDPrev = 0;
            StringBuilder strSiteList = new StringBuilder();
            StringBuilder strSiteTypeList = new StringBuilder();
            StringBuilder strUsefulLinksDDL = new StringBuilder();
            ulSiteTypes.Visible = divSiteLinks.Visible = divUsefulLinksDDL.Visible = (s.DefaultView.Table.Rows.Count > 0);
            if (s.DefaultView.Table.Rows.Count > 0)
            {
                strUsefulLinksDDL.Append("<select id=\"ddlUsefulLinks\" class=\"form-control\" onchange=\"TD_UsefulLinksDDLChanged()\">");
                strUsefulLinksDDL.Append(" <option value=\"0\" selected=\"selected\">--Корисні посилання--</option>");
            }
            foreach (DataRow row in s.DefaultView.Table.Rows)
            {
                string logoURLSmall = SiteURL + Utils.SiteTypeImagePath.Replace("~", "") + "/" + row[SiteType.ColumnNames.SiteTypeID].ToString() + "-small.png";
                int siteTypeID = int.Parse(row[VikkiSoft_BLL.Site.ColumnNames.SiteTypeID].ToString());
                if (siteTypeIDPrev != siteTypeID)
                {
                    if (siteTypeIDPrev != 0)
                    {
                        strSiteList.Append("</div>");
                    }
                    siteTypeIDPrev = siteTypeID;
                    while (i % 3 != 0)
                    {
                        strSiteList.Append("<div class=\"col-lg-4 col-md-4\">&nbsp;</div>");
                        i++;
                        if (i % 3 == 0)
                        {
                            strSiteList.Append("</div>");
                        }
                    }
                    strSiteTypeList.Append("<li><a data-toggle=\"pill\" href=\"#divSiteType" + siteTypeID + "\"><img src=\""
                        + logoURLSmall + "\" alt=\"\" style=\"height: 32px; margin-right:20px\"/>" + row["SiteTypeName"].ToString() + "</a></li>");
                    strSiteList.Append("<div id=\"divSiteType" + siteTypeID + "\" class=\"tab-pane fade\">");
                    strUsefulLinksDDL.Append(" <option value=\"" + siteTypeID.ToString() + "\">" + row["SiteTypeName"].ToString() + "</option>");
                }
                if (i % 3 == 0)
                {
                    strSiteList.Append("<div class=\"row\">");
                }
                strSiteList.Append("");
                string logoURL = SiteURL + Utils.SiteTypeImagePath.Replace("~", "") + "/" + row[SiteType.ColumnNames.SiteTypeID].ToString() + ".png";
                if (!row.IsNull(VikkiSoft_BLL.Site.ColumnNames.Logo))
                {
                    logoURL = SiteURL + Utils.GaleryImagePath.Replace("~", "") + "/" + row[VikkiSoft_BLL.Site.ColumnNames.Logo].ToString();
                }
                strSiteList.Append("<div class=\"col-md-4 animate-box fadeInUp animated\"><div class=\"feature-left\"><span class=\"icon\">");
                strSiteList.Append("<a href=\"" + row[VikkiSoft_BLL.Site.ColumnNames.URL].ToString() + "\" target=\"_blank\" rel=\"nofollow\"><img src=\""
                    + logoURL + "\" alt=\"\"></a>");
                if (showCityName)
                {
                    string cityList = row["CityList"].ToString();
                    if (!string.IsNullOrEmpty(cityList))
                    {
                        string[] arrCity = cityList.TrimEnd(';').Split(';');
                        foreach (string cityName in arrCity)
                        {
                            strSiteList.Append("<span class=\"" + m_htCityStyles[cityName].ToString() + "\">" + cityName + "</span>");
                        }
                    }
                }
                strSiteList.Append("</span>");
                strSiteList.Append("<div class=\"feature-copy\">");
                strSiteList.Append("<h3><a href=\"" + row[VikkiSoft_BLL.Site.ColumnNames.URL].ToString() + "\" target=\"_blank\" rel=\"nofollow\">" + row[VikkiSoft_BLL.Site.ColumnNames.Name].ToString()
                    + "</a></h3>");
                strSiteList.Append("<p>" + row[VikkiSoft_BLL.Site.ColumnNames.Notes].ToString() + "</p>");
                strSiteList.Append("</div>");
                strSiteList.Append("</div></div>");
                i++;
                if (i % 3 == 0)
                {
                    strSiteList.Append("</div>");
                }
            }
            while (i % 3 != 0)
            {
                strSiteList.Append("<div class=\"col-lg-4 col-md-4\">&nbsp;</div>");
                i++;
                if (i % 3 == 0)
                {
                    strSiteList.Append("</div>");
                }
            }
            if (strSiteList.Length > 0)
            {
                strSiteList.Append("</div>");
            }
            if (s.DefaultView.Table.Rows.Count > 0)
            {
                strUsefulLinksDDL.Append("</select>");
            }
            ulSiteTypes.InnerHtml = strSiteTypeList.ToString();
            divSiteLinks.InnerHtml = strSiteList.ToString();
            divUsefulLinksDDL.InnerHtml = strUsefulLinksDDL.ToString();
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

    private bool IsCountryPage
    {
        get
        {
            MasterPageBase master = Page.Master as MasterPageBase;
            if (master != null)
            {
                return master.IsCountryPage;
            }
            return false;
        }
    }

    private bool IsCityPage
    {
        get
        {
            MasterPageBase master = Page.Master as MasterPageBase;
            if (master != null)
            {
                return master.IsCityPage;
            }
            return false;
        }
    }

    private bool IsBlogPagePage
    {
        get
        {
            MasterPageBase master = Page.Master as MasterPageBase;
            if (master != null)
            {
                return master.IsBlogPagePage;
            }
            return false;
        }
    }

    private int BlogPageID
    {
        get
        {
            MasterPageBase master = Page.Master as MasterPageBase;
            if (master != null)
            {
                return master.BlogPageID;
            }
            return 0;
        }
    }

    private int CityID
    {
        get
        {
            MasterPageBase master = Page.Master as MasterPageBase;
            if (master != null)
            {
                return master.CityID;
            }
            return 0;
        }
    }

    private int CountryID
    {
        get
        {
            MasterPageBase master = Page.Master as MasterPageBase;
            if (master != null)
            {
                return master.CountryID;
            }
            return 0;
        }
    }
}