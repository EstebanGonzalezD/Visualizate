
/**
 * Load main title animation
 */
function loadMainAnimation() {
    setTimeout(function () {
        $(".loader-container").fadeOut(1500);
    }, 500);

    setTimeout(function () {
        $(".navbar").fadeIn(1000);
    }, 1000);
}

/**
 * Navbar animation page
 */
function handleNavbarAnimation() {
    $(window).on('scroll', function () {
        if ($(window).scrollTop() > 20) {
            $('.navbar').addClass('active');
        } else {
            $('.navbar').removeClass('active');
        }
    });
}

/***
 * Load function when DOM is ready
 */
$(document).ready(function () {
    loadMainAnimation();
    handleNavbarAnimation();
});