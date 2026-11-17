using System;

namespace Zivelle___Online_Jewelry_Store.Models
{
    public class JewelryProduct
    {
        // Properties
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string Category { get; set; }
        public string MetalType { get; set; }
        public string Purity { get; set; }
        public decimal Weight { get; set; }
        public string Gemstone { get; set; }
        public decimal MakingCharges { get; set; }
        public decimal Price { get; set; }
        public int StockQuantity { get; set; }
        public string ImageUrl { get; set; }

        // Constructor
        public JewelryProduct()
        {
            ProductName = "";
            Category = "";
            MetalType = "";
            Purity = "";
            Gemstone = "";
            ImageUrl = "";
        }

        // Check product availability
        public bool IsAvailable()
        {
            return StockQuantity > 0;
        }

        // Calculate total price
        public decimal CalculateTotalPrice()
        {
            return Price + MakingCharges;
        }
    }
}
