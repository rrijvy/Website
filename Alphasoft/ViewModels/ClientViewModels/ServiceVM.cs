﻿using Alphasoft.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Alphasoft.ViewModels.ClientViewModels
{
    public class ServiceVM
    {
        public List<Service> Services { get; set; }
        public List<ServiceCategory> ServiceCategories { get; set; }
        public List<Client> Client { get; internal set; }
    }
}
