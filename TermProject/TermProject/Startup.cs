using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TermProject.Startup))]
namespace TermProject
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
