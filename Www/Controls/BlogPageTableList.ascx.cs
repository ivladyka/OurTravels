using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using VikkiSoft_BLL;
using System.Text;
using System.IO;

public partial class BlogPageTableList : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            VikkiSoft_BLL.BlogPage bp = new VikkiSoft_BLL.BlogPage();
            if(BlogPageID > 0)
            {
                bp.SearchByBlogPageID(BlogPageID);
            }
            else
            {
                bp.SearchByCityIDAndCountryID(CityID, CountryID);
            }
            int i = 0;
            StringBuilder strBlogList = new StringBuilder();
            bool shortForm = (bp.DefaultView.Table.Rows.Count > 3);
            foreach (DataRow row in bp.DefaultView.Table.Rows)
            {
                if (i % 3 == 0)
                {
                    strBlogList.Append("<div class=\"row\">");
                }
                string pageURL = SiteURL + "/" + Utils.GenerateFriendlyURL("page", new string[] { row[BlogPage.ColumnNames.BlogPageID].ToString(), row[BlogPage.ColumnNames.Name_en].ToString() }, false);
                strBlogList.Append("<div class=\"col-lg-4 col-md-4\">");
                strBlogList.Append("<div class=\"fh5co-blog animate-box\">");
                if (shortForm)
                {
                    if (!row.IsNull(BlogPage.ColumnNames.TitleImage))
                    {
                        strBlogList.Append("<div class='smallbloglist' style='background-image: url(" + SiteURL + Utils.GaleryImagePath.Replace("~", "") + "/" + row[BlogPage.ColumnNames.TitleImage].ToString() + ");'>");
                        strBlogList.Append("<h3><a href=\"" + pageURL + "\">" + row[BlogPage.ColumnNames.Name].ToString() + "</a></h3>");
                        strBlogList.Append("</div>");
                    }
                }
                else
                {
                    strBlogList.Append("<div class='whitebgbloglist'>");
                    if (!row.IsNull(BlogPage.ColumnNames.TitleImage))
                    {
                        strBlogList.Append("<div class='listblogimg'><a href=\"" + pageURL + "\"><img class=\"img-responsive\" src=\""
                            + SiteURL + Utils.GaleryImagePath.Replace("~", "") + "/" + row[BlogPage.ColumnNames.TitleImage].ToString() + "\" alt=\"\"></a></div>");
                    }
                    strBlogList.Append("<div class=\"blog-text\">");
                    strBlogList.Append("<div class=\"prod-title\">");
                    strBlogList.Append("<h3><a href=\"" + pageURL + "\">" + row[BlogPage.ColumnNames.Name].ToString() + "</a></h3>");
                    if (!row.IsNull(BlogPage.ColumnNames.StartTravelDate))
                    {
                        strBlogList.Append("<span class=\"posted_by\">" + ((DateTime)row[BlogPage.ColumnNames.StartTravelDate]).ToString("dd.mm.yyyy"));
                        if (!row.IsNull(BlogPage.ColumnNames.EndTravelDate))
                        {
                            strBlogList.Append(" - " + ((DateTime)row[BlogPage.ColumnNames.EndTravelDate]).ToString("dd.mm.yyyy"));
                        }
                        strBlogList.Append("</span>");
                    }
                    if (!row.IsNull(BlogPage.ColumnNames.BlogDescription))
                    {
                        strBlogList.Append("<p>" + row[BlogPage.ColumnNames.BlogDescription].ToString() + "</p>");
                    }
                    strBlogList.Append("<a href=\"" + pageURL + "\" class=\"btn btn-primary\">Читати далі</a>");
                    strBlogList.Append("</div>");
                    strBlogList.Append("</div>");
                    strBlogList.Append("</div>");
                }
                strBlogList.Append("</div>");
                strBlogList.Append("</div>");
                i++;
                if (i % 3 == 0)
                {
                    strBlogList.Append("</div>");
                }
            }
            while (i % 3 != 0)
            {
                strBlogList.Append("<div class=\"col-lg-4 col-md-4\">&nbsp;</div>");
                i++;
                if (i % 3 == 0)
                {
                    strBlogList.Append("</div>");
                }
            }
            divBlogPageViewList.InnerHtml = strBlogList.ToString();
            divOtherTravels.Visible = (i > 0);
        }
    }

    public void LoadBlogPages(int blogPageID)
    {
        
    }

    public void LoadBlogPages(int countryID, int cityID)
    {
        
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