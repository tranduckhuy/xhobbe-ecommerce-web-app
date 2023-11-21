/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

<!--<a href="#" onclick="popupDelete(<%=customer.getId()%>)"class="btn btn-warning">delete</a>-->
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
                        url: './admin-product?action=delete?cusId=' + id,
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

