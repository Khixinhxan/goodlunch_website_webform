<%@ Page Language="C#" MasterPageFile="~/mainphu.master" AutoEventWireup="true" CodeFile="ChiTietDonHangKhach.aspx.cs" Inherits="ChiTietDonHangKhach" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <span style="color: #cc0000"><strong style="font-size: 15pt"><span style="color: #cc0000">
        <br />
        CHI TIẾT ĐƠN HÀNG</span></strong></span><br />
    <span style="color: #cc0000">ID Giao dịch:</span>
    <asp:Label ID="lblIDGiaoDich" runat="server" Font-Bold="True" ForeColor="#330000"></asp:Label><br />
    <asp:GridView ID="gridChiTietDonHang" runat="server" AutoGenerateColumns="False"
        Width="530px" OnRowDataBound="gridChiTietDonHang_RowDataBound" EnableModelValidation="True">
        <Columns>
            <asp:TemplateField HeaderText="Số lượng">
                <ItemTemplate>
                    <%# Eval("SoLuongSanPham") %>
                </ItemTemplate>
                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px"
                    ForeColor="#400000" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tên Sản Phẩm">
                <ItemTemplate>
                    <%# Eval("TenSanPham") %>
                </ItemTemplate>
                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px"
                    ForeColor="#400000" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Giá Sản phẩm">
                <ItemTemplate>
                    <%# Eval("GiaSanPham" , "{0:###,###,###} VNĐ" )%>
                </ItemTemplate>
                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px"
                    ForeColor="#400000" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Thứ">
                <ItemTemplate>
                    <%# Eval("TenDanhMucSanPham")%>
                </ItemTemplate>
                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px"
                    ForeColor="#400000" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Ngày">
                <ItemTemplate>
                    <%# Eval("NgaySanPham","{0:hh:mm:ss tt dd/MM/yyyy}")%>
                </ItemTemplate>
                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px"
                    ForeColor="#400000" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
            
        </Columns>
    </asp:GridView>
    <span style="color: #330000"><strong>Tổng cộng:</strong></span>
    <asp:Label ID="lblTongTien" runat="server" Font-Bold="True" ForeColor="#330000"></asp:Label><br />
    <br />
    <asp:ImageButton ID="ImageButtonTroVe" runat="server" ImageUrl="~/images/button_back.jpg" OnClick="ImageButtonTroVe_Click" />
</asp:Content>

