using System;
using System.Net;
using System.Web.Script.Serialization;
using VikkiSoft_BLL;

public partial class GetBonus : ProjectPageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGetBonus_Click(object sender, EventArgs e)
    {
        lblError.Visible = false;
        if (EmailTypeID == 0)
        {
            lblError.Text = "Невірний Email тип.";
            lblError.Visible = true;
            return;
        }
        if (ValidateReCaptcha())
        {
            Email em = new Email();
            em.AddNew();
            em.EmailAddress = tbEmailAddress.Text;
            em.AddedDate = DateTime.Now;
            em.EmailTypeID = EmailTypeID;
            em.Sent = false;
            em.Save();

            string error = Utils.SendEmail("Запит на KIWI бонус від " + tbEmailAddress.Text, "Запит на KIWI бонус від " + tbEmailAddress.Text);
            if (string.IsNullOrEmpty(error))
            {
                divGetForm.Visible = false;
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
                    ReCaptachaResponse2 data = js.Deserialize<ReCaptachaResponse2>(jsonResponse);
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

    private int EmailTypeID
    {
        get
        {
            if (Request.Params["et"] != null)
            {
                return int.Parse(Request.Params["et"]);
            }
            return 0;
        }
    }
}

public class ReCaptachaResponse2
{
    public string success { get; set; }

    public string hostname { get; set; }
}