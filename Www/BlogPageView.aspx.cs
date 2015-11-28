﻿using System;
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
                    lblCategoryContent.Text = bp.GetColumn(BlogPage.ColumnNames.PageContent).ToString();
                }
            }
        }
    }

    private int BlogPageID
    {
        get
        {
            if (Request.QueryString["ct"] != null)
            {
                return int.Parse(Request.QueryString["ct"].ToString());
            }
            return 0;
        }
    }
}