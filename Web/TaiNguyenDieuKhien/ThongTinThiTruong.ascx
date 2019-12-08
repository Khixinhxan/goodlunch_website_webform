<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ThongTinThiTruong.ascx.cs" Inherits="TaiNguyenDieuKhien_ThongTinThiTruong" %>
<script type="text/javascript">
    function
showWeather() { window.open('http://hn.24h.com.vn/ttcb/thoitiet/thoitiet.php', 'my_new_window', 'scrollbars=no, resizable=no, width=134, height=140'); }

</script>

<table style="border: 1px solid rgb(238, 238, 238);" cellpadding="2" cellspacing="0"
    width="100%">
    <tbody>
        <tr>
            <td align="center" style="height: 23px">
                <img alt="" src="../images/uw_weather_icon.png"" />
            </td>
            <td style="height: 30px">
                <a href="javascript:showWeather();" title="Thời Tiết">Thời Tiết</a>
            </td>
        </tr>

    </tbody>
</table>
