using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_DangKiNguoiDung_Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDangKy_Click(object sender, ImageClickEventArgs e)
    {
        if (IsValid)
        {
            try
            {
                WebMsgBox.Show("Thành Công");
                
            }
            catch
            {
                Response.Redirect("TrangLoi.aspx");
            }

            Response.Redirect("DanhSachThongTinNguoiDung.aspx");
        }
    }
}