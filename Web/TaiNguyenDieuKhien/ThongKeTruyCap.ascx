<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ThongKeTruyCap.ascx.cs" Inherits="TaiNguyenDieuKhien_ThongKeTruyCap" %>
<div>
    <table cellpadding="0" cellspacing="0" style="width: 200px">
        <tr>
            <td style="width: 200px; height: 19px">
                <strong>Số người Online:</strong>
                <asp:Label ID="lblOnline" runat="server" Text="lblOnline"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 200px; text-align:center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="200px" GridLines="None">
                    <Columns>
                        <asp:TemplateField HeaderText="Thống k&#234; tổng số truy cập:">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TongSoTruyCap") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle ForeColor="Black" />
                            <ItemStyle ForeColor="Black" />
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </td>
        </tr>
    </table>
</div>
