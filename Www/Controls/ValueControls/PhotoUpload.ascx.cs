
using System;
using System.IO;
using Telerik.Web.UI;

public partial class Controls_ValueControls_PhotoUpload : PhotoUpload
{
    protected void auFile_FileUploaded(object sender, Telerik.Web.UI.FileUploadedEventArgs e)
    {
        string targetFolder = Server.MapPath(Utils.GaleryImagePath);
        if (!string.IsNullOrEmpty(SubFolder))
        {
            targetFolder = Server.MapPath(Utils.GaleryImagePath + SubFolder);
        }
        foreach (UploadedFile af in auFile.UploadedFiles)
        {
            DeletePhoto();
            hdPhotoNameDeleted.Value = "";
            string newGUID = Guid.NewGuid().ToString();
            if (!string.IsNullOrEmpty(FileName))
            {
                newGUID = FileName;
                if (ImageWidth > 0 && ImageHeight > 0)
                {
                    newGUID += "_temp";
                }
            }
            string extension = af.GetExtension();
            string newFileName = newGUID + extension;
            string path = Path.Combine(targetFolder, newFileName);
            af.SaveAs(path, true);
            if (CreateThumbnail || (ImageWidth > 0 && ImageHeight > 0))
            {
                try
                {
                    System.IO.FileStream fs = System.IO.File.OpenRead(Path.Combine(targetFolder, newFileName));
                    byte[] b = new byte[fs.Length];
                    fs.Read(b, 0, b.Length);
                    if (ImageWidth > 0 && ImageHeight > 0)
                    {
                        if (!string.IsNullOrEmpty(FileName))
                        {
                            newGUID = FileName;
                        }
                        else
                        {
                            newGUID = Guid.NewGuid().ToString();
                        }
                        Utils.ResizeAndSaveJpgImage(b, ImageWidth, ImageHeight, Path.Combine(targetFolder, newGUID + extension), false);
                    }
                    if (CreateThumbnail)
                    {
                        string s_newFileName = newGUID + "_s" + extension;
                        Utils.ResizeAndSaveJpgImage(b, 181, 244, Path.Combine(targetFolder, s_newFileName), true);
                    }
                    fs.Dispose();
                    if (ImageWidth > 0 && ImageHeight > 0)
                    {
                        Utils.DeleteFile(targetFolder, newFileName);
                    }
                }
                catch
                {
                }
            }
            ViewState["VIKKI_UPLOAD_PHOTO_NAME" + this.ClientID] = (string.IsNullOrEmpty(SubFolder) ? "" : SubFolder + "/") + newGUID + extension;
        }
    }
}
