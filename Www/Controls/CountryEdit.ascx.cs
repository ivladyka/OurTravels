using System;
using System.Collections.Generic;
using System.Linq;
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
            pnlMainImage.Visible = pnlContent.Visible = false;
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
}