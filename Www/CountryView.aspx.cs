using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VikkiSoft_BLL;

public partial class CountryView : ProjectPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            VikkiSoft_BLL.Country c = new VikkiSoft_BLL.Country();
            if (c.LoadDetailInfo(CountryID))
            {
                lblName.Text = c.GetColumn(Country.ColumnNames.Name).ToString();
                if (!c.IsColumnNull(Country.ColumnNames.CapitalID))
                {
                    hlCapital.Text = c.GetColumn("CapitalName").ToString();
                    hlCapital.NavigateUrl = Utils.GenerateFriendlyURL("city",
                        new string[] { c.GetColumn("Name_en").ToString(), c.GetColumn("CapitalName_en").ToString() });
                }
                else
                {
                    pnlCapital.Visible = false;
                }
                if (!c.IsColumnNull(Country.ColumnNames.Content))
                {
                    lblCountryContent.Text = c.GetColumn(Country.ColumnNames.Content).ToString();
                }
                if (!c.IsColumnNull(Country.ColumnNames.MainImage) && c.s_MainImage.Length > 0)
                {
                    pnlPageTitle.Attributes["style"] = "background-image: url(" + Master.SiteURL + Utils.GaleryImagePath.Replace("~", "") + "/" + c.MainImage + ");";
                }
            }
        }
    }

    private int CountryID
    {
        get
        {
            return Master.CountryID;
        }
    }
}