var vtlai_remove_fads = false;

function vtlai_check_adswidth() {

    if (vtlai_remove_fads) {

        document.getElementById('left_ads_float').style.display = 'none';

        document.getElementById('right_ads_float').style.display = 'none';

        return;

    } else if (document.cookie.indexOf('vtlai_remove_float_ads') != -1) {

        vtlai_remove_fads = true;

        vtlai_check_adswidth();

        return;

    }

    else {

        var lwidth = parseInt(document.body.clientWidth);

        if (lwidth < 1110) {

            document.getElementById('left_ads_float').style.display = 'none';

            document.getElementById('right_ads_float').style.display = 'none';

        }

        else {

            document.getElementById('left_ads_float').style.display = 'block';

            document.getElementById('right_ads_float').style.display = 'block';

        }

        setTimeout('vtlai_check_adswidth()', 10);

    }

}
