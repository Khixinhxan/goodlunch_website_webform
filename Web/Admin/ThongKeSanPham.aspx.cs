using System;
using System.Web.UI;
using System.IO;

public partial class Admin_ThongKeSanPham : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Bảo đảm control GridView đã Rendered trong tag runat=server */
    }

    protected void btnExportExcel_Click_Click(object sender, EventArgs e)
    {
        Response.ClearContent();

        Response.Buffer = true;

        Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "ThongKeSanPham.xls"));

        Response.ContentType = "application/ms-excel";

        //Encoding UTF-8
        Response.ContentEncoding = System.Text.Encoding.Unicode;
        Response.BinaryWrite(System.Text.Encoding.Unicode.GetPreamble());

        StringWriter stringWriter = new StringWriter();

        HtmlTextWriter textWriter = new HtmlTextWriter(stringWriter);

        GridView1.AllowPaging = false;

        //Change the Header Row back to white color
        GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF");

        //Applying stlye to gridview header cells
        for (int i = 0; i < GridView1.HeaderRow.Cells.Count; i++)
        {
            GridView1.HeaderRow.Cells[i].Style.Add("background-color", "#006699");
        }

        GridView1.RenderControl(textWriter);
        Response.Write(stringWriter.ToString());
        Response.End();
    
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
    }
    // --Xử lý nút cập nhật để cập nhật thay đổi đơn hàng sau khi xử lý-------
}