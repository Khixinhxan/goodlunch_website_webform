<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="DanhSachThongTinNguoiDung.aspx.cs" Inherits="Admin_DanhSachThongTinNguoiDung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div>
         <div style="color:red;font-size:20px; text-align:center"><span >THÔNG TIN NGƯỜI DÙNG</span></div>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDNguoiDung" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="Both">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="IDNguoiDung" HeaderText="ID Người Dùng" InsertVisible="False" ReadOnly="True" SortExpression="IDNguoiDung" />
                <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" SortExpression="HoTen" />
                <asp:BoundField DataField="TenDangNhap" HeaderText="Tên Đăng Nhập" SortExpression="TenDangNhap" />
                <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" SortExpression="DiaChi" />
                <asp:BoundField DataField="SoDienThoai" HeaderText="Số Điện Thoại" SortExpression="SoDienThoai" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="MatKhau" HeaderText="Mật Khẩu" SortExpression="MatKhau" />
              
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLCONN %>" SelectCommand="NguoiDung_Select_All" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    </div>
</asp:Content>

