<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="ThongKeTongTienKhachHang.aspx.cs" Inherits="Admin_ThongKeTongTienKhachHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <p style="text-align: center; font-size: 25px; color: #FFFFFF; background-color: #6A1819;">
    <strong>Tổng tiền của khách hàng trong tháng</strong></p>

       <table style="width: 100%">
           <tr>
               <td style="width: 176px">Tên Đăng Nhập Khách Hàng</td>
               <td><span>Tháng</span></td>
           </tr>
           <tr>
               <td style="width: 176px">
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               </td>
               <td><asp:DropDownList ID="DropDownList1" runat="server">
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
        
    </asp:DropDownList></td>
           </tr>
           <tr>
               <td colspan="2">  <asp:Button ID="Button1" runat="server" Text="Tìm" OnClick="Button1_Click" /></td>
           </tr>
           <tr>
               <td colspan="2">  
                   <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Danh sách tất cả khách hàng trong tháng" />
               </td>
           </tr>
       </table>

    
     <br />
    <br />

  <div>Tổng tiền của khách hàng trong tháng  <asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
   <br />
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" DataKeyNames="IdNguoiDung">
           <Columns>
               <asp:BoundField DataField="IdNguoiDung" HeaderText="ID Người Dùng" SortExpression="IdNguoiDung" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="HoTen" HeaderText="Họ Tên Khách Hàng" SortExpression="HoTen"  />
               <asp:BoundField DataField="TenDangNhap" HeaderText="Tên Đăng Nhập" SortExpression="TenDangNhap"  />
               <asp:BoundField DataField="TongTien" HeaderText="Tổng Tiền" DataFormatString="VND"  SortExpression="TongTien" />
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
     
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLCONN %>" SelectCommand="ThongKeTongTienKhachHang" SelectCommandType="StoredProcedure">
           <SelectParameters>
               <asp:ControlParameter ControlID="TextBox1" Name="TenDangNhap" PropertyName="Text" Type="String" />
               <asp:ControlParameter ControlID="DropDownList1" Name="Thang" PropertyName="SelectedValue" Type="Int32" />
           </SelectParameters>
       </asp:SqlDataSource>
    <br />


       <br />
    <p>
    <asp:Button ID="btnExportExcel_Click" runat="server" OnClick="btnExportExcel_Click_Click" Text="Excel" />
    </p>

</asp:Content>

