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
            rtsBlogPage.Visible = false;
        }
    }

    protected override void RedirectBackToList()
    {
        if (upload_TitleImage.IsPhotoDeleted)
        {
            upload_TitleImage.DeletePhoto();
        }
        Response.Redirect("Office.aspx?content=BlogPageList");
    }

    protected override void WriteDataToEntity()
    {
        base.WriteDataToEntity();
        BlogPage bp = (BlogPage)this.EditableEntity;
        bp.DateUpdate = DateTime.Now;
    }

    protected void rtsBlogPage_TabClick(object sender, RadTabStripEventArgs e)
    {
        switch (e.Tab.Text)
        {
            case "Подорож/Сторінка":
                pnlBlogPageEdit.Visible = true;
                pnlCityList.Visible = false;
                break;
            case "Міста":
                pnlBlogPageEdit.Visible = false;
                pnlCityList.Visible = true;
                blogPageCityList.RebindGrid();
                break;
        }
    }

    public override EditableEntity EditableEntity
    {
        get
        {
            return UserSession.GetObjectKey(UserSession.EDIT_CONTROL_EDITABLE_ENTITY
                + "BlogPageEdit") as EditableEntity;
        }
        set
        {
            UserSession.SetObjectKey(UserSession.EDIT_CONTROL_EDITABLE_ENTITY
                + "BlogPageEdit", value);
        }
    }
}
