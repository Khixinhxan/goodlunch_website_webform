// <![CDATA[
$(function() {
	// Slider
	$('#coin-slider').coinslider({width:960,height:328,opacity:1});
	
	// radius Box
	$('.wp-pagenavi a, .wp-pagenavi .current, ul.menusm li a.top_level, ul.menusm li ul, .index_rmb, .post-leav a').css({"border-radius":"5px", "-moz-border-radius":"5px", "-webkit-border-radius":"5px"});
	
	
});

// Cufon
Cufon.replace('h1, h2, h3, .rss p', { hover: true });
jQuery(function ($) {
    // back to top
    $("#go-top").hide();
    $(function () {
        var wh = $(window).height();
        var whtml = $(document).height();
        $(window).scroll(function () {
            if ($(this).scrollTop() > whtml / 10) {
                $('#go-top').fadeIn();
            } else {
                $('#go-top').fadeOut();
            }
        });
        $('#go-top').click(function () {
            $('body,html').animate({
                scrollTop: 0
            }, 800);
            return false;
        });
    });
    // end back to top
});


// ]]>