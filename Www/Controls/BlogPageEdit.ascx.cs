using System;
using VikkiSoft_BLL;
using Telerik.Web.UI;

public partial class BlogPageEdit : EditControlBase
{
    public BlogPageEdit()
    {
        this.m_Name = "сторінку";
        this.AllowUserTypes = "LoggedUser";
        BackURL = "";
    }

    protected override Type GetEditableEntityType()
    {
        return typeof(BlogPage);
    }

    protected override void InitOnFirstLoading()
    {
        base.InitOnFirstLoading();
        if(IsNew)
        {
            text_Name.Focus();
        }
    }

    protected override void RedirectBackToList()
    {
        Response.Redirect("Office.aspx?content=BlogPageList");
    }

    protected override void WriteDataToEntity()
    {
        base.WriteDataToEntity();
        BlogPage bp = (BlogPage)this.EditableEntity;
        bp.DateUpdate = DateTime.Now;
    }
}
