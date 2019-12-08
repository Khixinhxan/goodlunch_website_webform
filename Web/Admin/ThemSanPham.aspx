<%@ Page Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="ThemSanPham.aspx.cs" Inherits="Admin_ThemSanPham" Title="Untitled Page" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 820px">
        <tr>
            <td style="width: 200px" align="center">
                Tên Sản Phẩm</td>
            <td style="width: 620px">
                <asp:TextBox ID="txtTenSanPham" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                    ErrorMessage="Tên sản phẩm không để trống" ControlToValidate="txtTenSanPham"></asp:RequiredFieldValidator></td>
        </tr>
         <tr>
            <td style="width: 200px" align="center">
                Giá Sản Phẩm</td>
            <td style="width: 620px">
                <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Giá sản phẩm không để trống" ControlToValidate="txtGia">Giá sản phẩm không để trống</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 200px; height: 19px" align="center">
                Danh Mục Sản Phẩm</td>
            <td style="width: 620px; height: 19px">
                <asp:DropDownList ID="dropDanhMucSanPham" runat="server" Width="155px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 200px; height: 19px" align="center">
                Ngày</td>
            <td style="width: 620px; height: 19px">
                <asp:TextBox ID="textShippedDate" runat="server"></asp:TextBox>
                <asp:ImageButton ID="imagebuttonDatePicker" runat="server" ImageUrl="~/images/calendar.jpg" OnClick="imagebuttonDatePicker_Click" Height="25px" ImageAlign="Top" Width="25px" /><br />
                <asp:Calendar ID="calendarDatePicker" runat="server" OnSelectionChanged="calendarDatePicker_SelectionChanged" Width="317px" BorderColor="Black"></asp:Calendar></td>
        </tr>
        <tr>
            <td style="width: 200px" align="center">
                Mô Tả Sản Phẩm</td>
            <td style="width: 620px">
                <CKEditor:CKEditorControl ID="CKEditorControlMoTa" runat="server"></CKEditor:CKEditorControl>
        </tr>
       
        <tr>
            <td style="width: 200px; height: 22px" align="center">
                Hình Sản Phẩm</td>
            <td style="width: 620px; height: 22px">
                <asp:FileUpload ID="fileuploadHinhSanPham" runat="server" Width="297px" /></td>
        </tr>
        <tr>
            <td style="width: 200px; height: 24px;">
            </td>
            <td style="width: 620px; height: 24px;">
                <asp:Button ID="btnCapNhat" runat="server" Text="Cập nhật" OnClick="btnCapNhat_Click" />
                <asp:Button ID="BtnBoQua" runat="server" Text="Bỏ qua" OnClick="BtnBoQua_Click" /></td>
        </tr>
    </table>
</asp:Content>


