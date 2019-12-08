<%@ Page Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="ThongKeDonHang.aspx.cs" Inherits="Admin_ThongKeDonHang" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:GridView ID="gridTatCaDonHang" runat="server" AutoGenerateColumns="False" Width="820px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
       <Columns>
<asp:TemplateField HeaderText="ID Giao dịch">
<ItemTemplate>
<a href="ChiTietDonHang.aspx?IDgiaodich=<%# Eval("IDgiaodich")
%>&IDdonhang=<%# Eval("IDdonhang") %>&Email=<%# Eval("Email") %>"><%#
Eval("IDgiaodich") %></a>
</ItemTemplate>
    <HeaderStyle BackColor="#E0E0E0" ForeColor="Maroon" />
    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Họ v&#224; t&#234;n">
<ItemTemplate>
<%# Eval("Hoten") %> <br />
</ItemTemplate>
    <HeaderStyle BackColor="#E0E0E0" ForeColor="Maroon" />
    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
</asp:TemplateField>
<asp:TemplateField HeaderText="ID Người Dùng">
<ItemTemplate>
<%# Eval("IDNguoiDung") %> <br />
</ItemTemplate>
    <HeaderStyle BackColor="#E0E0E0" ForeColor="Maroon" />
    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Email">
<ItemTemplate>
<%# Eval("Email") %>
</ItemTemplate>
    <HeaderStyle BackColor="#E0E0E0" ForeColor="Maroon" />
    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Số điện thoại">
<ItemTemplate>
<%# Eval("Sodienthoai") %>
</ItemTemplate>
    <HeaderStyle BackColor="#E0E0E0" ForeColor="Maroon" />
    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Ngày đặt thực đơn">
<ItemTemplate>
<%# Eval("Ngaytaodonhang","{0:hh:mm:ss tt dd/MM/yyyy}") %>
</ItemTemplate>
    <HeaderStyle BackColor="#E0E0E0" ForeColor="Maroon" />
    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
</asp:TemplateField>
<asp:TemplateField HeaderText="T&#236;nh trạng thực đơn">
<ItemTemplate>
<%# Eval("TenTinhtrangdonhang") %>
</ItemTemplate>
    <HeaderStyle BackColor="#E0E0E0" ForeColor="Maroon" />
    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
</asp:TemplateField>
           <asp:TemplateField HeaderText="Tổng Tiền">
<ItemTemplate>
<%# Eval("TongTien","{0:##.###.### VND}") %>
</ItemTemplate>
    <HeaderStyle BackColor="#E0E0E0" ForeColor="Maroon" />
    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
</asp:TemplateField>
</Columns>
       <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
       <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
       <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
       <RowStyle BackColor="White" ForeColor="#003399" />
       <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
       <SortedAscendingCellStyle BackColor="#EDF6F6" />
       <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
       <SortedDescendingCellStyle BackColor="#D6DFDF" />
       <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <div>
        <asp:Button ID="btnExportExcel_Click" runat="server" OnClick="btnExportExcel_Click_Click" Text="Excel" />
    </div>
</asp:Content>

