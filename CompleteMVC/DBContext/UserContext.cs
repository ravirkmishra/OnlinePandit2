using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using CompleteMVC.Models;
using System.Data.Entity;
using System.Reflection;

namespace CompleteMVC.DAL
{
    public class UserContext : DbContext
    {
        public UserContext()
        {
            Database.SetInitializer<UserContext>(null);
        }
        public DbSet<Users> Users { get; set; }
        public DbSet<Users_Image> Users_Image { get; set; }

        public Type GetContextPropertyName(string dbContextname)
        {
            Type objectType = this.GetType();
            PropertyInfo propertyname = objectType.GetProperty("CountryNames");
            switch (dbContextname)
            {
                case "CountryNames":
                     propertyname = objectType.GetProperty("CountryNames");
                    return propertyname.PropertyType;
            }
            return propertyname.PropertyType;
        }

        public DbSet<User_PhysiqueDetails> User_PhysiqueDetails { get; set; }
        public DbSet<BodyColour> Body_Colour { get; set; }

        public DbSet<Country> CountryNames { get; set; }
        public DbSet<State> StateNames { get; set; }

        public DbSet<District> DistrictNames { get; set; }

        public DbSet<UserEducationCareer> UserEducationCareerDetails { get; set; }

        public DbSet<JobFields> JobFeilds { get; set; }
        public DbSet<EducationFields> EducationFields { get; set; }
        public DbSet<MaxEducationClassNames> MaxEducationClassNames { get; set; }

        public DbSet<UserSocialDetails> UserSocialDetailsDB { get; set; }

        public DbSet<IncomeRange> IncomeRanges { get; set; }

        public DbSet<Hobbies> HobbiesAndInterests { get; set; }
        public DbSet<HabbitsType> HabbitsTypes { get; set; }

        public DbSet<FoodHabbits> FoodHabbit { get; set; }

        public DbSet<MatchPreferance> UserMatchPreferances { get; set; }

        public DbSet<PanditModel> Pandits { get; set;}
        public DbSet<PanditBookingModel> PanditBookings  { get; set; }
        public DbSet<PujaModel>  Pujas { get; set; }

    }
}
