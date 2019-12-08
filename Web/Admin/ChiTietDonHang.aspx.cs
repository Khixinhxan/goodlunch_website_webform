using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using MOONLY.Common;
using MOONLY.BusinessLogic;
using System.Web.UI.WebControls;

public partial class Admin_ChiTietDonHang : System.Web.UI.Page
{
    private int _tongtien;

    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlHead headTag = (HtmlHead)this.Header;
        headTag.Title = "Chi tiết đơn hàng Admin";
        HtmlMeta PagemetaTag = new HtmlMeta();
        PagemetaTag.Name = "Description";
        PagemetaTag.Content = "Chi tiết đơn hàng Admin";
     

        if (!IsPostBack)
        {
            HienThiTinhTrangDonHang();
            HienThiChiTietDonHang();
        }
    }
    // ------------Hiển thị chi tiết đơn hàng trong gridview----------
    private void HienThiChiTietDonHang()
    {
        XuLyLayChiTietDonHang xulychitietdonhang = new XuLyLayChiTietDonHang();
        XuLyLayDonHangByID xulydonhangid = new XuLyLayDonHangByID();
        ChiTietDonHang chitietdonhang = new ChiTietDonHang();
        chitietdonhang.Iddonhang = int.Parse(Request.QueryString["IDdonhang"]);
        xulychitietdonhang.Chitietdonhang = chitietdonhang;
        DonHang donhang = new DonHang();
        donhang.Iddonhang = int.Parse(Request.QueryString["IDdonhang"]);
        xulydonhangid.Donhang = donhang;
        try
        {
            xulychitietdonhang.Thucthi();
            xulydonhangid.Thucthi();
        }
        catch
        {
            Response.Redirect("../Trangloi.aspx");
        }
        gridviewOrderDetailsProducts.DataSource = xulychitietdonhang.Ketqua;
        gridviewOrderDetailsProducts.DataBind();


        //------Hiển thị ID giao dịch trong label------------------
        labelTransactionID.Text = Request.QueryString["IDgiaodich"];
        //------Hiển thị ngày xử lý đơn hàng---------------------
        if (donhang.Ngayxulydonhang != DateTime.MinValue)
        {
            textShippedDate.Text = donhang.Ngayxulydonhang.ToShortDateString();
        }
        //--------Hiển thị giá trị Trackingnumber trong textbox---------
        textTrackingNumber.Text = donhang.Trackingnumber;
        //-------Lấy dữ liệu tình trạng đơn hàng trong dropdowlist-------
        dropdownlistOrderStatus.SelectedIndex =
        dropdownlistOrderStatus.Items.IndexOf(dropdownlistOrderStatus.Items.FindByValue(donhang.Idtinhtrangdonhang.ToString()));

     
      
    }
    // Hiển thị tình trạng đơn hàng trong dropdownlist-------
  
    private void HienThiTinhTrangDonHang()
    {
        XuLyLayTinhTrangDonHang xulylaytinhtrangdonhang = new XuLyLayTinhTrangDonHang();
        try
        {
            xulylaytinhtrangdonhang.Thucthi();
        }
        catch
        {
            Response.Redirect("../Trangloi.aspx");
        }
        dropdownlistOrderStatus.DataTextField = "TenTinhTrangDonHang";
        dropdownlistOrderStatus.DataValueField = "IDTinhTrangDonHang";
        dropdownlistOrderStatus.DataSource = xulylaytinhtrangdonhang.Ketqua;
        dropdownlistOrderStatus.DataBind();
    }
    //---------Xự kiện nút trở về--------------------
    protected void btnTroVe_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ThongKeDonHang.aspx");
    }
    // ---------sự kiện kích image button--------------

    protected void imagebuttonDatePicker_Click(object sender, ImageClickEventArgs e)
    {
        if (calendarDatePicker.Visible)
        {
            calendarDatePicker.Visible = false;
        }
        else
        {
            calendarDatePicker.Visible = true;
        }
    }
    //----------Sự kiện chọn giá trị trên điều khiển Calenda------
    protected void calendarDatePicker_SelectionChanged(object sender, EventArgs e)
    {
        textShippedDate.Text = calendarDatePicker.SelectedDate.ToShortDateString();
        calendarDatePicker.Visible = false;
    }
    // --Xử lý nút cập nhật để cập nhật thay đổi đơn hàng sau khi xử lý-------

    protected void btnCapNhat_Click(object sender, ImageClickEventArgs e)
    {
        DonHang donhang = new DonHang();
        XuLyCapNhatDonHang xulycapnhatdonhang = new XuLyCapNhatDonHang();
        donhang.Iddonhang = int.Parse(Request.QueryString["Iddonhang"]);
        donhang.Idtinhtrangdonhang =
        int.Parse(dropdownlistOrderStatus.SelectedItem.Value);
        donhang.Ngayxulydonhang = Convert.ToDateTime(textShippedDate.Text);
        donhang.Trackingnumber = textTrackingNumber.Text;
        xulycapnhatdonhang.Donhang = donhang;
        xulycapnhatdonhang.Thucthi();
        try
        {
            
        }
        catch
        {
            Response.Redirect("../Trangloi.aspx");
        }
        Response.Redirect("ThongKeDonHang.aspx");
    }
    //protected void tongtiendonhang(object sender, GridViewRowEventArgs e)
    //{

    //    if (e.Row.RowType == DataControlRowType.DataRow)
    //    {
    //        _tongtien += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "GiaSanPham"));
    //    }
    //    lblTotal.Text = string.Format(_tongtien.ToString()) + " VND";

    //}
}
