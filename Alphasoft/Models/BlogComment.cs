using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Alphasoft.Models
{
    public class BlogComment : Base
    {
       

        public int Id { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Comment { get; set; }
        public int BlogId { get; set; }
        public Blog Blog { get; set; }

    }
}
