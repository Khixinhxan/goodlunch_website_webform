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
using MOONLY.BusinessLogic;

public partial class TaiNguyenDieuKhien_ThongKeTruyCap : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblOnline.Text = Application["SoNguoiOnLine"].ToString();
        XuLyLayThongKeTruyCap thongketruycap = new XuLyLayThongKeTruyCap();
        thongketruycap.Thucthi();
        // Hiển thị lượt truy cập ra điều khiển GridView1
        GridView1.DataSource = thongketruycap.Ketqua; // GridView1 là ID của GridView
        GridView1.DataBind();
    }
}
