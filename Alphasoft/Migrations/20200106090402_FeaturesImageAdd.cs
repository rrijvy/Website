using Microsoft.EntityFrameworkCore.Migrations;

namespace Alphasoft.Migrations
{
    public partial class FeaturesImageAdd : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "IconImage",
                table: "Features",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IconImage",
                table: "Features");
        }
    }
}
