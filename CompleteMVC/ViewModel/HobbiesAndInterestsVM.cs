using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CompleteMVC.ViewModel
{
    public class HobbiesAndInterestsVM : UserSignUpVM
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public string HobbiesName { get; set; }
        public string FoodFondOf { get; set; }
        public int FoodCanCook { get; set; }
        public string FoodAbletoCook { get; set; }
        public string FavoriteBooks { get; set; }
        public string FavoriteTVShow { get; set; }
        public int isVegetarian { get; set; }
        public int isEggetarian { get; set; }
        public int isSmoke { get; set; }
        public int isDrink { get; set; }
        //public int DressingStyle { get; set; }
        //public int ProfileManagedBy { get; set; }
        //public int LanguageKnown { get; set; }

        public Dictionary<int, string> ListYesNo { get; set; }
        public Dictionary<int, string> ListFoodHabbits { get; set; }
        public Dictionary<int, string> ListHabbitsType { get; set; }
    }
}