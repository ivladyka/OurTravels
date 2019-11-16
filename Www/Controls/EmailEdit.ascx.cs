using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VikkiSoft_BLL;

public partial class EmailEdit : EditControlBase
{
    public EmailEdit()
    {
        this.m_Name = "Email";
        this.AllowUserTypes = "LoggedUser";
    }
    protected override Type GetEditableEntityType()
    {
        return typeof(Email);
    }

    protected override void InitOnFirstLoading()
    {
        base.InitOnFirstLoading();
        text_EmailAddress.Focus();
    }
}