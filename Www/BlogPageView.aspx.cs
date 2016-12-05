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
                    lblCategoryContent.Text = bp.GetColumn(BlogPage.ColumnNames.PageContent).ToString().Replace("&nbsp;end", "");
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
                if (bp.IsBlogPage)
                {
                    blogPageTableList.LoadBlogPages(BlogPageID);
                }
                else
                {
                    blogPageTableList.Visible = false;
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