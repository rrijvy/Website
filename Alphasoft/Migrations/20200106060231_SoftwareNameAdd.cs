using Microsoft.EntityFrameworkCore.Migrations;

namespace Alphasoft.Migrations
{
    public partial class SoftwareNameAdd : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Name",
                table: "Softwares",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Name",
                table: "Softwares");
        }
    }
}
