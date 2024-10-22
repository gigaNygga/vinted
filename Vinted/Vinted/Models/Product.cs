using SQLite;
using Vinted.Enums;

namespace Vinted.Models
{
    [Table("Product")]
    public class Product
    {
        [PrimaryKey]
        [AutoIncrement]
        [Column("id")]
        public int Id { get; set; }

        [Column("name")]
        public string Name { get; set; }

        [Column("description")]
        public string Description { get; set; }

        [Column("price")]
        public decimal Price { get; set; }

        [Column("imagesPath")]
        public string? ImagesPath { get; set; }

        [Column("gender")]
        public Gender Gender { get; set; }

        [Column("condition")]
        public ProductCondition Condition { get; set; }
    }
}
