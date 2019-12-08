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
using MOONLY.Common;

public partial class Admin_ThemSanPham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtTenSanPham.Focus(); // txtTenSanPham là ID của TextBox
            HienThiDanhMucSanPham();
        }
    }
    private void HienThiDanhMucSanPham()
    {
        XuLyLayDanhMucSanPham xulydanhmucsanpham = new
        XuLyLayDanhMucSanPham();
        try
        {
            xulydanhmucsanpham.Thucthi();
        }
        catch
        {
            Response.Redirect("../Trangloi.aspx");
        }
        dropDanhMucSanPham.DataTextField = "TenDanhMucSanPham";
        // dropDanhMucSanPham là ID của điều khiển DropDownList
        dropDanhMucSanPham.DataValueField = "IDDanhMucSanPham";
        dropDanhMucSanPham.DataSource = xulydanhmucsanpham.Ketqua;
        dropDanhMucSanPham.DataBind();
    }
    protected void btnCapNhat_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            XuLyThemSanPham themsanpham = new XuLyThemSanPham();
            SanPham Spham = new SanPham();
            DanhMucSanPham DanhMucSP = new DanhMucSanPham();

            textShippedDate.Text = calendarDatePicker.SelectedDate.ToShortDateString();

            
                Spham.Ngaysanpham = Convert.ToDateTime(textShippedDate.Text);
                Spham.Iddanhmucsanpham = int.Parse(dropDanhMucSanPham.SelectedItem.Value);
                Spham.Ten = txtTenSanPham.Text; 
                // txtTenSanPham là ID của TextBox
                Spham.Mota = CKEditorControlMoTa.Text;
                //txtTenSanPham là ID của TextBox
                Spham.Dulieuhinhsanpham = fileuploadHinhSanPham.FileBytes;
                // fileuploadHinhSanPham là ID của điều khiển FileUpLoad
                Spham.Giasanpham = Convert.ToDecimal(txtGia.Text); // txtGia là ID của TextBox
                themsanpham.Sanpham = Spham;
            
           
            try
            {
                themsanpham.Thucthi();
            }
            catch
            {
                Response.Redirect("../Trangloi.aspx");
            }
            Response.Redirect("SanPham.aspx");
        }
    }
    protected void BtnBoQua_Click(object sender, EventArgs e)
    {
        Response.Redirect("SanPham.aspx");
    }
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
        int ngay = Convert.ToInt32(Convert.ToDateTime(textShippedDate.Text).DayOfWeek);
        int thu = Convert.ToInt32(dropDanhMucSanPham.SelectedItem.Value);
        if (ngay != thu)
        {
            textShippedDate.Text = "";
            txtTenSanPham.Text = "";
            txtGia.Text = "";
            WebMsgBox.Show("Ngày không phù hợp với thứ");
        }
    }
}
