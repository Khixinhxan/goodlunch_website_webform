<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MenuDanhMuc.ascx.cs" Inherits="TaiNguyenDieuKhien_MenuDanhMuc" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="menuDM">
    <EmptyDataTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("IdDanhMucSanPham","../SanPhamTheoDanhMuc.aspx?IdDanhMucSanPham={0}") %>'
            Text='<%# Eval("TenDanhMuc") %>'></asp:HyperLink>
    </EmptyDataTemplate>
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("IdDanhMucSanPham","../SanPhamTheoDanhMuc.aspx?IdDanhMucSanPham={0}") %>'
                    Text='<%# ""+Eval("TenDanhMucSanPham") %>'></asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
