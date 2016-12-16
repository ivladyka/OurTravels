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
        if (s.LoadBySiteTypeID(1))
        {
            int i = 0;
            StringBuilder strSiteList = new StringBuilder();
            foreach (DataRow row in s.DefaultView.Table.Rows)
            {
                if (i % 3 == 0)
                {
                    strSiteList.Append("<div class=\"row\">");
                }
                strSiteList.Append("");
                if (!row.IsNull(VikkiSoft_BLL.Site.ColumnNames.Logo))
                {
                    strSiteList.Append("<div class=\"col-md-4 animate-box fadeInUp animated\"><div class=\"feature-left\"><span class=\"icon\">");
                    strSiteList.Append("<a href=\"" + row[VikkiSoft_BLL.Site.ColumnNames.URL].ToString() + "\" target=\"_blank\"><img src=\""
                        + SiteURL + Utils.GaleryImagePath.Replace("~", "") + "/" + row[VikkiSoft_BLL.Site.ColumnNames.Logo].ToString() + "\" alt=\"\"></a>");
                    strSiteList.Append("</span>");
                }
                strSiteList.Append("<div class=\"feature-copy\">");
                strSiteList.Append("<h3><a href=\"" + row[VikkiSoft_BLL.Site.ColumnNames.URL].ToString() + "\" target=\"_blank\">" + row[VikkiSoft_BLL.Site.ColumnNames.Name].ToString()
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
                    strSiteList.Append("</div></div>");
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
}