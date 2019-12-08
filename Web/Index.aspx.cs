using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int thu = Convert.ToInt32(DateTime.Now.DayOfWeek)+1;
        Response.Redirect("SanPhamTheoDanhMuc.aspx?IdDanhMucSanPham="+thu);

    }
}