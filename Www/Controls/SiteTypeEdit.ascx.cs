using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VikkiSoft_BLL;

public partial class SiteTypeEdit : EditControlBase
{
    public SiteTypeEdit()
    {
        this.m_Name = "Тип Корисного Посилання";
        this.AllowUserTypes = "LoggedUser";
    }
    protected override Type GetEditableEntityType()
    {
        return typeof(SiteType);
    }

    protected override void InitOnFirstLoading()
    {
        base.InitOnFirstLoading();
        text_Name.Focus();
    }
}