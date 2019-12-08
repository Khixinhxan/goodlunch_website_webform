using System;
using System.Net;
using System.Net.Mail;
using System.Web.UI.HtmlControls;


public partial class Mail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlHead headTag = (HtmlHead)this.Header;
        headTag.Title = "Liên hệ";
        HtmlMeta PagemetaTag = new HtmlMeta();
        PagemetaTag.Name = "Description";
        PagemetaTag.Content = "Liên hệ cho quản trị viên";
        if (!IsPostBack)
        {
            WebMsgBox.Show("Bạn cần liên hệ cho chúng tôi");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            MailAddress fromAddress = new MailAddress(FromGM.Text, "From Name");
            MailAddress toAddress = new MailAddress("goodluchkitchen@gmail.com", "To Name");
            string fromPassword = PassGM.Text;
            string subject = SubjectGM.Text;
            string body = MessGM.Text;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential(fromAddress.Address, fromPassword);

            MailMessage message = new MailMessage(fromAddress, toAddress);
            message.Body = body;
            message.Subject = subject;
            smtp.Send(message);
            WebMsgBox.Show("Email sent");
        }
        catch (Exception)
        {
            WebMsgBox.Show("Fails");
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email don't send.');", true);
        }
    }
}