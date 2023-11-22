
function popupDelete(id) {
    swal({
        title: "Are you sure?",
        text: "Once deleted, you will not be able to recover this data!",
        icon: "warning",
        buttons: true,
        dangerMode: true
    })
            .then((willDelete) => {
                if (willDelete) {
                    $.ajax({
                        url: './admin-product?action=delete&id=' + id,
                        type: 'GET',
                        success: function () {
                            swal("Poof! Your data has been deleted!", {
                                icon: "success"
                            })
                                    .then(() => {
                                        location.reload();
                                    });
                        }
                    });
                } else {
                    swal("Your data is safe!");
                }
            });
}
