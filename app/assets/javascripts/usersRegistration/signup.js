$(function () {
    $('input#ask-email').change(function () {
        $('#input-email').hide();
        $('#hide-zozo').css("display", "block");
    });
});

$(function () {
    $('input#ask-password').click(function () {
        $('#input-password').hide();
        $('#hide-password').css("display", "block");
    });
});

