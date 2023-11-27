function popupDelete(email, object) {
    swal({
        title: "Are you sure?",
        text: "Once deleted, you will not be able to recover this " + object + "!",
        icon: "warning",
        buttons: true,
        dangerMode: true
    })
            .then((willDelete) => {
                if (willDelete) {
                    window.location.href = "./admin-account?action=delete&email=" + email;
                } else {
                    swal("The " + object + " is safe!");
                }
            });
}

function popupDeleteCart(cartId, object) {
    swal({
        title: "Are you sure?",
//        text: "Once deleted, you will not be able to recover this " + object + "!",
        icon: "warning",
        buttons: true,
        dangerMode: true
    })
            .then((willDelete) => {
                if (willDelete) {
                    window.location.href = "./cart?action=delete&id=" + cartId;
                } else {
                    swal("The " + object + " is safe!");
                }
            });
}


function confirmDelete(id, object) {
    swal({
        title: "Are you sure?",
        text: "Once deleted, you will not be able to recover this " + object + "!",
        icon: "warning",
        buttons: true,
        dangerMode: true
    })
            .then((willDelete) => {
                if (willDelete) {
                    $.ajax({
                        url: './admin-order?action=delete&id=' + id,
                        type: 'GET',
                        success: function () {
                            swal("Poof! The " +object+ " has been deleted!", {
                                icon: "success"
                            })
                                    .then(() => {
                                        location.reload();
                                    });
                        }
                    });
                } else {
                    swal("The " +object+ " is safe!");
                }
            });
}
