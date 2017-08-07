using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Wardrobe.Models;

namespace Wardrobe.Controllers
{
    public class BottomsIDs1Controller : Controller
    {
        private WardrobeEntities db = new WardrobeEntities();

        // GET: BottomsIDs1
        public ActionResult Index()
        {
            return View(db.BottomsIDs.ToList());
        }

        // GET: BottomsIDs1/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BottomsID bottomsID = db.BottomsIDs.Find(id);
            if (bottomsID == null)
            {
                return HttpNotFound();
            }
            return View(bottomsID);
        }

        // GET: BottomsIDs1/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: BottomsIDs1/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "BottomsID1,BottomsName,BottomsPhoto,BottomsType,BottomsColor,BottomsSeason,BottomsOccasion")] BottomsID bottomsID)
        {
            if (ModelState.IsValid)
            {
                db.BottomsIDs.Add(bottomsID);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(bottomsID);
        }

        // GET: BottomsIDs1/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BottomsID bottomsID = db.BottomsIDs.Find(id);
            if (bottomsID == null)
            {
                return HttpNotFound();
            }
            return View(bottomsID);
        }

        // POST: BottomsIDs1/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "BottomsID1,BottomsName,BottomsPhoto,BottomsType,BottomsColor,BottomsSeason,BottomsOccasion")] BottomsID bottomsID)
        {
            if (ModelState.IsValid)
            {
                db.Entry(bottomsID).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(bottomsID);
        }

        // GET: BottomsIDs1/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BottomsID bottomsID = db.BottomsIDs.Find(id);
            if (bottomsID == null)
            {
                return HttpNotFound();
            }
            return View(bottomsID);
        }

        // POST: BottomsIDs1/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            BottomsID bottomsID = db.BottomsIDs.Find(id);
            db.BottomsIDs.Remove(bottomsID);
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
