<%@ Page Language="C#" MasterPageFile="~/mainphu.master" AutoEventWireup="true" CodeFile="ChiTietSanPham.aspx.cs" Inherits="ChiTietSanPham" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="dtlChiTietSanPham" runat="server">
        <ItemTemplate>
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td rowspan="4" style="width: 480px">
                        <asp:Image ID="Image1" runat="server" Height="225px" ImageUrl='<%# Eval("IdHinhSanPham","HienThiHinhSanPham.ashx?IdHinhSanPham={0}") %>' Width="350px" /></td>
                    <td style="width: 350px">
                        <asp:Label ID="lblTenSanpham" runat="server" Text='<%# Eval("TenSanPham") %>' Font-Bold="True" ForeColor="#330000"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 350px; height: 11px; font-weight: bold; color: #FF0000;">
                        <span style="color: #660000">Giá:</span>
                        <asp:Label ID="lblGiaSanpham" runat="server" Text='<%# Eval("GiaSanPham", "{0:0,00,000} VND") %>' ForeColor="#990000"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 350px">
                        <span style="color: #660000"></span>
                        <asp:Label ID="lblTenDanhMucSanpham" runat="server" Text='<%# Eval("TenDanhMucSanPham") %>' ForeColor="#990000"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 350px; height: 71px; font-weight: bold; text-align: left;">Thời gian
                        <span style="color: #660000"></span>
                        <asp:Label ID="lblNgaySanpham" runat="server" Text='<%# Eval("NgaySanPham","{0:hh:mm:ss tt dd/MM/yyyy}" )%>'  ForeColor="#990000"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 350px; height: 44px;">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "GioiThieuSanPham.aspx" %>' ImageUrl="~/images/button_back.jpg" Width="80px">Trở về</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink2" runat="server" Width="80px" ImageUrl="~/images/DM1.jpg" NavigateUrl='<%# Eval("IdSanPham","ThemGioHang.aspx?IDSanpham={0}") %>'>Thêm vào giỏ hàng</asp:HyperLink></td>
                </tr>
                <tr>
                    <td align="center" colspan="2"><span style="color: #660000">THÔNG TIN CHI TIẾT</span></td>
                </tr>
                <tr>
                    <td colspan="2" rowspan="1" align="left">
                        <span style="color: #660000"></span>
                        <asp:Label ID="lblMoTaChiTiet" runat="server" Text='<%# Eval("MoTaSanPham") %>'></asp:Label></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

