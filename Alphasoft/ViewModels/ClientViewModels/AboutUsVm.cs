using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Alphasoft.Models;

namespace Alphasoft.ViewModels.ClientViewModels
{
    public class AboutUsVm
    {
        public AboutUsVm()
        {
            teamVmList = new List<OurTeamVM>();
        }
        public Company Company { get; set; }
        public AboutUs about { get; set; }
        public List<AboutUs> aboutUs { get; set; }
        public object aboutImage { get; internal set; }

        public List<OurTeamVM> teamVmList { get; set; }
        public object OurTeamvm { get; internal set; }
        public List<OurTeam> Teams { get; internal set; }
        public OurTeam Team { get; internal set; }
    }
}
