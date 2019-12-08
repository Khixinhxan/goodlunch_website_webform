using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class mainchin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        thoigian.InnerHtml =  DateTime.Now.ToString("dd/MM/yyyy");
        int day = Convert.ToInt32(DateTime.Now.DayOfWeek);
        switch(day)
        {
            case 1:
                thu.InnerHtml = "Thứ 2";
                break;
            case 2:
                thu.InnerHtml = "Thứ 3";
                break;
            case 3:
                thu.InnerHtml = "Thứ 4";
                break;
            case 4:
                thu.InnerHtml = "Thứ 5";
                break;
            case 5:
                thu.InnerHtml = "Thứ 6";
                break;
            case 6:
                thu.InnerHtml = "Thứ 7";
                break;
            case 7:
                thu.InnerHtml = "Chủ Nhật";
                break;

        }
      

    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        if (Request.Cookies["ReturnURL"] != null)
        {
            Response.Cookies["ReturnURL"].Expires = DateTime.Now.AddDays(-1);
        }
        Response.Redirect("DangNhap.aspx");
    }
}
