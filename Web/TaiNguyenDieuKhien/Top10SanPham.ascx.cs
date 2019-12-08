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

public partial class TaiNguyenDieuKhien_Top10SanPham : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HienThiSanPham();
        }
    }
    private void HienThiSanPham()
    {
        XuLyLay10SanPham xulylay10sanpham = new XuLyLay10SanPham();
        try
        {
            xulylay10sanpham.Thucthi();
        }
        catch
        {
            Response.Redirect("../Trangloi.aspx");
        }
        dtl10SanPham.DataSource = xulylay10sanpham.Ketqua;
        dtl10SanPham.DataBind();
    }
}
