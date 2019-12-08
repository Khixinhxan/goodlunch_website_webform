<%@ Page Language="C#" MasterPageFile="~/mainchin.master" AutoEventWireup="true" CodeFile="SanPhamTheoDanhMuc.aspx.cs" Inherits="SanPhamTheoDanhMuc" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="dtlSanPhamDM" runat="server" RepeatColumns="3" Width="530px" CaptionAlign="Top" HorizontalAlign="Center">
        <ItemTemplate>
            <asp:Panel ID="Panel1" runat="server" BorderColor="#E0E0E0" BorderStyle="Solid" BorderWidth="1px"
                Width="170px" Height="250px">
                <table cellpadding="0" cellspacing="0" style="width: 170px">
                    <tr>
                        <td style="width: 175px; height: 125px; text-align: center;" align="center">
                            <asp:HyperLink runat="server" NavigateUrl='<%# Eval("IdSanPham","ChiTietSanPham.aspx?IdSanpham={0}") %>'> <asp:Image ID="Image1" runat="server" Height="125px" ImageUrl='<%# Eval("IdHinhSanPham","HienThiHinhSanPham.ashx?IdHinhSanPham={0}") %>' Width="172px" />
                                </asp:HyperLink></td> 
                    </tr>
                    <tr>
                        <td style="width: 175px; height: 22px;" align="center">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSanPham") %>' Font-Bold="True" ForeColor="#330000"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 175px" align="center">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaSanPham", "{0:##,###,###} VND") %>' ForeColor="#330000"></asp:Label></td>
                    </tr>
                     <tr>
                        <td style="width: 175px" align="center">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("TenDanhMucSanPham") %>' ForeColor="#330000"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 175px" align="center">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("NgaySanPham","{0:hh:mm:ss tt dd/MM/yyyy}") %>' ForeColor="#330000"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 175px; text-align: center;" align="center">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("IdSanPham","ChiTietSanPham.aspx?IdSanpham={0}") %>' ImageUrl="~/images/button_detail.jpg" Width="63px">Chi tiết sản phẩm</asp:HyperLink><asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/images/DM.jpg" Width="73px" NavigateUrl='<%# Eval("IdSanPham","ThemGioHang.aspx?IDSanpham={0}") %>'>Thêm vào giỏ hàng</asp:HyperLink></td>
                    </tr>
                </table>
            </asp:Panel>
        </ItemTemplate>

    </asp:DataList>

</asp:Content>

