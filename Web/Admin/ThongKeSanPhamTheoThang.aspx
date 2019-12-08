<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="ThongKeSanPhamTheoThang.aspx.cs" Inherits="Admin_ThongKeSanPhamTheoThang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span>Tháng</span>
      <asp:DropDownList ID="dropdown" runat="server" >
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
    <asp:Button ID="Button1" runat="server" Text="OK" OnClick="Button1_Click" />

    <br />
      <span><asp:Button ID="Button2" runat="server" Text="Hiện thị biểu đồ tròn" OnClick="Button2_Click" /></span>
    <br />
     <br />
    <br />
    <div style="margin-left:30px;">
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="700px"  >
            <Series>
                <asp:Series Name="Series1" Color="red"  XValueMember="TenSanPham" YValueMembers="SoLuongSanPham" ChartType="Bar"></asp:Series>
            </Series>
            
            <ChartAreas>
            <%--    <asp:ChartArea Name="ChartArea1" Area3DStyle-Enable3D="false" Area3DStyle-LightStyle="Realistic" >--%>
                       <asp:ChartArea Name="ChartArea1"  >
                    <AxisY Title="Số Lượng">
</AxisY>
<AxisX Interval="1" Title="Tên Sản Phẩm">
</AxisX>

<%--<Area3DStyle Enable3D="True" LightStyle="Realistic"></Area3DStyle>--%>
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        </div>
        <br />
      <div style="text-align:center">Biểu đồ thể hiện số lượng tất cả sản phẩm được đặt trong tháng  <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLCONN %>" SelectCommand="ThongKeSanPham" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="dropdown" Name="thang" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
      
    </div>
       <br />
    <br />
</asp:Content>

