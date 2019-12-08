using System;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using MOONLY.Common;
using MOONLY.BusinessLogic;

public partial class Admin_DangNhapAdmin1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlHead headTag = (HtmlHead)this.Header;
        headTag.Title = "Đăng nhập Admin";
        HtmlMeta PagemetaTag = new HtmlMeta();
        PagemetaTag.Name = "Description";
        PagemetaTag.Content = "Đăng nhập Admin";
        
        textUsername.Focus();
    }
    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            NguoiDung nguoidung = new NguoiDung();
            XuLyDangNhapAdmin xulydangnhapadmin = new XuLyDangNhapAdmin();
            nguoidung.Tendangnhap = textUsername.Text;
            nguoidung.Matkhau = textMatKhau.Text;
            xulydangnhapadmin.Nguoidung = nguoidung;
            try
            {
                xulydangnhapadmin.Thucthi();
                if (xulydangnhapadmin.IsAuthenticated)
                {
                    FormsAuthentication.RedirectFromLoginPage(textUsername.Text, false);
                }
                else
                {
                    labelMessage.Text = "Đăng nhập không thành công!";
                }
            }
            catch
            {
                Response.Redirect("../Trangloi.aspx");
            }
        }
    }

 
}
