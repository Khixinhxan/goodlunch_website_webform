using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using MOONLY.BusinessLogic;


public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlHead headTag = (HtmlHead)this.Header;
        headTag.Title = "Trang Chủ";
       
        HtmlMeta PagemetaTag = new HtmlMeta();
        PagemetaTag.Name = "Description";
        PagemetaTag.Content = "Trang Chủ, Good Lunch";

   

        if (!IsPostBack)
        {

           
            HienThiSanPham();
        }
        this.Form.DefaultButton = ImageButtonTim.UniqueID; // btnTim là ID của nút lệnh tìm kiếm
        this.textSearch.Focus(); // textSearch là ID của TextBox dùng để nhập thông tin cần tìm
    }

    private void HienThiSanPham()
    {
        XuLyLaySanPham xulylaysanpham = new XuLyLaySanPham();
        try
        {
            xulylaysanpham.Thucthi();
        }
        catch
        {
            Response.Redirect("Trangloi.aspx");
        }
        dtlSanPham.DataSource = xulylaysanpham.Ketqua; // dtlSanPham là ID của DataList
        dtlSanPham.DataBind();

        //Phân trang sản phẩm
        DataView dataview = (DataView)xulylaysanpham.Ketqua.Select(DataSourceSelectArguments.Empty);
        CollectionPagerPhanTrang.PageSize = 12; 
        ////số sản phẩm hiển thị trên một trang
        CollectionPagerPhanTrang.DataSource = dataview;
        //dtlSanPham là tên datalist
        CollectionPagerPhanTrang.BindToControl = dtlSanPham;
        dtlSanPham.DataSource = CollectionPagerPhanTrang.DataSourcePaged;

    }
    private void Timsanpham(string tieuchuantim)
    {
        XuLyLayTimSanPham xulytim = new XuLyLayTimSanPham();
        xulytim.Tieuchuantim = tieuchuantim;
        try
        {
            xulytim.thucthi();
        }
        catch
        {
            Response.Redirect("Trangloi.aspx");
        }
        dtlSanPham.DataSource = xulytim.Ketqua;// dtlSanPham là ID của Datalist
        dtlSanPham.DataBind();
        if (dtlSanPham.Items.Count != 0)
            lblketqua.Text = "Các sản phẩm bạn cần tìm:";
        //lblketqua là ID của Label chứa dòng thông tin để thông báo kết quả tìm kiếm
        else
        {
            lblketqua.Text = "Không tìm thấy sản phẩm";
        }
    }
    protected void ImageButtonTim_Click(object sender, ImageClickEventArgs e)
    {
        Timsanpham(textSearch.Text);
        // textSearch là ID TextBox dùng để nhập nội dung cần tìm
        //commandSearch là ID của nút lệnh Tìm kiếm
    }

    protected void textSearch_TextChanged(object sender, EventArgs e)
    {

    }
}
