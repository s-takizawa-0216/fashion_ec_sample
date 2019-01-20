$(function () {
    $('input#ask-email').change(function () {
        $('#input-email').hide();
        $('#hide-zozo').css("display", "block");
    });
});

$(function () {
    $('input#ask-password').focus(function () {
        $('#input-password').hide();
        $('#hide-password').css("display", "block");
    });
});
