using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using VikkiSoft_BLL;

public partial class _Default : ProjectPageBase
{
    private int m_PageSize = 7;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            LoadData(1);
        }
    }

    private void LoadData(int pageIndex)
    {
        VikkiSoft_BLL.BlogPage bp = new VikkiSoft_BLL.BlogPage();
        int recordCount = bp.LoadBlogsWithPaging(pageIndex, PageSize);
        rptBlogPage.DataSource = bp.DefaultView.Table;
        rptBlogPage.DataBind();
        rptPager.Visible = (recordCount > PageSize);
        LoadPager(recordCount, pageIndex);
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

    protected void rptBlogPage_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        DataRow row = ((DataRowView)e.Item.DataItem).Row;
        HyperLink hlTitle = (HyperLink)e.Item.FindControl("hlTitle");
        HyperLink hlReadMore = (HyperLink)e.Item.FindControl("hlReadMore");
        if (hlTitle != null && hlReadMore != null)
        {
           hlReadMore.NavigateUrl = hlTitle.NavigateUrl = Utils.GenerateFriendlyURL("page", new string[] {
                       row[BlogPage.ColumnNames.BlogPageID].ToString(),
                        row[BlogPage.ColumnNames.Name_en].ToString()});
        }
        Label lblTravelDate = (Label)e.Item.FindControl("lblTravelDate");
        if(lblTravelDate != null)
        {
            if(!row.IsNull(BlogPage.ColumnNames.StartTravelDate) || !row.IsNull(BlogPage.ColumnNames.EndTravelDate))
            {
                lblTravelDate.Visible = true;
                if (!row.IsNull(BlogPage.ColumnNames.StartTravelDate))
                {
                    lblTravelDate.Text = ((DateTime)row[BlogPage.ColumnNames.StartTravelDate]).ToString("dd.mm.yyyy");
                }
                if (!row.IsNull(BlogPage.ColumnNames.EndTravelDate))
                {
                    lblTravelDate.Text += " - " + ((DateTime)row[BlogPage.ColumnNames.EndTravelDate]).ToString("dd.mm.yyyy");
                }
            }
        }
    }

    private int PageSize
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
}