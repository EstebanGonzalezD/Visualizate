// Change Color of button on hover
$(function () {
    $('#card1').hover(function () {
        $('.btn-yellow').css('background-color', '#FFAE03');
        $('.btn-yellow').css('color', '#fff');
    }, function () {
        // on mouseout, reset the background colour
        $('.btn-yellow').css('background-color', '');
        $('.btn-yellow').css('color', '');
    });
});
$(function () {
    $('#card2').hover(function () {
        $('.btn-pink').css('background-color', '#ff70a6');
        $('.btn-pink').css('color', '#fff');
    }, function () {
        // on mouseout, reset the background colour
        $('.btn-pink').css('background-color', '');
        $('.btn-pink').css('color', '');
    });
});
$(function () {
    $('#card3').hover(function () {
        $('.btn-green').css('background-color', '#28a745');
        $('.btn-green').css('color', '#fff');
    }, function () {
        // on mouseout, reset the background colour
        $('.btn-green').css('background-color', '');
        $('.btn-green').css('color', '');
    });
});
$(function () {
    $('#card4').hover(function () {
        $('.btn-purple').css('background-color', '#390099');
        $('.btn-purple').css('color', '#fff');
    }, function () {
        // on mouseout, reset the background colour
        $('.btn-purple').css('background-color', '');
        $('.btn-purple').css('color', '');
    });
});
$(function () {
    $('#card5').hover(function () {
        $('.btn-blue').css('background-color', '#17a2b8');
        $('.btn-blue').css('color', '#fff');
    }, function () {
        // on mouseout, reset the background colour
        $('.btn-blue').css('background-color', '');
        $('.btn-blue').css('color', '');
    });
});
