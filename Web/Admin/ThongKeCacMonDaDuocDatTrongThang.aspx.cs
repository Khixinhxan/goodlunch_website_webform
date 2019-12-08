using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ThongKeSanPhamDaBanTrongThang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
            tieude.InnerHtml = "Biểu đồ biểu diễn số lượng các món đã đặt trong tháng" + dropdown.SelectedValue;
    }
}