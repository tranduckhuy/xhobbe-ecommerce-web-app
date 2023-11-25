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
