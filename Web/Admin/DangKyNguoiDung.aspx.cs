using System;
using MOONLY.Common;
using MOONLY.BusinessLogic;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using MOONLY.DataAccess;

public partial class Admin_DangKyNguoiDung : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlHead headTag = (HtmlHead)this.Header;
        headTag.Title = "Đăng ký người dùng";
        HtmlMeta PagemetaTag = new HtmlMeta();
        PagemetaTag.Name = "Description";
        PagemetaTag.Content = "Đăng ký người dùng";
        textHoTen.Focus();
    }

    protected void btnDangKy_Click(object sender, ImageClickEventArgs e)
    {
       
        if (IsValid)
        {
            NguoiDung nguoidung = new NguoiDung();
            XuLyThemNguoiDung themnguoidung = new XuLyThemNguoiDung();
           

            nguoidung.Hoten = textHoTen.Text;
            nguoidung.Tendangnhap = textTenDangNhap.Text;
            nguoidung.Diachi = textQuanHuyen.Text;
            nguoidung.Matkhau = textMatKhau.Text;
            nguoidung.Email = textEmail.Text;
            nguoidung.Sodienthoai = textSoDienThoai.Text;

            themnguoidung.Nguoidung = nguoidung;
            WebMsgBox.Show("Thất bại");
            try
            {
                WebMsgBox.Show("Thành Công");
                themnguoidung.Thucthi();
            }
            catch
            {
                Response.Redirect("TrangLoi.aspx");
            }
           
            //Response.Redirect("DangKyNguoiDung.aspx");
        }
    }
}