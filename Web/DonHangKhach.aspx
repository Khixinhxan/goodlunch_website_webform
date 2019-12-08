<%@ Page Language="C#" MasterPageFile="~/mainphu.master" AutoEventWireup="true" CodeFile="DonHangKhach.aspx.cs" Inherits="DonHangKhach" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 530px">
        <strong><span style="font-size: 15pt; color: #330000"><span style="color: #cc0000">CÁC ĐƠN HÀNG CỦA BẠN</span><br />
        </span></strong>
        <asp:GridView ID="gridviewOrders" runat="server" AutoGenerateColumns="False" Width="530px">
            <Columns>
                <asp:TemplateField HeaderText="ID giao dịch">
                    <ItemTemplate>
                        <a href="ChiTietDonHangKhach.aspx?IDGiaoDich=<%# Eval("IDGiaoDich")%>&IDDonHang=<%# Eval("IDDonHang") %>">
                            <%# Eval("IDGiaoDich") %>
                        </a>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px"
                        ForeColor="#400000" />
                    <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ngày tạo đơn hàng">
                    <ItemTemplate>
                        <%# Eval("NgayTaoDonHang", "{0:hh:mm:ss tt dd/MM/yyyy}") %>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px"
                        ForeColor="#400000" />
                    <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tình trạng đơn hàng">
                    <ItemTemplate>
                        <%# Eval("TenTinhTrangDonHang") %>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px"
                        ForeColor="#400000" />
                    <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ngày xử lý đơn hàng">
                    <ItemTemplate>
                        <%# Eval("NgayXuLyDonHang", "{0:hh:mm:ss tt dd/MM/yyyy}")%>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px"
                        ForeColor="#400000" />
                    <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tracking Number">
                    <ItemTemplate>
                        <%# Eval( "TrackingNumber" )%>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px"
                        ForeColor="#400000" />
                    <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <br />
    <asp:ImageButton ID="ImageButtontrove" runat="server" ImageUrl="~/images/button_back.jpg" OnClick="ImageButtontrove_Click" />
</asp:Content>

