﻿var dataTable = $("#jobDatatable").dataTable({
    "processing": true,
    "serverSide": true,
    "filter": true,
    "pageLength": 50,
    "autoWidth": false,
    "lengthMenu": [[50, 100, 150, 200, 500, -1], [50, 100, 150, 200, 500, "All"]],
    "order": [[0, "desc"]],
    "ajax": {
        "url": "/Jobs/LoadJob/",
        "type": "POST",
        "data": function (data) {
        },
        "complete": function (json) {
        }
    },
    "columns": [
        { "data": "id", "name": "Id", "autowidth": true, "className": "text_center" },
        { "data": "title", "name": "Title", "autowidth": true },
        { "data": "order", "name": "Order", "autowidth": true },
        { "data": "description", "name": "Description ", "autowidth": true },
        { "data": "location", "name": "Location", "autowidth": true },
        { "data": "qualification", "name": "Qualification", "autowidth": true },
        { "data": "jobCreateDate", "name": "JobCreateDate", "autowidth": true },
        { "data": "deadLine", "name": "DeadLine", "autowidth": true },
        {
            "render": function (data, type, full, meta) {
                return `<button style="font-size: inherit;" class="btn btn-sm btn-rx btn-table detailsBtn" value="${full.id}" data-toggle="tooltip" title="Product details"><i class="fas fa-file-alt"></i></button>
                        <button style="font-size: inherit;" class="btn btn-sm btn-rx btn-table editBtn" value="${full.id}" data-toggle="tooltip" title="Update product info!"><i class="fa fa-pen-fancy"></i></button>
                        <button style="font-size: inherit;" class="btn btn-sm btn-rx btn-table deleteBtn" value="${full.id}" data-toggle="tooltip" title="Delete product!"><i class="fa fa-trash"></i></button>`;
            }
        }
    ]
});

$("#job-createmodalBtn").on("click", function (e) {
    e.preventDefault();
    $.ajax({
        url: "/Jobs/CreateView",
        type: "GET",
        success: function (response) {
            $("#job-createFormDiv").html(response);
        }
    });
});

$("body").on("click", ".editBtn", function (e) {
    e.preventDefault();
    $("#job-editModal").modal('show');
    let data = {
        id: $(this).val()
    };
    $.ajax({
        url: "/Jobs/EditView",
        type: "GET",
        data: data,
        success: function (response) {
            $("#job-editFormDiv").html(response);
        }
    });
});



$("body").on("click", ".deleteBtn", function (e) {
    e.preventDefault();
    let id = $(this).val();
    $(".modaldeleteBtn").attr("data-id", id);
    $("#deleteModal").modal("show");
});

$("body").on("click", ".modaldeleteBtn", function (e) {
    e.preventDefault();
    let id = $(this).attr("data-id");
    $.ajax({
        url: "/Jobs/Delete",
        type: "GET",
        data: { id: id },
        success: function (response) {
            $("#deleteModal").modal("hide");
            dataTable.fnFilter();
        }
    });
});


