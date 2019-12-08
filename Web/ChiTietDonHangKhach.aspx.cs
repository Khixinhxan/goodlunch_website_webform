using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using MOONLY.BusinessLogic;
using MOONLY.Common;

public partial class ChiTietDonHangKhach :BasePage
{
    private decimal _tongtien;
    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlHead headTag = (HtmlHead)this.Header;
        headTag.Title = "Chi tiết đơn hàng";
        HtmlMeta PagemetaTag = new HtmlMeta();
        PagemetaTag.Name = "Description";
        PagemetaTag.Content = "Chi tiết đơn hàng";
        if (!IsPostBack)
        {
            Label lblWelcome = (Label)Master.FindControl("lblchao");
            lblWelcome.Text = "Xin chào, " + base.NguoiDungHienTai.Hoten;
            HienChiTietDonHang();
        }
    }
    // -----------------Tính tổng cộng cột thành tiền----------------------------
    protected void gridChiTietDonHang_RowDataBound(object sender,
    GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            _tongtien += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "GiaSanPham"));
        }
        lblTongTien.Text = string.Format(_tongtien.ToString()) + " VNĐ";
    }
    private void HienChiTietDonHang()
    {
        XuLyLayChiTietDonHang xulychitiet = new XuLyLayChiTietDonHang();
        ChiTietDonHang chitietdonhang = new ChiTietDonHang();
        chitietdonhang.Iddonhang = int.Parse(Request.QueryString["IdDonHang"]);
        xulychitiet.Chitietdonhang = chitietdonhang;
        try
        {
            xulychitiet.Thucthi();
        }
        catch
        {
            Response.Redirect("Trangloi.aspx");
        }
        gridChiTietDonHang.DataSource = xulychitiet.Ketqua;
        gridChiTietDonHang.DataBind();
        lblIDGiaoDich.Text = Request.QueryString["IDGiaoDich"];
        DonHang donhang = new DonHang();
        donhang.Idgiaodich = Request.QueryString["Idgiaodich"];
    }
    //---------Sự kiện nút trở về-------------------------------------------------
    protected void ImageButtonTroVe_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("DonHangKhach.aspx");
       
    }
}
