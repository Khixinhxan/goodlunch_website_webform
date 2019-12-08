using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using MOONLY.Common;
using MOONLY.BusinessLogic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;

public partial class DangNhap : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlHead headTag = (HtmlHead)this.Header;
        headTag.Title = "Đăng nhập người dùng";
        HtmlMeta PagemetaTag = new HtmlMeta();
        PagemetaTag.Name = "Description";
        PagemetaTag.Content = "Đăng nhập người dùng";
        textUsername.Focus();
        labelMessage.Text = "";
        
    }


    protected void btnDangNhap_Click(object sender, ImageClickEventArgs e)
    {
        if (IsValid)
        {
            NguoiDung nguoidung = new NguoiDung();
            XuLyDangNhapNguoiDung xulydangnhap = new XuLyDangNhapNguoiDung();
            nguoidung.Tendangnhap = textUsername.Text;
            nguoidung.Matkhau = textMatKhau.Text;
            xulydangnhap.Nguoidung = nguoidung;

           
            try
            {
                xulydangnhap.Thucthi();
                //WebMsgBox.Show("Đăng Nhập Thành công");
                //labelMessage.Text = "Đăng nhập thành công!";
            }
            catch
            {
                Response.Redirect("TrangLoi.aspx");
            }
            if (xulydangnhap.Dangnhaphople && CheckDN.Checked==true)
            {

                base.NguoiDungHienTai = xulydangnhap.Nguoidung;
                Label lblWelcome = (Label)Master.FindControl("lblchao");
                lblWelcome.Text = "Xin chào, " + base.NguoiDungHienTai.Hoten;
                if (Request.Cookies["ReturnURL"] != null)
                {
                    Response.Redirect(Request.Cookies["ReturnURL"].Value);
                }
                else
                {
                    Response.Redirect("DonHangKhach.aspx");
                }
            }
            else
            {
                labelMessage.Text = "Đăng nhập không thành công!";
            }
        }
    }
  
}
