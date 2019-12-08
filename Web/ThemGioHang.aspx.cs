using System;
using System.Web.UI.HtmlControls;
using MOONLY.BusinessLogic;

using MOONLY.Operational;

public partial class ThemGioHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlHead headTag = (HtmlHead)this.Header;
        headTag.Title = "Thêm giỏ hàng";
        HtmlMeta PagemetaTag = new HtmlMeta();
        PagemetaTag.Name = "Description";
        PagemetaTag.Content = "Thêm giỏ hàng";
        headTag.Controls.Add(PagemetaTag);
        PagemetaTag = new HtmlMeta();
        PagemetaTag.Name = "Keywords";
        PagemetaTag.Content = "Sản phẩm,Sanpham,buatrua,nhanvien,nhân,goodlunch";

        XuLyThemGioHang xulygiohang = new XuLyThemGioHang();
        MOONLY.Common.GioHang giohang = new MOONLY.Common.GioHang();
        giohang.Idsanpham = int.Parse(Request.QueryString["IDsanpham"]);
        giohang.Cartguid = CartGUID;
        giohang.Soluong = 1;
        
       
        xulygiohang.Giohang = giohang;
        
        try
        {
            xulygiohang.Thucthi();
        }
        catch
        {
        Response.Redirect("Trangloi.aspx");
        }
        Response.Redirect("GioHang.aspx");
        }
        private string CartGUID
        {
        get { return TaoCartGUID.LayCartGUID(); }
    }
    }
