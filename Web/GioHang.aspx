<%@ Page Language="C#" MasterPageFile="~/mainphu.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="GioHang" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label><br />
    <asp:GridView ID="gridgiohang" runat="server" AutoGenerateColumns="False" DataKeyNames="IDgiohang" OnRowDataBound="gridgiohang_RowDataBound" Width="530px" EnableModelValidation="True">

        <Columns>
            <asp:TemplateField HeaderText="Xóa">
                <ItemTemplate>
                    <asp:CheckBox ID="checkboxDelete" runat="server" />
                </ItemTemplate>
                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" ForeColor="Maroon" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle BackColor="White" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sản Phẩm">
                <ItemTemplate>
                    <%# Eval("TenSanPham") %>
                </ItemTemplate>
                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" ForeColor="Maroon" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Số lượng">
                <ItemTemplate>
                    <asp:TextBox ID="textQuantity" runat="server" Text='<%# Eval("SoLuong") %>' Width="50px" ></asp:TextBox>
                </ItemTemplate>
                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" ForeColor="Maroon" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Đơn Giá">
                <ItemTemplate>
                    <%# Eval("GiaSanPham")%>
                </ItemTemplate>
                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" ForeColor="Maroon" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Right" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Thành Tiền">
                <ItemTemplate>
                    <%# Eval("ThanhTien","{0:###,###,###} VND")%>
                </ItemTemplate>


                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" ForeColor="Maroon" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Right" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Thứ">
                <ItemTemplate>
                    <%# Eval("TenDanhMucSanPham")%>
                </ItemTemplate>
                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" ForeColor="Maroon" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Right" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
                </asp:TemplateField>

            <asp:TemplateField HeaderText="Ngày">
                <ItemTemplate>
                    <%# Eval("NgaySanPham")%>
                </ItemTemplate>
                <HeaderStyle BackColor="#E0E0E0" BorderColor="#404040" ForeColor="Maroon" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Right" VerticalAlign="Middle" BorderColor="#404040" BorderStyle="Solid" BorderWidth="1px" />
                </asp:TemplateField>

            

        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Tổng tiền:" Font-Bold="True" ForeColor="#330000"></asp:Label>
    <asp:Label ID="lblTotal" runat="server" ForeColor="#330000"></asp:Label><br />
    <br />

       <asp:Label ID="lblmsg" runat="server" Font-Bold="True" 
	ForeColor="Red" Text=""></asp:Label>
        

   <%-- -----------------------------------------------------------%>
    <div>
     <asp:Label ID="LabelNhacNho" runat="server" Text="Vui lòng nhập đúng Captcha để thanh toán" ForeColor="Red" Font-Size="15px"></asp:Label>
         <br />
    </div>
    <table style="width: 100%">
        <tr>
            <td style="width: 510px; padding-left:140px"><asp:TextBox ID="txtimgcode" runat="server" BackColor="#00ffcc" Font-Size="13px"></asp:TextBox>
                </td>
           <td style="padding-right:250px"><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Icon/captcha.jpg" Width="20px"  Height="20px" OnClick="ImageButton1_Click"/></td>
        </tr>
    </table>
   
    
 
    <br />
    <div style="margin-left:15px; margin-right:15px;"><asp:Image ID="Image1" runat="server" ImageUrl="CImage.aspx"/> </div>
    <br />
      <asp:Label ID="Label2" runat="server" Font-Bold="True" 
	ForeColor="Red" Text=""></asp:Label>
    <br />
    
   
   
    <%-- -----------------------------------------------------------%>
    <br />
    <asp:ImageButton ID="ImageButtontieptucmuahang" runat="server" ImageUrl="~/images/TTDM.jpg" OnClick="ImageButtontieptucmuahang_Click" />
    <asp:ImageButton ID="ImageButtoncapnhatthaydoi" runat="server" ImageUrl="~/images/button_capnhat.jpg" OnClick="ImageButtoncapnhatthaydoi_Click" 
        OnClientClick = "return confirm('Xác nhận cập nhật giỏ hàng');"/>
    <asp:ImageButton ID="ImageButtonXacnhanthanhtoan" runat="server" ImageUrl="~/images/button_thanhtoan.jpg" OnClick="ImageButtonXacnhanthanhtoan_Click" />
</asp:Content>

