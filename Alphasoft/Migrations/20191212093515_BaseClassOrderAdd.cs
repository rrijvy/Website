using Microsoft.EntityFrameworkCore.Migrations;

namespace Alphasoft.Migrations
{
    public partial class BaseClassOrderAdd : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Order",
                table: "SubMenus",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Order",
                table: "Services",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Order",
                table: "ServiceCategories",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Order",
                table: "Products",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Order",
                table: "ProductCategories",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Order",
                table: "OurTeams",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Order",
                table: "Menus",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Order",
                table: "Faqs",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Order",
                table: "Designations",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Order",
                table: "Departments",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Order",
                table: "Companies",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Order",
                table: "Clients",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AlterColumn<int>(
                name: "Order",
                table: "ChooseUs",
                nullable: false,
                oldClrType: typeof(string),
                oldNullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Order",
                table: "Blogs",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Order",
                table: "Banners",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Order",
                table: "SubMenus");

            migrationBuilder.DropColumn(
                name: "Order",
                table: "Services");

            migrationBuilder.DropColumn(
                name: "Order",
                table: "ServiceCategories");

            migrationBuilder.DropColumn(
                name: "Order",
                table: "Products");

            migrationBuilder.DropColumn(
                name: "Order",
                table: "ProductCategories");

            migrationBuilder.DropColumn(
                name: "Order",
                table: "OurTeams");

            migrationBuilder.DropColumn(
                name: "Order",
                table: "Menus");

            migrationBuilder.DropColumn(
                name: "Order",
                table: "Faqs");

            migrationBuilder.DropColumn(
                name: "Order",
                table: "Designations");

            migrationBuilder.DropColumn(
                name: "Order",
                table: "Departments");

            migrationBuilder.DropColumn(
                name: "Order",
                table: "Companies");

            migrationBuilder.DropColumn(
                name: "Order",
                table: "Clients");

            migrationBuilder.DropColumn(
                name: "Order",
                table: "Blogs");

            migrationBuilder.DropColumn(
                name: "Order",
                table: "Banners");

            migrationBuilder.AlterColumn<string>(
                name: "Order",
                table: "ChooseUs",
                nullable: true,
                oldClrType: typeof(int));
        }
    }
}
