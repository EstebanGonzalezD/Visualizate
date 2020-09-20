/*
* Load main title animation
*/
function loadMainAnimation() {
    setTimeout(function () {
        $(".loader-container").fadeOut(1500);
    }, 500);

    setTimeout(function () {
        $(".navbar").fadeIn(1000);
    }, 1000);
    setTimeout(function () {
        $(".mensaje").fadeIn(1000);
    }, 3000);

}

$(document).ready(function () {
    loadMainAnimation();
});
