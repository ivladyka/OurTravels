using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VikkiSoft_BLL;

public partial class CityEdit : EditControlBase
{
    private string m_CitySubFolder = "";
    private string m_CityName = "";

    public CityEdit()
    {
        this.m_Name = "Містo";
        this.AllowUserTypes = "LoggedUser";
    }
    protected override Type GetEditableEntityType()
    {
        return typeof(City);
    }

    protected override void InitOnFirstLoading()
    {
        base.InitOnFirstLoading();
        text_Name.Focus();
        if (!IsNew)
        {
            choice_CountryID.Enabled = false;
            text_Name_en.Enabled = false;
            editor_Content.ImageManagerViewPaths = Utils.GaleryImagePath + CitySubFolder;
            InitPhotoUploads();
        }
        else
        {
            pnlTitleImage.Visible = pnlMainImage.Visible = pnlContent.Visible = false;
        }
    }

    protected override void SetEventHandlers()
    {
        if (!IsNew)
        {
            editor_Content.ImageManagerUploadPaths = Utils.GaleryImagePath + CitySubFolder;
            editor_Content.ImageManagerDeletePaths = Utils.GaleryImagePath + CitySubFolder;
            InitPhotoUploads();
        }
        base.SetEventHandlers();
    }

    private void InitPhotoUploads()
    {
        upload_TitleImage.SubFolder = CitySubFolder;
        upload_MainImage.SubFolder = CitySubFolder;
        upload_TitleImage.FileName = (string.IsNullOrEmpty(CityName) ? "" : CityName + "_t");
        upload_MainImage.FileName = CityName;
    }

    public string CitySubFolder
    {
        get
        {
            if (!string.IsNullOrEmpty(m_CitySubFolder))
            {
                return m_CitySubFolder;
            }
            string cityFolder = Server.MapPath(Utils.GaleryImagePath + "//city");
            if (!System.IO.Directory.Exists(cityFolder))
            {
                System.IO.Directory.CreateDirectory(cityFolder);
            }
            if (this.EditableEntity != null)
            {
                City c = (City)this.EditableEntity;
                Country cntr = new Country();
                cntr.LoadByPrimaryKey(c.CountryID);
                string country = cntr.Name_en.ToLower();
                cityFolder = Server.MapPath(Utils.GaleryImagePath + "//city//" + country);
                if (!System.IO.Directory.Exists(cityFolder))
                {
                    System.IO.Directory.CreateDirectory(cityFolder);
                }
                cityFolder = Server.MapPath(Utils.GaleryImagePath + "//city//" + country)
                    + "//" + text_Name_en.Text.ToLower();
                if (!System.IO.Directory.Exists(cityFolder))
                {
                    System.IO.Directory.CreateDirectory(cityFolder);
                }
                m_CitySubFolder = "/city/" + country + "/" + c.Name_en.ToLower();
                m_CityName = c.Name_en.ToLower();
            }
            return m_CitySubFolder;
        }
    }

    protected override void WriteDataToEntity()
    {
        base.WriteDataToEntity();
        City c = (City)this.EditableEntity;
        c.DateUpdate = DateTime.Now;
    }

    protected override void RedirectBackToList()
    {
        if (upload_TitleImage.IsPhotoDeleted)
        {
            upload_TitleImage.DeletePhoto();
        }
        if (upload_MainImage.IsPhotoDeleted)
        {
            upload_MainImage.DeletePhoto();
        }
        Response.Redirect("Office.aspx?content=CityList");
    }

    private string CityName
    {
        get
        {
            return m_CityName;
        }
    }
}