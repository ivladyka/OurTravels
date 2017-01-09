using System;
using System.Collections.Generic;
using Telerik.Web.UI;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VikkiSoft_BLL;

public partial class CountryEdit : EditControlBase
{
    private string m_CountrySubFolder = "";
    private string m_CountryName = "";

    public CountryEdit()
    {
        this.m_Name = "Країнa";
        this.AllowUserTypes = "LoggedUser";
    }
    protected override Type GetEditableEntityType()
    {
        return typeof(Country);
    }

    protected override void InitOnFirstLoading()
    {
        base.InitOnFirstLoading();
        text_Name.Focus();
        if (!IsNew)
        {
            text_Name_en.Enabled = false;
            editor_Content.ImageManagerViewPaths = Utils.GaleryImagePath + CountrySubFolder;
            InitPhotoUpload();
        }
        else
        {
            pnlMainImage.Visible = pnlContent.Visible = rtsCountry.Visible = false;
        }
    }

    protected override void SetEventHandlers()
    {
        if (!IsNew)
        {
            editor_Content.ImageManagerUploadPaths = Utils.GaleryImagePath + CountrySubFolder;
            editor_Content.ImageManagerDeletePaths = Utils.GaleryImagePath + CountrySubFolder;
            InitPhotoUpload();
        }
        base.SetEventHandlers();
    }

    private void InitPhotoUpload()
    {
        upload_MainImage.SubFolder = CountrySubFolder;
        upload_MainImage.FileName = CountryName;
    }

    protected override void WriteDataToEntity()
    {
        base.WriteDataToEntity();
        Country c = (Country)this.EditableEntity;
        c.DateUpdate = DateTime.Now;
    }

    public string CountrySubFolder
    {
        get
        {
            if (!string.IsNullOrEmpty(m_CountrySubFolder))
            {
                return m_CountrySubFolder;
            }
            string countryFolder = Server.MapPath(Utils.GaleryImagePath + "//country");
            if (!System.IO.Directory.Exists(countryFolder))
            {
                System.IO.Directory.CreateDirectory(countryFolder);
            }
            if (this.EditableEntity != null)
            {
                Country c = (Country)this.EditableEntity;
                countryFolder = Server.MapPath(Utils.GaleryImagePath + "//country//" + c.Name_en.ToLower());
                if (!System.IO.Directory.Exists(countryFolder))
                {
                    System.IO.Directory.CreateDirectory(countryFolder);
                }
                m_CountrySubFolder = "/country/" + c.Name_en.ToLower();
                m_CountryName = c.Name_en.ToLower();
            }
            return m_CountrySubFolder;
        }
    }

    protected override void RedirectBackToList()
    {
        if (upload_MainImage.IsPhotoDeleted)
        {
            upload_MainImage.DeletePhoto();
        }
        Response.Redirect("Office.aspx?content=CountryList");
    }

    private string CountryName
    {
        get
        {
            return m_CountryName;
        }
    }

    protected void rtsCountry_TabClick(object sender, RadTabStripEventArgs e)
    {
        switch (e.Tab.Text)
        {
            case "Країна":
                pnlCountryEdit.Visible = true;
                pnlSiteList.Visible = false;
                break;
            case "Корисні посилання":
                pnlCountryEdit.Visible = false;
                pnlSiteList.Visible = true;
                countrySiteList.RebindGrid();
                break;
        }
    }

    public override EditableEntity EditableEntity
    {
        get
        {
            return UserSession.GetObjectKey(UserSession.EDIT_CONTROL_EDITABLE_ENTITY
                + "CountryEdit") as EditableEntity;
        }
        set
        {
            UserSession.SetObjectKey(UserSession.EDIT_CONTROL_EDITABLE_ENTITY
                + "CountryEdit", value);
        }
    }
}