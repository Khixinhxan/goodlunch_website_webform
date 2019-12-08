using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ThongKeTongTienKhachHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = DropDownList1.SelectedValue;
       
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Bảo đảm control GridView đã Rendered trong tag runat=server */
    }

    protected void btnExportExcel_Click_Click(object sender, EventArgs e)
    {
        Response.ClearContent();

        Response.Buffer = true;

        Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "ThongKeTongTienKhachHang.xls"));

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

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("DanhSachTongTienKhachHangTheoThang.aspx");
    
    }
}