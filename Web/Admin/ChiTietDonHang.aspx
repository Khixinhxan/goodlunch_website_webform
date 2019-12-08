<%@ Page Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="ChiTietDonHang.aspx.cs" Inherits="Admin_ChiTietDonHang" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 820px">
        <tr>
            <td style="width: 300px" align="center">
                ID Giao dịch</td>
            <td style="width: 700px">
                <asp:Label ID="labelTransactionID" runat="server" ForeColor="#3300FF"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 300px" align="center">
                Các sản phẩm đơn hàng</td>
            <td style="width: 700px">
                <asp:GridView ID="gridviewOrderDetailsProducts" runat="server" AutoGenerateColumns="False" Width="481px">
                    <Columns>
                        <asp:TemplateField HeaderText="Số lượng">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("SoLuongSanPham") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#E0E0E0" ForeColor="Maroon" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="T&#234;n sản phẩm">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("TenSanPham") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#E0E0E0" ForeColor="Maroon" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Đơn gi&#225;">
                            <ItemTemplate>
                                <asp:Label ID="GiaSanPham" runat="server" Text='<%# Eval("GiaSanPham","{0:###,###,###} VNĐ") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#E0E0E0" ForeColor="Maroon" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Thứ">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("TenDanhMucSanPham") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#E0E0E0" ForeColor="Maroon" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Ngày">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("NgaySanPham","{0:hh:mm:ss tt dd/MM/yyyy}") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#E0E0E0" ForeColor="Maroon" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
 

        <tr>
            <td style="width: 300px" align="center">
                Ngày xử lý đơn hàng</td>
            <td style="width: 700px">
                <asp:TextBox ID="textShippedDate" runat="server"></asp:TextBox>
                <asp:ImageButton ID="imagebuttonDatePicker" runat="server" ImageUrl="~/images/calendar.jpg" OnClick="imagebuttonDatePicker_Click" Height="25px" ImageAlign="Top" Width="25px" /><br />
                <asp:Calendar ID="calendarDatePicker" runat="server" OnSelectionChanged="calendarDatePicker_SelectionChanged" Width="317px" BorderColor="Black"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td style="width: 300px" align="center">
                Tracking number</td>
            <td style="width: 700px">
                <asp:TextBox ID="textTrackingNumber" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 300px" align="center">
                Tình trạng đơn hàng</td>
            <td style="width: 700px">
                <asp:DropDownList ID="dropdownlistOrderStatus" runat="server" Width="139px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 300px">
            </td>
            <td style="width: 700px">
                &nbsp;<asp:ImageButton ID="btnTroVe" runat="server" ImageUrl="~/images/button_back.jpg" OnClick="btnTroVe_Click" />
                <asp:ImageButton ID="btnCapNhat" runat="server" ImageUrl="~/images/button_capnhat.jpg" OnClick="btnCapNhat_Click" /></td>
        </tr>
    </table>
</asp:Content>

