using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using VikkiSoft_BLL;
using System.Text;
using System.IO;

public partial class Controls_CityTableView : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            City c = new City();
            if (c.LoadByCountryID(CountryID))
            {
                int i = 0;
                StringBuilder strCityList = new StringBuilder();
                foreach (DataRow row in c.DefaultView.Table.Rows)
                {
                    if (i % 3 == 0)
                    {
                        strCityList.Append("<div class=\"row\">");
                    }
                    string pageURL = SiteURL + "/" + Utils.GenerateFriendlyURL("city", new string[] { row["CountryName"].ToString(), row[City.ColumnNames.Name_en].ToString() }, false);

                    strCityList.Append("<div class=\"col-lg-4 col-md-4 small-blog-item\">");
                    strCityList.Append("<div class=\"fh5co-blog animate-box\">");
                    if (!row.IsNull(City.ColumnNames.TitleImage))
                    {
                        strCityList.Append("<div class='smallbloglist' style='background-image: url(" + SiteURL + Utils.GaleryImagePath.Replace("~", "") + "/" + row[City.ColumnNames.TitleImage].ToString() + ");'><div class='fh5co-overlay'></div>");
                        strCityList.Append("<h3><a href=\"" + pageURL + "\">" + row[City.ColumnNames.Name].ToString() + "</a></h3>");
                        strCityList.Append("</div>");
                    }
                    strCityList.Append("</div>");
                    strCityList.Append("</div>");
                    i++;
                    if (i % 3 == 0)
                    {
                        strCityList.Append("</div>");
                    }
                }
                while (i % 3 != 0)
                {
                    strCityList.Append("<div class=\"col-lg-4 col-md-4\">&nbsp;</div>");
                    i++;
                    if (i % 3 == 0)
                    {
                        strCityList.Append("</div>");
                    }
                }
                divCityViewList.InnerHtml = strCityList.ToString();
                divCities.Visible = (i > 0);
            }
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