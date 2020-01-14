using Alphasoft.Data;
using Alphasoft.Models;
using Alphasoft.UnitOfWork;
using Alphasoft.ViewModels;
using Alphasoft.ViewModels.ClientViewModels;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;
namespace Alphasoft.Controllers
{
    public class ClientViewController : Controller
    {
        private readonly IUnitOfWork _work;
        private readonly ApplicationDbContext _context;

        public List<Faq> FaqList { get; private set; }

        public ClientViewController(IUnitOfWork work, ApplicationDbContext context)
        {
            _work = work;
            _context = context;
        }

        public IActionResult Product(int id)
        {
            ClientProductVM clientProduct = new ClientProductVM
            {
                Company = _work.Companies.FirstOrDefault(),

                Product = _work.Products.GetProductWithCategory(id),

                Products = _work.Products.GetAll().Where(x => x.Id != id).OrderBy(x=>x.Order).ToList(),

                ProductCategories = _work.ProductCategories.GetAll().OrderBy(x=>x.Order).ToList(),

                ClientProjects = _work.ClientProducts.ClientProjectsByProduct(id)
            };

            return View(clientProduct);
        }

        public IActionResult Faq()
        {

            FaqVm faqvm = new FaqVm
            {
                Faqs = _work.Faq.GetAll().OrderBy(x => x.Order).ToList(),

            };
            return View(faqvm);
        }

        public IActionResult Blogs()
        {
            BlogsVM blogsVM = new BlogsVM
            {
                Blogs = _work.Blogs.GetAll().OrderBy(x=>x.Order).ToList(),
                singleblogs=_work.Blogs.GetWithSingleImage(),
                lastImage=_work.Blogs.GetWithLatImage(),
            };

            return View(blogsVM);
        }

        public IActionResult OurTeam()
        {
            OurTeamVM teamVm = new OurTeamVM
            {
                Teams = _work.OurTeams.GetAllWithDepartmentAndDesignation().OrderBy(x=>x.Order).ToList()
            };

            return View(teamVm);
        }

        public IActionResult TeamViewDetails(int id)
        {
            OurTeamVM teamVm = new OurTeamVM
            {
                Team = _work.OurTeams.GetWithDepartmentDesignation(id),
                Teams = _work.OurTeams.GetAllWithDepartmentAndDesignation()
            };

            teamVm.Teams = teamVm.Teams.Where(x => x.Id != id && x.DepartmentId == teamVm.Team.DepartmentId).ToList();

            return View(teamVm);
        }
        public IActionResult AboutUs()
        {
            AboutUsVm aboutUsVm = new AboutUsVm
            {

                Company = _work.Companies.FirstOrDefault(),
                aboutUs = _work.AboutUs.GetWithAboutUs(),
                about = _work.AboutUs.GetWithAbout(),
                OurTeamvm = _work.OurTeams.TeamWithUs(),
                Teams = _work.OurTeams.GetAllWithDepartmentAndDesignation(),
                TotalSoftware = _work.Softwares.GetAll(),
            };
           

            aboutUsVm.teamVmList = _work.OurTeams.GetAllWithDepartmentAndDesignation().OrderBy(x => x.Order).Select(x => new OurTeamVM() { Name=x.Name,DepartmentName = x.Department.Name.ToString(),DesignationName=x.Designation.Name.ToString(),Image=x.Image,Description=x.Description,Facebook=x.Facebook,Twitter=x.Twitter,LinkedIn=x.LinkedIn}).ToList();
            return View(aboutUsVm);
        }

        public IActionResult Clients()
        {
            var clients = _work.Client.GetAll();
            return View(clients);
        }
        public IActionResult Products(int id)
        {
            ProductsViewModel productsViewModel = new ProductsViewModel
            {
                Products = _work.Products.GetAllWithCategory().OrderBy(x=>x.Order).ToList(),
            };

            productsViewModel.PopularProducts = _work.QueryHelper.GetPopularProducts(productsViewModel.Products);
            productsViewModel.CategoryProducts = _work.QueryHelper.GetCategoryProducts(productsViewModel.Products);

            if (id != 0)
            {
                productsViewModel.Products = _work.QueryHelper.GetCategoryWiseProducts(productsViewModel.Products, id);
            }

            return View(productsViewModel);
        }

        public IActionResult Services()
        {
            ServiceVM serviceVM = new ServiceVM
            {
                Services = _work.Services.GetAll(),
                ServiceCategories = _work.ServiceCategories.GetAll(),
                 Client = _work.Client.GetAll(),
                 blogs=_work.Blogs.GetAll(),
            };
            return View(serviceVM);
        }

        public IActionResult Career()
        {
            return View();
        }

        public IActionResult Section_1()
        {
            var whyChooseUs = _work.ChooseUs.GetAll();
            return PartialView("_Section1", whyChooseUs);
        }

        public IActionResult Section_2()
        {
            var ourClients = _work.Client.GetAll();
            return PartialView("_Section2", ourClients);
        }

        public IActionResult Section_3()
        {
            var popularProducts = _work.Products.GetAllWithCategory();

            popularProducts = popularProducts.Where(x => x.IsPopular == true).ToList();

            return PartialView("_Section3", popularProducts);
        }

        public IActionResult Section_4()
        {
            var hostingPlans = _work.HostingPlan.GetAll();
            return PartialView("_Section4", hostingPlans);
        }


        public IActionResult Section_5()
        {
            var ourProducts = _work.Products.GetAllWithCategory();

            return PartialView("_Section5", ourProducts);
        }

        public IActionResult Section_6()
        {
            return PartialView("_Section6");
        }

        public IActionResult Section_7()
        {
            return PartialView("_Section7");
        }
        public IActionResult ContractUsCreate(ContactUs contact)
        {
            if (ModelState.IsValid)
            {
                _work.ContactUs.Add(contact);
                _work.Complete();

                ModelState.Clear();
                contact = new ContactUs();
                return PartialView("_Section6", contact);
            }

            return PartialView("_Section6", contact);
        }
        public IActionResult ProductContarctUs(ContactUs contact)
        {
            if (ModelState.IsValid)
            {
                _work.ContactUs.Add(contact);
                _work.Complete();

                ModelState.Clear();
                contact = new ContactUs();
                return View(contact);
            }

            return View(contact);
        }

        public IActionResult CategoryProducts(int id)
        {
            var products = _work.Products.GetCategoryWiseProducts(id);
            return PartialView("_CategoryWiseProducts", products);
        }



        public IActionResult CategoryWiseProduct(int id)
        {
            ProductsViewModel productsViewModel = new ProductsViewModel
            {
                Products = _work.Products.GetAllWithCategory(),
                CategoryWiseProducts = _work.Products.GetCategoryWiseProducts(id)
            };

            productsViewModel.PopularProducts = _work.QueryHelper.GetPopularProducts(productsViewModel.Products);
            productsViewModel.CategoryProducts = _work.QueryHelper.GetCategoryProducts(productsViewModel.Products);

            return View(productsViewModel);
        }

      

        public IActionResult GetCategoryWiseProducts(int id, int number = 8)
        {
            List<Product> products = new List<Product>();

            if (id == 0)
            {
                products = _work.Products.GetAllWithCategory().TakeLast(number).ToList();
                return PartialView("_GetCategoryWiseProducts", products);
            }

            products = _work.Products.GetCategoryWiseProducts(id).TakeLast(number).ToList();
            return PartialView("_GetCategoryWiseProducts", products);
        }
        //public IActionResult Softwares()
        //{
        //    SoftwareViewModel SoftwareViewVM = new SoftwareViewModel
        //    {
        //        Software = _work.Softwares.GetAll(),
        //        SoftwareCategory = _work.SoftwareCategories.GetAll(),
        //        Features = _work.Features.GetAll(),
        //        SoftwareImage=_work.Softwares.FirstOrDefault()
               
        //    };
        //    return View(SoftwareViewVM);
           
        //}
        public IActionResult CategoryWiseSoftware(int id)
        {
            SoftwareViewModel SoftwareViewVM = new SoftwareViewModel
            {
                SingleSoftware = _work.Softwares.GetAllWithFeatureAndCategory(id),
                Client = _work.Client.GetAll()
            };
            return View(SoftwareViewVM);

        }
        public IActionResult Pronali()
        {
            PronaliViewModel viewModel = new PronaliViewModel
            {
                Blogs = _work.Blogs.GetAll().OrderBy(x => x.Order).ToList(),
                whyChouseus = _work.ChooseUs.FirstOrDefault(),
                
                features=_work.Features.GetAll(),
                softwareCategory=_work.SoftwareCategories.GetAll(),
                software=_work.Softwares.GetAll(),
               

            };
            return View(viewModel);
        }
    }
}