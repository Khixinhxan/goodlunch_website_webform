using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using MOONLY.BusinessLogic;

public partial class Admin_SanPham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        HtmlHead headTag = (HtmlHead)this.Header;
        headTag.Title = "Sản phẩm Admin";
        HtmlMeta PagemetaTag = new HtmlMeta();
        PagemetaTag.Name = "Description";
        PagemetaTag.Content = "Sản phẩm Admin";
        if (!IsPostBack)
        {
            HienSanPham();
        }
    }
    private void HienSanPham()
    {
        XuLyLaySanPham xulysanpham = new XuLyLaySanPham();
        try
        {
            xulysanpham.Thucthi();
        }
        catch
        {
            Response.Redirect("../Trangloi.aspx");
        }
        dtlSanpham.DataSource = xulysanpham.Ketqua;
        dtlSanpham.DataBind();
    }
    protected void bntThemSanPham_Click(object sender, EventArgs e)
    {
        Response.Redirect("ThemSanPham.aspx");
    }
}
