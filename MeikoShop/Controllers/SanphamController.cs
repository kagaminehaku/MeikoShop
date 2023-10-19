using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MeikoShop.Models;

namespace MeikoShop.Controllers
{
    public class SanphamController : Controller
    {
        Qlbanhang db = new Qlbanhang();

        // GET: Sanpham
        public ActionResult SquareEnix()
        {
            var se = db.Sanphams.Where(n=>n.Mahang==2).Take(4).ToList();
           return PartialView(se);
        }
        public ActionResult BandaiNamco()
        {
            var bn = db.Sanphams.Where(n => n.Mahang == 1).Take(4).ToList();
            return PartialView(bn);
        }
        public ActionResult GoodSmile()
        {
            var gs = db.Sanphams.Where(n => n.Mahang == 3).Take(4).ToList();
            return PartialView(gs);
        }

        public ActionResult All()
        {
            var all = db.Sanphams.Where(n => n.Mahang > 0).ToList();
            return PartialView(all);
        }
        public ActionResult xemchitiet(int Masp=0)
        {
            var chitiet = db.Sanphams.SingleOrDefault(n=>n.Masp==Masp);
            if (chitiet == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(chitiet);
        }

    }

}