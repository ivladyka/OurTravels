using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VikkiSoft_BLL;
using System.Text;

public partial class BlogPageView : ProjectPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BlogPage bp = new BlogPage();
            bp.Where.BlogPageID.Value = BlogPageID;
            if (bp.Query.Load())
            {
                lblName.Text = bp.GetColumn(BlogPage.ColumnNames.Name).ToString();
                if (!bp.IsColumnNull(BlogPage.ColumnNames.PageContent))
                {

                    divCategoryContent.InnerHtml = Utils.FormatContent(bp.GetColumn(BlogPage.ColumnNames.PageContent).ToString());
                }
                if (bp.IsBlogPage && (!bp.IsColumnNull(BlogPage.ColumnNames.StartTravelDate) || !bp.IsColumnNull(BlogPage.ColumnNames.EndTravelDate)))
                {
                    lblTravelDate.Visible = true;
                    if (!bp.IsColumnNull(BlogPage.ColumnNames.StartTravelDate))
                    {
                        lblTravelDate.Text = bp.StartTravelDate.ToString("dd.MM.yyyy");
                    }
                    if (!bp.IsColumnNull(BlogPage.ColumnNames.EndTravelDate))
                    {
                        lblTravelDate.Text += " - " + bp.EndTravelDate.ToString("dd.MM.yyyy");
                    }
                }
                else
                {
                    pTravelDate.Visible = false;
                }
                if (bp.IsBlogPage)
                {
                    blogPageTableList.LoadBlogPages(BlogPageID);

                    VikkiSoft_BLL.City c = new VikkiSoft_BLL.City();
                    if (c.LoadByBlogPageID(BlogPageID, false))
                    {
                        if (c.RowCount > 0)
                        {
                            StringBuilder strCityList = new StringBuilder();
                            pRoutes.Visible = true;
                            do
                            {
                                string pageURL = SiteURL + "/" + Utils.GenerateFriendlyURL("city", new string[] { c.GetColumn("CountryName").ToString(), c.s_Name_en }, false);
                                strCityList.Append("<a href=\"" + pageURL + "\">" + c.s_Name + "</a>");
                                if (!c.IsColumnNull(City.ColumnNames.BookingID) && c.s_BookingID.Length > 0)
                                {
                                    strCityList.Append("<a title='Забронюйте найкраще проживання у місті " + c.GetColumn(City.ColumnNames.Name).ToString() 
                                        + " на booking.com!' class='booking-small' href='http://www.booking.com/searchresults.uk.html?city=" + c.s_BookingID +
                                        "&aid=1263910&no_rooms=1&group_adults=2' target='_blank'><img src='" + SiteURL + "/Images/booking_small.png'></a>");
                                }
                                strCityList.Append(" | ");
                            } while (c.MoveNext());
                            pRoutes.InnerHtml = strCityList.ToString().TrimEnd().TrimEnd('|').TrimEnd();
                        }
                    }
                }
                else
                {
                    blogPageTableList.Visible = false;
                }
                if (!bp.IsColumnNull(BlogPage.ColumnNames.MainImage) && bp.s_MainImage.Length > 0)
                {
                    pnlPageTitle.Attributes["style"] = "background-image: url(" + Master.SiteURL + Utils.GaleryImagePath.Replace("~", "") + "/" + bp.MainImage + ");";
                }
            }
        }
    }

    private int BlogPageID
    {
        get
        {
            return Master.BlogPageID;
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