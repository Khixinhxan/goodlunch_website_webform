<%@ Page Language="C#" MasterPageFile="~/mainphu.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" style="width: 600px">
        <tr>
            <td style="height: 19px" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 200px; height: 19px">
                <span style="color:red">Tên Đăng Nhập</span></td>
            <td align="left" style="width: 400px; height: 19px">
                <asp:TextBox ID="textUsername" runat="server" Width="149px" BorderColor="#FF3300" BorderStyle="Solid" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textUsername"
                    ErrorMessage="Tên đăng nhập không để trống"></asp:RequiredFieldValidator></td>
        </tr>
       
        <tr>
            <td style="width: 200px; height: 19px">&nbsp;<span style="color:red">Mật Khẩu</span></td>
            <td align="left" style="width: 400px; height: 19px">
                <asp:TextBox ID="textMatKhau" runat="server" TextMode="Password" Width="149px" BorderColor="#FF3300" BorderStyle="Solid" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textMatKhau"
                    ErrorMessage="Mật khẩu không để trống"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 200px; height: 19px;color: #000000">Xác nhận</td>
            <td style="width: 400px; height: 19px" align="left">&nbsp;
                <asp:CheckBox ID="CheckDN" runat="server" Font-Bold="true" Text="Tôi không phải là người máy" />
            </td>
        </tr>
        <tr>
            <td style="width: 200px"></td>
            <td style="width: 400px" align="left">
                <asp:ImageButton ID="btnDangNhap" runat="server" OnClick="btnDangNhap_Click" ImageUrl="~/images/button_dangnhap.jpg" />
             
               </td>
        </tr> 
        <tr>
            <td style="width: 200px"></td>
            <td style="width: 400px" align="left"><asp:Label ID="labelMessage" runat="server"></asp:Label></td>
        </tr>      
    </table>
  
  
  
</asp:Content>

