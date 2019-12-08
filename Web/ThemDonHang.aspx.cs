using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using MOONLY.BusinessLogic;
using MOONLY.Operational;
using System.Net.Mail;
using MOONLY.Common;
using System.Net;




public partial class ThemDonHang : BasePage
{
    private MOONLY.Common.DonHang _donhang = new MOONLY.Common.DonHang();
    private decimal _tongtien = 0; // để tính tổng cột thành tiền
    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlHead headTag = (HtmlHead)this.Header;
        headTag.Title = "Thêm đơn hàng";
        HtmlMeta PagemetaTag = new HtmlMeta();
        PagemetaTag.Name = "Description";
        PagemetaTag.Content = "Thêm đơn hàng";
        headTag.Controls.Add(PagemetaTag);
        PagemetaTag = new HtmlMeta();
        PagemetaTag.Name = "Keywords";
        PagemetaTag.Content = "Sản phẩm,Sanpham,buatrua,nhanvien,nhân,goodlunch";

        if (!IsPostBack)
        {
            
            Label lblWelcome = (Label)Master.FindControl("lblChao");
            lblWelcome.Text = "Xin chào, " + base.NguoiDungHienTai.Hoten;
            idnguoidung.Text =  NguoiDungHienTai.Idnguoidung.ToString();
            HienThiGioHang();

        }
    }
    //-----------------Hiển thị nội dung giỏ hàng giống trang GioHang.aspx
    private void HienThiGioHang()
    {
        MOONLY.Common.GioHang giohang = new MOONLY.Common.GioHang();
        giohang.Cartguid = TaoCartGUID.LayCartGUID();
        XuLyLayGioHang xulylaygiohang = new XuLyLayGioHang();
        xulylaygiohang.Giohang = giohang;
        try
        {
            xulylaygiohang.Thucthi();
            gridgiohang.DataSource = xulylaygiohang.Ketqua;
            gridgiohang.DataBind();
           


        }
        catch
        {
            Response.Redirect("Trangloi.aspx");
        }
    }
    //-------------------Tính tổng cộng của cột thành tiền trong Gridview
    protected void gridgiohang_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            _tongtien += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "ThanhTien"));
        }
        lblTotal.Text = _tongtien.ToString() + " VND";
      
    }
    //---------Tạo đơn hàng, dựa số liệu trên gridview giỏ hàng-------------------
    private void GuiDonHang()
    {
        XuLyThemDonHang themdonhang = new XuLyThemDonHang();
        themdonhang.Donhang = _donhang;
        NguoiDung nguoidung = new NguoiDung();

        //GioHang giohang = new GioHang();
        //giohang.Cartguid = TaoCartGUID.LayCartGUID();
        //XuLyLayGioHang xulylaygiohang = new XuLyLayGioHang();
        //xulylaygiohang.Giohang = giohang;
        try
        {
            themdonhang.Thucthi();
            GuiGmail();
            WebMsgBox.Show("Thành Công");


        }
        catch
        {
            Response.Redirect("Trangloi.aspx");
        }

        Response.Redirect("GioiThieuSanPham.aspx");
    }
   
    protected void GuiGmail()
    {
        

        emailnguoidung.Text = System.Web.HttpUtility.HtmlDecode((string)GridView1.Rows[0].Cells[0].Text.ToString());

        try
        {
            string thoigian= DateTime.Now.ToString("ss:mm:hh dd/MM/yyyy");

            MailAddress fromAddress = new MailAddress("goodlunchkitchen@gmail.com", "From Name");
            MailAddress toAddress = new MailAddress(emailnguoidung.Text, "To Name");
            string fromPassword = "goodlunch123";
            string subject = "Thông báo từ GoodLunch";
            string startbody = thoigian + "\n";
            string body = "Đơn hàng của khách đã gửi về bộ phận bếp ăn xử lý \n" + "Tổng tiền đơn hàng " +lblTotal.Text +"\n" ;
            string endbody = "Cảm ơn quí khách đã tin tưởng và ủng hộ dịch vụ của GoodLunch";
            

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential(fromAddress.Address, fromPassword);

            MailMessage message = new MailMessage(fromAddress, toAddress);
           
            message.Subject = subject;
            message.Body =startbody + body + endbody;
            smtp.Send(message);
         
        }
        catch
        {
            Response.Redirect("Trangloi.aspx");
        }
       
    }
    //---------------Sự kiện cho nút tiếp tục mua hàng----------------------------------
    protected void ImageButtonTieptucmuahang_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("GioiThieuSanPham.aspx");
    }
    //---------------Sự kiện cho nút tạo và gửi đơn hàng-----------------

    protected void ImageButtonTaovaguidonhang_Click(object sender, ImageClickEventArgs e)
    {
       
        
        MOONLY.Common.DonHang donhang = new MOONLY.Common.DonHang();
        MOONLY.Common.SanPham[] prods = new MOONLY.Common.SanPham[gridgiohang.Rows.Count];
        foreach (GridViewRow grow in gridgiohang.Rows)
        {
            if (grow.RowType == DataControlRowType.DataRow)
            {
                MOONLY.Common.SanPham Spham = new MOONLY.Common.SanPham();
                DataKey data = gridgiohang.DataKeys[grow.DataItemIndex];
                Spham.Idsanpham = int.Parse(data.Values["IdSanPham"].ToString());
                Label lblTenSanPham = (Label)grow.FindControl("lblTenSanPham");
                Spham.Ten = lblTenSanPham.Text;
                Label lblSoLuong = (Label)grow.FindControl("lblSoLuong");
                Spham.Soluong = int.Parse(lblSoLuong.Text);
                Label lblDonGia = (Label)grow.FindControl("lblDonGia");
                Spham.Giasanpham = Convert.ToInt32(lblDonGia.Text.Replace("VND", ""));
                prods.SetValue(Spham, grow.DataItemIndex);
            }
        }
        _donhang.Chitietdonhang.Sanpham = prods;
        _donhang.Idnguoidung = NguoiDungHienTai.Idnguoidung;
        /* them tong */
        _donhang.Tong = Convert.ToInt32(lblTotal.Text.Replace("VND", ""));
        //Giả lập tạo TransactionID
        _donhang.Idgiaodich = Guid.NewGuid().ToString();
        GuiDonHang();
       
      
        WebMsgBox.Show("Hoàn thành");
    }



    
}
