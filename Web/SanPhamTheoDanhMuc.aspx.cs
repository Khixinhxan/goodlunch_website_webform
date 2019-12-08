using System;
using System.Web.UI.HtmlControls;
using MOONLY.Common;
using MOONLY.BusinessLogic;

public partial class SanPhamTheoDanhMuc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlHead headTag = (HtmlHead)this.Header;
        headTag.Title = "Sản phẩm theo danh mục";
        HtmlMeta PagemetaTag = new HtmlMeta();
        PagemetaTag.Name = "Description";
        PagemetaTag.Content = "Sản phẩm theo danh mục";
        headTag.Controls.Add(PagemetaTag);
        PagemetaTag = new HtmlMeta();
        PagemetaTag.Name = "Keywords";
        PagemetaTag.Content = "Sản phẩm,Sanpham,buatrua,nhanvien,nhân,goodlunch";
        if (!IsPostBack)
        {
            HienThiSanPham();
        }

    }
    private void HienThiSanPham()
    {
        SanPham sanpham = new SanPham();
        sanpham.Iddanhmucsanpham = int.Parse(Request.QueryString["IdDanhMucSanPham"]);
        XuLyLayDuLieuSanPhamTheoDanhMuc xulylaysanpham = new XuLyLayDuLieuSanPhamTheoDanhMuc();
        xulylaysanpham.Sanpham = sanpham;
        try
        {
            xulylaysanpham.Thucthi();
        }
        catch
        {
            Response.Redirect("Trangloi.aspx");
        }
        dtlSanPhamDM.DataSource = xulylaysanpham.Ketqua;
        dtlSanPhamDM.DataBind();
    }
}
