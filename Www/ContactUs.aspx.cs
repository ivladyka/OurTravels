using System;
using System.Net;
using System.Web.Script.Serialization;

public partial class ContactUs : ProjectPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnLeaveResponse_Click(object sender, EventArgs e)
    {
        lblError.Visible = false;
        if (ValidateReCaptcha())
        {
            string error = Utils.SendEmail("Повідомлення від  " + tbName.Text + " (" + tbEmail.Text + ")", tbMessage.Text);
            if (string.IsNullOrEmpty(error))
            {
                divContact.Visible = false;
                divSuccessMessage.Visible = true;
            }
            else
            {
                lblError.Text = error;
                lblError.Visible = true;
            }
        }
        else
        {
            lblCapchaError.Visible = true;
        }
    }

    public bool ValidateReCaptcha()
    {
        string response = Request["g-recaptcha-response"];
        bool valid = false;
        HttpWebRequest req = (HttpWebRequest)WebRequest.Create("https://www.google.com/recaptcha/api/siteverify?secret=" + ReCaptchaSecretKey + "&response=" + response);
        try
        {
            using (WebResponse wResponse = req.GetResponse())
            {
                using (System.IO.StreamReader readStream = new System.IO.StreamReader(wResponse.GetResponseStream()))
                {
                    string jsonResponse = readStream.ReadToEnd();
                    JavaScriptSerializer js = new JavaScriptSerializer();
                    ReCaptachaResponse data = js.Deserialize<ReCaptachaResponse>(jsonResponse);
                    valid = Convert.ToBoolean(data.success) && (System.Web.HttpContext.Current.Request.ServerVariables["SERVER_NAME"] == data.hostname);
                }
            }
        }
        catch { }
        return valid;
    }

    public string ReCaptchaSiteKey
    {
        get
        {
            return Utils.ReCaptchaSiteKey;
        }
    }

    private string ReCaptchaSecretKey
    {
        get
        {
            return Utils.ReCaptchaSecretKey;
        }
    }
}

public class ReCaptachaResponse
{
    public string success { get; set; }

    public string hostname { get; set; }
}