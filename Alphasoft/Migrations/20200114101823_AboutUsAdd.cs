using Microsoft.EntityFrameworkCore.Migrations;

namespace Alphasoft.Migrations
{
    public partial class AboutUsAdd : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Address",
                table: "AboutUs",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "BusinessHourse",
                table: "AboutUs",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "BusinessHourseTime",
                table: "AboutUs",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "CallUs",
                table: "AboutUs",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "CallUsNumber",
                table: "AboutUs",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Loacation",
                table: "AboutUs",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Address",
                table: "AboutUs");

            migrationBuilder.DropColumn(
                name: "BusinessHourse",
                table: "AboutUs");

            migrationBuilder.DropColumn(
                name: "BusinessHourseTime",
                table: "AboutUs");

            migrationBuilder.DropColumn(
                name: "CallUs",
                table: "AboutUs");

            migrationBuilder.DropColumn(
                name: "CallUsNumber",
                table: "AboutUs");

            migrationBuilder.DropColumn(
                name: "Loacation",
                table: "AboutUs");
        }
    }
}
