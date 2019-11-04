﻿var dataTable = $("#serviceDatatable").dataTable({
    "processing": true,
    "serverSide": true,
    "filter": true,
    "pageLength": 50,
    "autoWidth": false,
    "lengthMenu": [[50, 100, 150, 200, 500, -1], [50, 100, 150, 200, 500, "All"]],
    "order": [[0, "desc"]],
    "ajax": {
        "url": "/services/LoadServices/",
        "type": "POST",
        "data": function (data) {
        },
        "complete": function (json) {
        }
    },
    "columns": [
        { "data": "id", "name": "Id", "autowidth": true, "className": "text_center" },
        { "data": "name", "name": "Name", "autowidth": true },
        { "data": "serviceCategoryName", "name": "ServiceCategoryId", "autowidth": true },
        { "data": "price", "name": "price", "autowidth": true, "className": "text_center" },
        { "data": "shortDescription", "name": "ShortDescription", "autowidth": true },
        { "data": "description", "name": "Description", "autowidth": true },
     
        {
            "render": function (data, type, full, meta) {
                return `<button style="font-size: inherit;" class="btn btn-sm btn-rx btn-table detailsBtn" value="${full.id}" data-toggle="tooltip" title="Product details"><i class="fas fa-file-alt"></i></button>
                        <button style="font-size: inherit;" class="btn btn-sm btn-rx btn-table editBtn" value="${full.id}" data-toggle="tooltip" title="Update product info!"><i class="fa fa-pen-fancy"></i></button>
                        <button style="font-size: inherit;" class="btn btn-sm btn-rx btn-table deleteBtn" value="${full.id}" data-toggle="tooltip" title="Delete product!"><i class="fa fa-trash"></i></button>`;
            }
        }
    ]
});

(function () {

    $("#service-modalBtn").on("click", function (e) {
        $.ajax({
            url: "/Services/CreateView",
            type: "GET",
            success: function (response) {
                $("#service-createFormDiv").html(response);
            }
        });
    });

    $("body").on("click", ".deleteBtn", function (e) {
        e.preventDefault();

        let data = {
            id: $(this).val()
        };

        $.ajax({
            url: "/Services/Delete",
            type: "GET",
            data: data,
            success: function (response) {
                dataTable.fnFilter();
            }
        });
    });

    $("body").on("click", ".editBtn", function (e) {

        $("#service-editModal").modal('show');

        let data = {
            id: $(this).val()
        };

        $.ajax({
            url: "/Services/EditView",
            type: "GET",
            data: data,
            success: function (response) {
                $("#service-editFormDiv").html(response);
            }
        });
    });

})();