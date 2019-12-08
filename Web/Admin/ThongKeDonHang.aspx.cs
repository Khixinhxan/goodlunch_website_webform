using System;
using System.Web.UI;
using System.IO;
using MOONLY.BusinessLogic;

public partial class Admin_ThongKeDonHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HienTatCaDonHang();
        }
    }
    private void HienTatCaDonHang()
    {
        XuLyLayTatCaDonHang laytatcadonhang = new XuLyLayTatCaDonHang();
        try
        {
            laytatcadonhang.Thucthi();
        }
        catch
        {
            Response.Redirect("../Trangloi.aspx");
        }
        gridTatCaDonHang.DataSource = laytatcadonhang.Ketqua;
        gridTatCaDonHang.DataBind();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Bảo đảm control GridView đã Rendered trong tag runat=server */
    }

    protected void btnExportExcel_Click_Click(object sender, EventArgs e)
    {
        Response.ClearContent();

        Response.Buffer = true;

        Response.AddHeader("content-disposition", string.Format("attachment; filename={0}", "ThongKeDonHang.xls"));
    
        Response.ContentType = "application/ms-excel";

        //Encoding UTF-8
        Response.ContentEncoding = System.Text.Encoding.Unicode;
        Response.BinaryWrite(System.Text.Encoding.Unicode.GetPreamble());

        StringWriter stringWriter = new StringWriter();

        HtmlTextWriter textWriter = new HtmlTextWriter(stringWriter);

        gridTatCaDonHang.AllowPaging = false;

        //Change the Header Row back to white color
        gridTatCaDonHang.HeaderRow.Style.Add("background-color", "#FFFFFF");

        //Applying stlye to gridview header cells
        for (int i = 0; i < gridTatCaDonHang.HeaderRow.Cells.Count; i++)
        {
            gridTatCaDonHang.HeaderRow.Cells[i].Style.Add("background-color", "#006699");
        }

        gridTatCaDonHang.RenderControl(textWriter);
        Response.Write(stringWriter.ToString());
        Response.End();
    }
}
