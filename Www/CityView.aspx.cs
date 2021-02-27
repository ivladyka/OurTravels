using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VikkiSoft_BLL;

public partial class CityView : ProjectPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            VikkiSoft_BLL.City c = new VikkiSoft_BLL.City();
            if (c.LoadDetailInfo(CityID))
            {
                lblName.Text = c.GetColumn(City.ColumnNames.Name).ToString();
                if (!c.IsColumnNull(City.ColumnNames.Content))
                {
                    divCityContent.InnerHtml = Utils.FormatContent(c.GetColumn(City.ColumnNames.Content).ToString(), SiteURL).Replace("[City_Advert1]", c.s_Advert1)
                        .Replace("[City_Advert2]", c.s_Advert2);
                }
                else
                {
                    h4OurTravelsInThisWay.Visible = hrOurTravelsInThisWay.Visible = blogPageTableListBig.TitleVisible = divCityContentContainer.Visible = false;
                }
                hlCountry.Text = c.GetColumn("CountryName").ToString();
                hlCountry.NavigateUrl = Utils.GenerateFriendlyURL("country",
                    new string[] { c.GetColumn("CountryName_en").ToString() });
                if (!c.IsColumnNull(City.ColumnNames.MainImage) && c.s_MainImage.Length > 0)
                {
                    pnlPageTitle.Attributes["style"] = "background-image: url(" + Master.SiteURL + Utils.GaleryImagePath.Replace("~", "") + "/" + c.MainImage + ");";
                }
                if (!c.IsColumnNull(City.ColumnNames.BookingID) && c.s_BookingID.Length > 0)
                {
                    hlBooking.Visible = true;
                    hlBooking.Text = "<img id='imgBooking' runat='server' src='" + SiteURL + "/Images/booking_large.png' />";
                    hlBooking.NavigateUrl = "http://www.booking.com/searchresults.uk.html?city=" + c.s_BookingID + "&aid=1263910&no_rooms=1&group_adults=2";
                    hlBooking.ToolTip = "Забронюйте найкраще проживання у місті " + c.GetColumn(City.ColumnNames.Name).ToString() + " на booking.com!";
                }
            }
        }
    }

    private int CityID
    {
        get
        {
            return Master.CityID;
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