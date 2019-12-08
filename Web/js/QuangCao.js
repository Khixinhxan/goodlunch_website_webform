function hide_float_left() {
    var video = document.getElementById("Video1");
    var content = document.getElementById('float_content_left');
    var hide = document.getElementById('hide_float_left');
    if (content.style.display == "none") {
        content.style.display = "block";
        hide.innerHTML = '<a href="javascript:hide_float_left()">Tắt quảng cáo [X]</a>';
        
        
    }
    else {
        content.style.display = "none";
        hide.innerHTML = '<a href="javascript:hide_float_left()">Xem quảng cáo...</a>';
        video.onpause();
    }
}
