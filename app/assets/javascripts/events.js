
function build_datetimes() {
    $('.datetimepicker').datetimepicker({
        format: 'YYYY-MM-DDTHH:mm'
    });
}

function build_billboard() {
    if(!$('.table-billboard tbody').html().trim().length) {
        $('.table-billboard tbody').html($('.billboards-template').html());
    } else {
        $('.table-billboard tbody:last-child').append($('.billboards-template').html());
    }
    build_datetimes();
}

function remove_billboard(rm_btn) {
    $(rm_btn).parent().parent().remove();
}

function update_image() {
    var url = $('#image-url').val();
    $('#event-img-preview').attr("src", url);
}