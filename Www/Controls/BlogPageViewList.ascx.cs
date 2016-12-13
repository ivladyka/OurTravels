using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using VikkiSoft_BLL;
using System.Text;
using System.IO;

public partial class Controls_BlogPageViewList : System.Web.UI.UserControl
{
    private int m_PageSize = 15;
    private bool m_ShowPager = true;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LoadData(1);
        }
    }

    private void LoadData(int pageIndex)
    {
        VikkiSoft_BLL.BlogPage bp = new VikkiSoft_BLL.BlogPage();
        int recordCount = bp.LoadBlogsWithPaging(pageIndex, PageSize);
        int i = 0;
        StringBuilder strBlogList = new StringBuilder();
        foreach (DataRow row in bp.DefaultView.Table.Rows)
        {
            if(i % 3 == 0)
            {
                strBlogList.Append("<div class=\"row\">");
            }
            string pageURL = SiteURL + "/" + Utils.GenerateFriendlyURL("page", new string[] { row[BlogPage.ColumnNames.BlogPageID].ToString(), row[BlogPage.ColumnNames.Name_en].ToString() }, false);
            strBlogList.Append("<div class=\"col-lg-4 col-md-4\">");
            strBlogList.Append("<div class=\"fh5co-blog animate-box\"><div class='whitebgbloglist'>");
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
        rptPager.Visible = (recordCount > PageSize && ShowPager);
        if (ShowPager)
        {
            LoadPager(recordCount, pageIndex);
        }
    }


    private void LoadPager(int recordCount, int currentPage)
    {
        double dblPageCount = (double)((decimal)recordCount / Convert.ToDecimal(PageSize));
        int pageCount = (int)Math.Ceiling(dblPageCount);
        List<ListItem> pages = new List<ListItem>();
        if (pageCount > 0)
        {
            for (int i = 1; i <= pageCount; i++)
            {
                pages.Add(new ListItem(i.ToString(), i.ToString(), i != currentPage));
            }
        }
        rptPager.DataSource = pages;
        rptPager.DataBind();
    }


    protected void Page_Changed(object sender, EventArgs e)
    {
        int pageIndex = int.Parse((sender as LinkButton).CommandArgument);
        LoadData(pageIndex);
    }

    public int PageSize
    {
        get
        {
            return m_PageSize;
        }
        set
        {
            m_PageSize = value;
        }
    }

    public bool ShowPager
    {
        get
        {
            return m_ShowPager;
        }
        set
        {
            m_ShowPager = value;
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