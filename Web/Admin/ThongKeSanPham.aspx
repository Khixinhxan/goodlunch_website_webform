<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="ThongKeSanPham.aspx.cs" Inherits="Admin_ThongKeSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center; font-size: 25px; color: #FFFFFF; background-color: #6A1819;">
    <strong>Thống kê các món ăn theo ngày đặt</strong></p>
<p>


</p>

     <asp:TextBox ID="textShippedDate" runat="server"></asp:TextBox>
                <asp:ImageButton ID="imagebuttonDatePicker" runat="server" ImageUrl="~/images/calendar.jpg" OnClick="imagebuttonDatePicker_Click" Height="25px" ImageAlign="Top" Width="25px" /><br />
                <asp:Calendar ID="calendarDatePicker" runat="server" OnSelectionChanged="calendarDatePicker_SelectionChanged" Width="317px" BorderColor="Black"></asp:Calendar>

       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="IdSanPham" HeaderText="IdSanPham" SortExpression="IdSanPham" />
                <asp:BoundField DataField="TenSanPham" HeaderText="TenSanPham" SortExpression="TenSanPham" />
                <asp:BoundField DataField="SoLuongSanPham" HeaderText="SoLuongSanPham" ReadOnly="True" SortExpression="SoLuongSanPham" />
                <asp:BoundField DataField="NgaySanPham" HeaderText="NgaySanPham" ReadOnly="True" SortExpression="NgaySanPham" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Test2ConnectionString %>" SelectCommand="SanPhamTheoNgay_Select" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="textShippedDate" DbType="Date" Name="NgayNhap" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    
<p>
    <asp:Button ID="btnExportExcel_Click" runat="server" OnClick="btnExportExcel_Click_Click" Text="Excel" />
    </p>
</asp:Content>

