$(document).ready(function() {
    // Action for minus button
    $('.js-minus').click(function () {
        var input = $(this).parent().find('input');
        var count = parseInt(input.val()) - 1;
        count = count < 1 ? 1 : count;
        input.val(count);
        input.change();
        sum_totall();
        return false;
    });
    // Action for minus button
    $('.js-plus').click(function () {
        var input = $(this).parent().find('input');
        var count = parseInt(input.val()) + 1;
        count = count > 50 ? 50 : count;
        input.val(count);
        input.change();
        sum_totall();
        return false;
    });
    // Action for trash button
    $('.trico').click(function () {
        $("#w"+this.id).remove();
        sum_totall();
    });
    // Count sum when page loaded
    sum_totall();
});
function sum_totall() {
    var sum = 0;
    $('input[type="number"].js-num').each(function () {
        sum += parseInt($('#p'+this.id).text()) * parseInt($(this).val());
        $('#js-sum').text(sum+" €");
        $('input[name="summ"]').val(sum);
    });
}