﻿using Alphasoft.Data;
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
                Product = _work.Products.Get(id),

                Products = _work.Products.GetAll().Where(x => x.Id != id).ToList(),

                ClientProjects = _work.ClientProducts.ClientProjectsByProduct(id)
            };

            return View(clientProduct);
        }

        public IActionResult Faq()
        {

            FaqVm faqvm = new FaqVm
            {
                Faqs = _work.Faq.GetAll()

            };
            return View(faqvm);
        }

        public IActionResult TeamView()
        {
            OurTeamVM teamVm = new OurTeamVM
            {
                Teams = _work.OurTeams.GetAllWithDepartmentAndDesignation()
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
        public IActionResult AboutUsView()
        {
            AboutUsVm aboutUsVm = new AboutUsVm
            {
                aboutUs = _work.AboutUs.GetWithAboutUs(),
                about = _work.AboutUs.GetWithAbout(),
            };
            return View(aboutUsVm);
        }

        public IActionResult Section_2()
        {
            var whyChooseUs = _work.ChooseUs.GetAll();
            return PartialView("_Section2", whyChooseUs);
        }

        public IActionResult Section_3()
        {
            var ourClients = _work.Client.GetAll();
            return PartialView("_Section3", ourClients);
        }

        public IActionResult Section_4()
        {
            var popularProducts = _work.Products.GetAllWithCategory();
            return PartialView("_Section4", popularProducts);
        }

        public IActionResult Section_5()
        {
            var hostingPlans = _work.HostingPlan.GetAll();
            return PartialView("_Section5", hostingPlans);
        }


        public IActionResult Section_6()
        {
            var ourProducts = _work.Products.GetAll();
            return PartialView("_Section6", ourProducts);
        }


        public IActionResult Section_7()
        {
            return PartialView("_Section7");
        }

        public IActionResult Section_8()
        {
            var whyChooseUs = _work.ChooseUs.GetAll();
            return PartialView("_Section8", whyChooseUs);
        }
    }
}