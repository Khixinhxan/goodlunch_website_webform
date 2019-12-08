<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Top10SanPham.ascx.cs" Inherits="TaiNguyenDieuKhien_Top10SanPham" %>

<marquee height="300" direction="up" scrollamount="1" scrolldelay="10" truespeed="truespeed" onmouseover="this.stop()"
    onmouseout="this.start()" style="text-align: center"><asp:DataList id="dtl10SanPham" runat="server" Width="200px"><ItemTemplate>
<TABLE cellSpacing=0 cellPadding=0 width=200px>
    <TBODY><TR><TD style="WIDTH: 200px; HEIGHT: 19px; BACKGROUND-COLOR: gainsboro"><asp:Label id="Label1" runat="server" Text='<%# Eval("TenSanPham") %>' ForeColor="Maroon" Font-Bold="True" __designer:wfdid="w10"></asp:Label></TD></TR><TR><TD style="WIDTH: 200px">
        <asp:HyperLink id="HyperLink1" runat="server" Width="200px" __designer:wfdid="w4" NavigateUrl='<%# Eval("IdSanPham","../ChiTietSanPham.aspx?IdSanPham={0}") %>' ImageUrl='<%# Eval("IDHinhSanPham","../HienThiHinhSanPham.ashx?IdHinhSanPham={0}") %>' style="width: 200px" >HyperLink</asp:HyperLink></TD></TR>
        <TR><TD style="WIDTH: 200px; HEIGHT: 40px" vAlign=top>
            <asp:Label id="Label2" runat="server" Text='<%# Eval("GiaSanPham","{0:##,###,###} VND") %>' ForeColor="Maroon" Font-Bold="True" __designer:wfdid="w10"></asp:Label></TD></TR></TBODY></TABLE>
</ItemTemplate>
</asp:DataList></marquee>
