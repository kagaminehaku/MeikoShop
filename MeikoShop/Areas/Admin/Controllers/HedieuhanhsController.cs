using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using MeikoShop.Models;

namespace MeikoShop.Areas.Admin.Controllers
{
    public class ChatlieuController : Controller
    {
        private Qlbanhang db = new Qlbanhang();

        // GET: Admin/Chatlieu
        public ActionResult Index()
        {
            return View(db.Chatlieu.ToList());
        }

        // GET: Admin/Chatlieu/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Chatlieu hedieuhanh = db.Chatlieu.Find(id);
            if (hedieuhanh == null)
            {
                return HttpNotFound();
            }
            return View(hedieuhanh);
        }

        // GET: Admin/Chatlieu/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Chatlieu/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Machatlieu,Tenchatlieu")] Chatlieu hedieuhanh)
        {
            if (ModelState.IsValid)
            {
                db.Chatlieu.Add(hedieuhanh);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(hedieuhanh);
        }

        // GET: Admin/Chatlieu/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Chatlieu hedieuhanh = db.Chatlieu.Find(id);
            if (hedieuhanh == null)
            {
                return HttpNotFound();
            }
            return View(hedieuhanh);
        }

        // POST: Admin/Chatlieu/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Machatlieu,Tenchatlieu")] Chatlieu hedieuhanh)
        {
            if (ModelState.IsValid)
            {
                db.Entry(hedieuhanh).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(hedieuhanh);
        }

        // GET: Admin/Chatlieu/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Chatlieu hedieuhanh = db.Chatlieu.Find(id);
            if (hedieuhanh == null)
            {
                return HttpNotFound();
            }
            return View(hedieuhanh);
        }

        // POST: Admin/Chatlieu/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Chatlieu hedieuhanh = db.Chatlieu.Find(id);
            db.Chatlieu.Remove(hedieuhanh);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
