using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using MOONLY.Common;
//<3
/// <summary>
/// Summary description for BasePage
/// </summary>
public class BasePage : System.Web.UI.Page
{
    internal const string KEY_CURRENTUSER = "Current Logged In User";
    public NguoiDung NguoiDungHienTai
    {
        get
        {
            try
            {
                return (NguoiDung)(Session[KEY_CURRENTUSER]);
            }
            catch
            {
                return (null);
            }
        }
        set
        {
            if (value == null)
            {
                Session.Remove(KEY_CURRENTUSER);
            }
            else
            {
                Session[KEY_CURRENTUSER] = value;
            }
        }
    }
}
