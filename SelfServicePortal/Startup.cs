using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SelfServicePortal.Startup))]
namespace SelfServicePortal
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
