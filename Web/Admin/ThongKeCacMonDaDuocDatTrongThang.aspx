<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="ThongKeCacMonDaDuocDatTrongThang.aspx.cs" Inherits="Admin_ThongKeSanPhamDaBanTrongThang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="padding-left:20px">
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
       
    </div>
    <br />
    
      <div style="padding-left:20px"><label id="tieude" runat="server" style="color:red; font-size:15px"></label></div>
   
      <div style="padding:50px">

        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="500px" Width="500px" d>
            <Series>
                <asp:Series ChartType="Pie" Legend="Legend1" Name="Series1" XValueMember="TenSanPham" YValueMembers="SoLuongSanPham" IsValueShownAsLabel="True" IsXValueIndexed="True"  >
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                    <AxisX TitleAlignment="Near">
                    </AxisX>
                    <AxisX2 TitleAlignment="Near">
                    </AxisX2>
                </asp:ChartArea>
            </ChartAreas>
            <Legends>
                <asp:Legend Name="Legend1">
                </asp:Legend>
            </Legends>
        </asp:Chart>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLCONN %>" SelectCommand="ThongKeSanPham" SelectCommandType="StoredProcedure">
              <SelectParameters>
                  <asp:ControlParameter ControlID="dropdown" Name="thang" PropertyName="SelectedValue" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          
    </div>
  
   
</asp:Content>

