<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LienKet.ascx.cs" Inherits="TaiNguyenDieuKhien_LienKet" %>
<table style="border: 1px solid rgb(238, 238, 238);" cellpadding="2" cellspacing="0"
    width="100%">
    <tbody>
        <tr>
            <td style="border: 1px solid rgb(173, 167, 154);" align="center" width="100%" height="32">
                <select size="1" name="link" onchange="if(this.options[selectedIndex].value!=0){ window.open(this.options[selectedIndex].value)}">
                    <option>Liên kết website</option>
                    <option value="http://www.vnexpress.net">Báo Vnexpress</option>
                    <option value="https://www.lazada.vn/">Lazada</option>

                </select>
                <select class="links" name="choice" onchange="if(this.options[selectedIndex].value!=0){ window.open(this.options[selectedIndex].value)}">
                    <option value="0" selected="selected">Liên k&#7871;t Website</option>






                    <option value="http://www.laodong.com.vn">Báo Lao Động</option>


                    <option value="http://www.zingmp3.vn">Nhạc Zing MP3</option>


                    <option value="http://www.24h.com.vn">Tin Tức 24h</option>




                </select>
            </td>
        </tr>
        <script>
            function Links() {
                var link = link.value;
                window.open(link);
            }
        </script>
    </tbody>
</table>
