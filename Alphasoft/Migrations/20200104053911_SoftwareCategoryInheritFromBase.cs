using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Alphasoft.Migrations
{
    public partial class SoftwareCategoryInheritFromBase : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "CreatedBy",
                table: "SoftwareCategories",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "CreatedDate",
                table: "SoftwareCategories",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Order",
                table: "SoftwareCategories",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "UpdateCount",
                table: "SoftwareCategories",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "UpdatedBy",
                table: "SoftwareCategories",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "UpdatedDate",
                table: "SoftwareCategories",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CreatedBy",
                table: "SoftwareCategories");

            migrationBuilder.DropColumn(
                name: "CreatedDate",
                table: "SoftwareCategories");

            migrationBuilder.DropColumn(
                name: "Order",
                table: "SoftwareCategories");

            migrationBuilder.DropColumn(
                name: "UpdateCount",
                table: "SoftwareCategories");

            migrationBuilder.DropColumn(
                name: "UpdatedBy",
                table: "SoftwareCategories");

            migrationBuilder.DropColumn(
                name: "UpdatedDate",
                table: "SoftwareCategories");
        }
    }
}
