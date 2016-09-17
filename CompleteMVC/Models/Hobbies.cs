using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CompleteMVC.Models
{
    [Table("tblUserHabbits")]
    public class Hobbies
    {
        [Column("id")]
        public int Id { get; set; }
        [Column("UserId")]
        public int UserId { get; set; }
        [Column("HobbiesName")]
        public string HobbiesName { get; set; }
        [Column("FoodFondOf")]
        public string FoodFondOf { get; set; }
        [Column("FoodCanCook")]
        public int FoodCanCook { get; set; }
        [Column("FoodAbletoCook")]
        public string FoodAbletoCook { get; set; }
        [Column("FavoriteTVShow")]
        public string FavoriteTVShow { get; set; }
        [Column("FavoriteBooks")]
        public string FavoriteBooks { get; set; }
        [Column("isVegetarian")]
        public int isVegetarian { get; set; }
        [Column("isEggetarian")]
        public int isEggetarian { get; set; }
        [Column("isSmoke")]
        public int isSmoke { get; set; }
        [Column("isDrink")]
        public int isDrink { get; set; }
        //public int DressingStyle { get; set; }
        // public int ProfileManagedBy { get; set; }
        //public int LanguageKnown { get; set; }
    }
}
