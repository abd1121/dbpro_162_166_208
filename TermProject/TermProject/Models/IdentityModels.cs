using System.Data.Entity;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace TermProject.Models
{
    // You can add profile data for the user by adding more properties to your ApplicationUser class, please visit http://go.microsoft.com/fwlink/?LinkID=317594 to learn more.
    public class ApplicationUser : IdentityUser
    {
        public async Task<ClaimsIdentity> GenerateUserIdentityAsync(UserManager<ApplicationUser> manager)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie);
            // Add custom user claims here
            return userIdentity;
        }
    }

    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext()
            : base("DefaultConnection", throwIfV1Schema: false)
        {
        }

        public static ApplicationDbContext Create()
        {
            return new ApplicationDbContext();
        }

        public System.Data.Entity.DbSet<TermProject.Models.RamViewModel> RamViewModels { get; set; }

        public System.Data.Entity.DbSet<TermProject.Models.CategoryViewModel> CategoryViewModels { get; set; }

        public System.Data.Entity.DbSet<TermProject.Models.DisplayViewModel> DisplayViewModels { get; set; }

        public System.Data.Entity.DbSet<TermProject.Models.OSViewModel> OSViewModels { get; set; }

        public System.Data.Entity.DbSet<TermProject.Models.FrontCameraViewModel> FrontCameraViewModels { get; set; }

        public System.Data.Entity.DbSet<TermProject.Models.FrequencyViewModel> FrequencyViewModels { get; set; }

        public System.Data.Entity.DbSet<TermProject.Models.ProductViewModel> ProductViewModels { get; set; }

        public System.Data.Entity.DbSet<TermProject.Category> Categories { get; set; }

        public System.Data.Entity.DbSet<TermProject.Models.USBViewModel> USBViewModels { get; set; }
    }
}