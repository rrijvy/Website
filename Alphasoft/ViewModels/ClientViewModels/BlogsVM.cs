using Alphasoft.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Alphasoft.ViewModels.ClientViewModels
{
    public class BlogsVM
    {
        public List<Blog> blogImage { get; set; }

        public BlogComment commentCount { get; set; }

        public int Id { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Comment { get; set; }
        public int BlogId { get; set; }
        public List<BlogComment> blogcomment { get; set; }
        public List<Blog> blogs { get; set; }
        public Blog singleblogs { get; set; }
        public Blog lastImage { get; set; }
        public List<Blog> Blogs { get; set; }
        public Blog BlogsItem { get;  set; }
    }
}
