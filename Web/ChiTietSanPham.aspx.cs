using System;
using System.Web.UI.HtmlControls;
using MOONLY.Common;
using MOONLY.BusinessLogic;

public partial class ChiTietSanPham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlHead headTag = (HtmlHead)this.Header;
        headTag.Title = "Chi tiết sản phẩm";
        HtmlMeta PagemetaTag = new HtmlMeta();
        PagemetaTag.Name = "Description";
        PagemetaTag.Content = "Chi tiết sản phẩm";
        if (!IsPostBack)
        {
            Hienchitietsanpham();
        }
    }
    private void Hienchitietsanpham()
    {
        SanPham Spham = new SanPham();
        Spham.Idsanpham = int.Parse(Request.QueryString["IdSanPham"]);
        XuLyLaySanPhamByID laySanPham = new XuLyLaySanPhamByID();
        laySanPham.Sanpham = Spham;
        try
        {
            laySanPham.Thucthi();
        }
        catch
        {
            Response.Redirect("Trangloi.aspx");
        }
        dtlChiTietSanPham.DataSource = laySanPham.Ketqua;
        // dtlChiTietSanPham là ID của DataList
        dtlChiTietSanPham.DataBind();

    }
}
