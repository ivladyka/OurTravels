using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using VikkiSoft_BLL;
using System.Text;
using System.IO;

public partial class Controls_SiteViewList : System.Web.UI.UserControl
{
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
        bool groupBySiteType = false;
        if (IsBlogPagePage)
        {
            loaded = s.LoadByBlogPageID(BlogPageID);
            groupBySiteType = true;
        }
        else if (IsCountryPage)
        {
            loaded = s.LoadByCountryID(CountryID);
            groupBySiteType = true;
        }
        else if (IsCityPage)
        {
            loaded = s.LoadByCityID(CityID);
            groupBySiteType = true;
        }
        else
        {
            loaded = s.LoadMainSite();
        }
        if (loaded)
        {
            int i = 0;
            int siteTypeIDPrev = 0;
            StringBuilder strSiteList = new StringBuilder();
            foreach (DataRow row in s.DefaultView.Table.Rows)
            {
                if (groupBySiteType)
                {
                    int siteTypeID = int.Parse(row[VikkiSoft_BLL.Site.ColumnNames.SiteTypeID].ToString());
                    if (siteTypeIDPrev != siteTypeID)
                    {
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
                        strSiteList.Append("<div class=\"row\"><div class=\"col-md-12 animate-box fadeInUp animated\">" + row["SiteTypeName"].ToString() + "</div></div>");
                    }
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
            divSiteViewList.InnerHtml = strSiteList.ToString();
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