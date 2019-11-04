﻿var dataTable = $("#clientDatatable").dataTable({
    "processing": true,
    "serverSide": true,
    "filter": true,
    "pageLength": 50,
    "autoWidth": false,
    "lengthMenu": [[50, 100, 150, 200, 500, -1], [50, 100, 150, 200, 500, "All"]],
    "order": [[0, "desc"]],
    "ajax": {
        "url": "/Clients/LoadClient/",
        "type": "POST",
        "data": function (data) {
        },
        "complete": function (json) {
        }
    },
    "columns": [
        { "data": "id", "name": "Id", "autowidth": true, "className": "text_center" },
        { "data": "name", "name": "Name", "autowidth": true },
        { "data": "email", "name": "Email ", "autowidth": true },
        { "data": "logo", "name": "Logo", "autowidth": true },
        { "data": "phone", "name": "Phone", "autowidth": true },
        { "data": "clientSaysAboutUs", "name": "ClientSaysAboutUs", "autowidth": true },
       


        {
            "render": function (data, type, full, meta) {
                return `<button style="font-size: inherit;" class="btn btn-sm btn-rx btn-table detailsBtn" value="${full.id}" data-toggle="tooltip" title="Product details"><i class="fas fa-file-alt"></i></button>
                        <button style="font-size: inherit;" class="btn btn-sm btn-rx btn-table editBtn" value="${full.id}" data-toggle="tooltip" title="Update product info!"><i class="fa fa-pen-fancy"></i></button>
                        <button style="font-size: inherit;" class="btn btn-sm btn-rx btn-table deleteBtn" value="${full.id}" data-toggle="tooltip" title="Delete product!"><i class="fa fa-trash"></i></button>`;
            }
        }
    ]
});


$("#client-createmodalBtn").on("click", function (e) {
    e.preventDefault();
    $.ajax({
        url: "/Clients/CreateView",
        type: "GET",
        success: function (response) {
            $("#client-createFormDiv").html(response);
        }


    });

});

$("body").on("click", ".editBtn",function (e) {

    e.preventDefault();
    $("#clients-editModal").modal('show');
    let data = {
        id: $(this).val()

    };
    $.ajax({
        url: "/Clients/EditView",
        type: "GET",
        data: data,
        success: function (response) {

            $("#client-editFormDiv").html(response);
        }
    });
});

$("body").on("click", ".deleteBtn", function (e) {

    e.preventDefault();
    let data = {
        id: $(this).val()

    };
    $.ajax({
        url: "/Clients/Delete",
        type: "GET",
        data: data,
        success: function (response) {
            dataTable.fnFilter();

        }


    });

});