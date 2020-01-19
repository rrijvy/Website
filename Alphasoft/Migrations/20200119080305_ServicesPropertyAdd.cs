using Microsoft.EntityFrameworkCore.Migrations;

namespace Alphasoft.Migrations
{
    public partial class ServicesPropertyAdd : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "PlanDes",
                table: "Services",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "QualityDes",
                table: "Services",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "StrategyDes",
                table: "Services",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "WorkDes",
                table: "Services",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "PlanDes",
                table: "Services");

            migrationBuilder.DropColumn(
                name: "QualityDes",
                table: "Services");

            migrationBuilder.DropColumn(
                name: "StrategyDes",
                table: "Services");

            migrationBuilder.DropColumn(
                name: "WorkDes",
                table: "Services");
        }
    }
}
