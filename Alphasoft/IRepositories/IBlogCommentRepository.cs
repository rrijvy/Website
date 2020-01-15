﻿using Alphasoft.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Alphasoft.IRepositories
{
    public interface IBlogCommentRepository : IRepository<BlogComment>
    {
        BlogComment GetWithAllComment();
    }
}
