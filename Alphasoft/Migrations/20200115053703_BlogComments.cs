using System;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Alphasoft.Migrations
{
    public partial class BlogComments : Migration
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

            migrationBuilder.CreateTable(
                name: "BlogComments",
                columns: table => new
                {
                    CreatedBy = table.Column<string>(nullable: true),
                    CreatedDate = table.Column<DateTime>(nullable: true),
                    UpdatedBy = table.Column<string>(nullable: true),
                    UpdatedDate = table.Column<DateTime>(nullable: true),
                    UpdateCount = table.Column<int>(nullable: true),
                    Order = table.Column<int>(nullable: false),
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    FullName = table.Column<string>(nullable: true),
                    Email = table.Column<string>(nullable: true),
                    Comment = table.Column<string>(nullable: true),
                    BlogId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BlogComments", x => x.Id);
                    table.ForeignKey(
                        name: "FK_BlogComments_Blogs_BlogId",
                        column: x => x.BlogId,
                        principalTable: "Blogs",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_BlogComments_BlogId",
                table: "BlogComments",
                column: "BlogId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "BlogComments");

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
