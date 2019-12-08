using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using MOONLY.BusinessLogic;

public partial class DonHangKhach : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlHead headTag = (HtmlHead)this.Header;
        headTag.Title = "Đơn hàng khách";
        HtmlMeta PagemetaTag = new HtmlMeta();
        PagemetaTag.Name = "Description";
        PagemetaTag.Content = "Đơn hàng khách";
        if (!IsPostBack)
        {
            WebMsgBox.Show("Dang Nhap Thanh Cong");
            Label lblWelcome = (Label)Master.FindControl("lblchao");
            lblWelcome.Text = "Xin chào, " + base.NguoiDungHienTai.Hoten;
            HienThiDonHang();
        }
    }
    private void HienThiDonHang()
    {
        XuLyLayDonHang laydonhang = new XuLyLayDonHang();
        laydonhang.Nguoidung = NguoiDungHienTai;

        try
        {
            laydonhang.Thucthi();
        }
        catch
        {
            Response.Redirect("Trangloi.aspx");
        }
        gridviewOrders.DataSource = laydonhang.Ketqua;
        gridviewOrders.DataBind();
    }
    protected void ImageButtontrove_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("GioiThieuSanPham.aspx");

    }
}
