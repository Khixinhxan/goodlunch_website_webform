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

public partial class TaiNguyenDieuKhien_MenuDanhMuc : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DanhMucSanPham();
        }
    }
    private void DanhMucSanPham()
    {
        XuLyLayDanhMucSanPham xulydanhmucsanpham = new
        XuLyLayDanhMucSanPham();
        try
        {
            xulydanhmucsanpham.Thucthi();
        }
        catch
        {
            Response.Redirect("../Trangloi.aspx");
        }
        GridView1.DataSource = xulydanhmucsanpham.Ketqua;
        GridView1.DataBind();
    }
}
