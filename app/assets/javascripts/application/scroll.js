
var ScrollController =
{
    init: function()
    {
        $('#menu a').click(function() {
            var href = $(this).attr('href');
            $('html, body').animate({
                scrollTop: $(href).offset().top
            }, 500);
            return false;
        });
    }
}

$(document).ready(function() {
    ScrollController.init();
});