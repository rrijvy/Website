using Alphasoft.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Alphasoft.ViewModels.ClientViewModels
{
    public class BlogsVM
    {
      

        public List<Blog> blogs { get; set; }

        public Blog singleblogs { get; set; }
        public Blog lastImage { get; set; }
        public List<Blog> Blogs { get; set; }
        public Blog BlogsItem { get;  set; }
    }
}
