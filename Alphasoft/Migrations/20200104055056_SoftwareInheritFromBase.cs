using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Alphasoft.Migrations
{
    public partial class SoftwareInheritFromBase : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "CreatedBy",
                table: "Softwares",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "CreatedDate",
                table: "Softwares",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Order",
                table: "Softwares",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "UpdateCount",
                table: "Softwares",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "UpdatedBy",
                table: "Softwares",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "UpdatedDate",
                table: "Softwares",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CreatedBy",
                table: "Softwares");

            migrationBuilder.DropColumn(
                name: "CreatedDate",
                table: "Softwares");

            migrationBuilder.DropColumn(
                name: "Order",
                table: "Softwares");

            migrationBuilder.DropColumn(
                name: "UpdateCount",
                table: "Softwares");

            migrationBuilder.DropColumn(
                name: "UpdatedBy",
                table: "Softwares");

            migrationBuilder.DropColumn(
                name: "UpdatedDate",
                table: "Softwares");
        }
    }
}
