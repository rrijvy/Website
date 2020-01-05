using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Alphasoft.Models;

namespace Alphasoft.ViewModels
{
    public class SoftwareViewModel
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Icon { get; set; }
        public string Image { get; set; }
        public string ShortDescription { get; set; }
        public string Description { get; set; }
        public string SoftwareCategoryName { get; set; }
        public int Order { get; set; }
        public List<Software> Software { get; internal set; }
        public List<Client> Client { get; internal set; }
    }
}
