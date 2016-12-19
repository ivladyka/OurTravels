using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VikkiSoft_BLL;

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
                        lblTravelDate.Text = bp.s_StartTravelDate;
                    }
                    if (!bp.IsColumnNull(BlogPage.ColumnNames.EndTravelDate))
                    {
                        lblTravelDate.Text += " - " + bp.s_EndTravelDate;
                    }
                }
                else
                {
                    pTravelDate.Visible = false;
                }
                if (bp.IsBlogPage)
                {
                    blogPageTableList.LoadBlogPages(BlogPageID);
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
}