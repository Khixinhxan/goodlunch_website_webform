<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="DanhSachTongTienKhachHangTheoThang.aspx.cs" Inherits="Admin_DanhSachTongTienKhachHangTheoThang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<span>Tháng</span>
<asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>11</asp:ListItem>
        <asp:ListItem>12</asp:ListItem>
        
    </asp:DropDownList>
               <asp:Button ID="Button1" runat="server" Text="Xem" OnClick="Button1_Click" />
    <br />
      <br />
      <br />
     <div >Danh sách tổng tiền của tất cả khách hàng trong tháng  <asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
    <br />
       <div>

           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IdNguoiDung" DataSourceID="SqlDataSource1">
               <Columns>
                   <asp:BoundField DataField="IdNguoiDung" HeaderText="ID Người Dùng" InsertVisible="False" ReadOnly="True" SortExpression="IdNguoiDung" />
                   <asp:BoundField DataField="HoTen" HeaderText="Họ và Tên Khách Hàng" SortExpression="HoTen" />
                   <asp:BoundField DataField="TenDangNhap" HeaderText="Tên Đăng Nhập" SortExpression="TenDangNhap" />
                   <asp:BoundField DataField="TongTien" HeaderText="Tổng Tiền" ReadOnly="True" SortExpression="TongTien" />
               </Columns>
               <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
               <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
               <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
               <RowStyle BackColor="White" ForeColor="#330099" />
               <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
               <SortedAscendingCellStyle BackColor="#FEFCEB" />
               <SortedAscendingHeaderStyle BackColor="#AF0101" />
               <SortedDescendingCellStyle BackColor="#F6F0C0" />
               <SortedDescendingHeaderStyle BackColor="#7E0000" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLCONN %>" SelectCommand="DanhSachTongTienKhachHangTheoThang" SelectCommandType="StoredProcedure">
               <SelectParameters>
                   <asp:ControlParameter ControlID="DropDownList1" Name="Thang" PropertyName="SelectedValue" Type="Int32" />
               </SelectParameters>
           </asp:SqlDataSource>

       </div>
</asp:Content>

