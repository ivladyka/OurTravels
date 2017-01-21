using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VikkiSoft_BLL;
using Telerik.Web.UI;

public partial class SiteEdit : EditControlBase
{
    public SiteEdit()
    {
        this.m_Name = "Корисне Посилання";
        this.AllowUserTypes = "LoggedUser";
        BackURL = "";
    }
    protected override Type GetEditableEntityType()
    {
        return typeof(Site);
    }

    protected override void InitOnFirstLoading()
    {
        base.InitOnFirstLoading();
        if (IsNew)
        {
            text_Name.Focus();
            rtsSite.Visible = false;
        }
    }

    protected override void RedirectBackToList()
    {
        if (upload_Logo.IsPhotoDeleted)
        {
            upload_Logo.DeletePhoto();
        }
        if (upload_Banner.IsPhotoDeleted)
        {
            upload_Banner.DeletePhoto();
        }
        Response.Redirect("Office.aspx?content=SiteList");
    }

    protected void rtsSite_TabClick(object sender, RadTabStripEventArgs e)
    {
        switch (e.Tab.Text)
        {
            case "Посилання":
                pnlSiteEdit.Visible = true;
                pnlCityList.Visible = false;
                break;
            case "Міста/Країни":
                pnlSiteEdit.Visible = false;
                pnlCityList.Visible = true;
                siteLinksList.RebindGrid();
                break;
        }
    }

    public override EditableEntity EditableEntity
    {
        get
        {
            return UserSession.GetObjectKey(UserSession.EDIT_CONTROL_EDITABLE_ENTITY
                + "SiteEdit") as EditableEntity;
        }
        set
        {
            UserSession.SetObjectKey(UserSession.EDIT_CONTROL_EDITABLE_ENTITY
                + "SiteEdit", value);
        }
    }
}