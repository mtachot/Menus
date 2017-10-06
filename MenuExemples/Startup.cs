using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MenuExemples.Startup))]
namespace MenuExemples
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            
        }
    }
}
