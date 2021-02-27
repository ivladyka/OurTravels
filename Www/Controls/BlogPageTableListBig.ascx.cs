using System;
using System.Web.UI;
using System.Data;
using VikkiSoft_BLL;
using System.Text;
using System.Text.RegularExpressions;

public partial class Controls_BlogPageTableListBig : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            VikkiSoft_BLL.BlogPage bp = new VikkiSoft_BLL.BlogPage();
            bp.SearchByCityIDAndCountryID(CityID, CountryID);
            Settings s = new Settings();
            if (s.LoadByPrimaryKey(1))
            {
            }
            int i = 0;
            StringBuilder strBlogList = new StringBuilder();
            int indexAdvert1 = 3;
            int indexAdvert2 = 5;
            int indexAdvert3 = 7;
            bool addedAdvert1 = false;
            bool addedAdvert2 = false;
            bool addedAdvert3 = false;
            if(bp.DefaultView.Table.Rows.Count < 7)
            {
                indexAdvert1 = 2;
                indexAdvert2 = 5;
                indexAdvert3 = 6;
            }
            if (bp.DefaultView.Table.Rows.Count < 5)
            {
                indexAdvert1 = 1;
                indexAdvert2 = 3;
                indexAdvert3 = 5;
            }
            if (bp.DefaultView.Table.Rows.Count <= 3)
            {
                indexAdvert1 = 1;
                indexAdvert2 = 2;
                indexAdvert3 = 3;
            }
            string advert1 = "";
            string advert2 = "";
            if (CityID > 0)
            {
                City c = new City();
                if (c.LoadByPrimaryKey(CityID))
                {
                    advert1 = c.s_Advert1;
                    advert2 = c.s_Advert2;
                }
            }
            else if (CountryID > 0)
            {
                Country c = new Country();
                if (c.LoadByPrimaryKey(CountryID))
                {
                    advert1 = c.s_Advert1;
                    advert2 = c.s_Advert2;
                }
            }
            foreach (DataRow row in bp.DefaultView.Table.Rows)
            {
                strBlogList.Append("<div class=\" fh5co-blog animate-box\">");
                strBlogList.Append("<div class='whitebgbloglistbig col-lg-12 p-3 mt-3'>");
                string pageURL = SiteURL + "/" + Utils.GenerateFriendlyURL("page", new string[] { row[BlogPage.ColumnNames.BlogPageID].ToString(), row[BlogPage.ColumnNames.Name_en].ToString() }, false);
               
                strBlogList.Append("<div class='row'>");
                strBlogList.Append("<div class=\" small-blog-item\">");
                string mainImageUrl = "";
                StringBuilder strPageContent = new StringBuilder();
                if (!row.IsNull(BlogPage.ColumnNames.PageContent))
                {
                    string tagRegex = @"<\s*([^ >]+)[^>]*>.*?<\s*/\s*\1\s*>";
                    MatchCollection matchesImgSrc = Regex.Matches(row[BlogPage.ColumnNames.PageContent].ToString(), tagRegex, RegexOptions.IgnoreCase | RegexOptions.Singleline);
                    foreach (Match m in matchesImgSrc)
                    {
                        if (m.Value.StartsWith("<p>") && m.Value.IndexOf("<img") == -1 && m.Value.IndexOf("<span class=\"text_style3") == -1 && strPageContent.Length < 600)
                        {
                            strPageContent.Append(Utils.FormatContent(m.Value, SiteURL));
                        }
                        if (string.IsNullOrEmpty(mainImageUrl) && m.Value.StartsWith("<p><img"))
                        {
                            int indexSrc = m.Value.IndexOf(" src=\"");
                            if(indexSrc > 0)
                            {
                                string imageSrc = m.Value.Substring(indexSrc + 6);
                                int indexEndSrc = imageSrc.IndexOf("\"");
                                if(indexEndSrc > 0)
                                {
                                    mainImageUrl = imageSrc.Substring(0, indexEndSrc);
                                }
                            }
                        }
                        if (strPageContent.Length >= 600 && !string.IsNullOrEmpty(mainImageUrl))
                        {
                            break;
                        }
                    }
                }
                if (string.IsNullOrEmpty(mainImageUrl) && !row.IsNull(BlogPage.ColumnNames.TitleImage))
                {
                    mainImageUrl = Utils.GaleryImagePath.Replace("~", "") + "/" + row[BlogPage.ColumnNames.TitleImage].ToString();
                }
                if (!string.IsNullOrEmpty(mainImageUrl))
                {
                    strBlogList.Append("<a href=\"" + pageURL + "\"><div class='listblogimg' style='background-image:url(\""
                        + SiteURL + mainImageUrl + "\")'></div></a>");
                }
                strBlogList.Append("</div>");
                strBlogList.Append("</div>");
                strBlogList.Append("<div class='row title-div'>");
                strBlogList.Append("<div class='col-lg-1'></div><div class='col-lg-10'>");
                strBlogList.Append("<h3><a href=\"" + pageURL + "\">" + row[BlogPage.ColumnNames.Name].ToString()
                    + (!row.IsNull(BlogPage.ColumnNames.BlogDescription) ? " - " + row[BlogPage.ColumnNames.BlogDescription].ToString() : "") + "</a></h3>");
              
                strBlogList.Append("</div><div class='col-lg-1'></div>");
                strBlogList.Append("<div class=\"col-lg-12 col-md-12 small-blog-item\">");
                strBlogList.Append("<div class=\"blog-text\">");
                strBlogList.Append("<div class=\"prod-title\">");
                if (!row.IsNull(BlogPage.ColumnNames.StartTravelDate))
                {
                    strBlogList.Append("<span class=\"posted_by\">" + ((DateTime)row[BlogPage.ColumnNames.StartTravelDate]).ToString("dd.MM.yyyy"));
                    if (!row.IsNull(BlogPage.ColumnNames.EndTravelDate))
                    {
                        strBlogList.Append(" - " + ((DateTime)row[BlogPage.ColumnNames.EndTravelDate]).ToString("dd.MM.yyyy"));
                    }
                    strBlogList.Append("</span>");
                }
                if (strPageContent.Length > 0)
                {
                    strBlogList.Append(strPageContent);
                }
                strBlogList.Append("<p><a href=\"" + pageURL + "\" class=\"btn btn-primary\">Читати далі</a></p>");
                strBlogList.Append("</div>");
                strBlogList.Append("</div>");
                strBlogList.Append("</div>");
                i++;
                strBlogList.Append("</div>");
                strBlogList.Append("</div>");
                strBlogList.Append("</div>");
                if(i == indexAdvert1 && s.s_Advert1.Length > 0)
                {
                    strBlogList.Append(Utils.FormatContent(s.s_Advert1, SiteURL));
                    addedAdvert1 = true;
                }
                if (CityID > 0)
                {
                    if (i == indexAdvert2 && s.s_Advert2.Length > 0 && advert1.Length > 0)
                    {
                        strBlogList.Append(Utils.FormatContent(s.s_Advert2, SiteURL).Replace("[City_Advert1]", advert1));
                        addedAdvert2 = true;
                    }
                    if (i == indexAdvert3 && advert2.Length > 0)
                    {
                        strBlogList.Append(Utils.FormatContent(advert2, SiteURL));
                        addedAdvert3 = true;
                    }
                }
                else if (CountryID > 0)
                {
                    if (i == indexAdvert2 && advert1.Length > 0)
                    {
                        strBlogList.Append(Utils.FormatContent(advert1, SiteURL));
                        addedAdvert2 = true;
                    }

                    if (i == indexAdvert3 && advert2.Length > 0)
                    {
                        strBlogList.Append(Utils.FormatContent(advert2, SiteURL));
                        addedAdvert3 = true;
                    }
                }
            }
            if(!addedAdvert1)
            {
                strBlogList.Append(Utils.FormatContent(s.s_Advert1, SiteURL));
            }
            if (!addedAdvert2 || !addedAdvert3)
            {
                if(CityID > 0)
                {
                    if (!addedAdvert2 && s.s_Advert2.Length > 0)
                    {
                        if (advert1.Length > 0)
                        {
                            strBlogList.Append(Utils.FormatContent(s.s_Advert2, SiteURL).Replace("[City_Advert1]", advert1));
                        }
                    }
                    if (!addedAdvert3)
                    {
                        if (advert2.Length > 0)
                        {
                            strBlogList.Append(Utils.FormatContent(advert2, SiteURL));
                        }
                    }
                } 
                else if (CountryID > 0)
                {
                    if (!addedAdvert2)
                    {
                        if (advert1.Length > 0)
                        {
                            strBlogList.Append(Utils.FormatContent(advert1, SiteURL));
                        }
                    }
                    if (!addedAdvert3)
                    {
                        if (advert2.Length > 0)
                        {
                            strBlogList.Append(Utils.FormatContent(advert2, SiteURL));
                        }
                    }
                }
            }
            divBlogPageViewList.InnerHtml = strBlogList.ToString();
            divOtherTravels.Visible = (i > 0);
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

    public bool TitleVisible
    {
        set
        {
            divTitle.Visible = value;
        }
    }
}