using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Alphasoft.Models;

namespace Alphasoft.ViewModels.ClientViewModels
{
    public class PronaliViewModel
    {
        public List<Software> software { get; set; }

        public List<SoftwareCategory> softwareCategory { get; set; }
        public List<Features> features { get; set; }
        public ChooseUs whyChouseus { get; set; }

        public Software SingleSoftware { get; set; }
        public List<Blog> Blogs { get; set; }
    }
}
