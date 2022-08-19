using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IMS.Models;
using System.Data;
using ClosedXML.Excel;
using System.IO;
using Newtonsoft.Json;

namespace IMS.Controllers
{
    public class ScanQRCodeController : clsBase
    {
        ImsDBEntities db = new ImsDBEntities();
        // GET: ScanQRCode
        [SessionExpireFilter]
        public ActionResult Index()
        {
            ViewBag.Project = db.tblProjects.Select(x => x.Project).ToList(); 
            List<string> VehicleNo = new List<string>();
            ViewBag.VehicleNo = VehicleNo;
            return View();
        }

        #region Grid Data

        [SessionExpireFilter]
        public ActionResult OpenQRScanner(string Project, string VehicleNo)
        {
            ViewBag.Project = Project;
            ViewBag.VehicleNo = VehicleNo;
            return View();
        }

        [SessionExpireFilter]
        public ActionResult QRCodeResult(string Proj, string VNo, string text)
        {
            ViewBag.Project = db.tblProjects.Select(x => x.Project).ToList();
            var objProject = db.tblProjects.Where(x => x.Project == Proj).FirstOrDefault();
            if (objProject != null)
            {
                var ProjectID = objProject.ID;
                ViewBag.VehicleNo = db.tblVehicles.Where(x => x.ProjectID == ProjectID).Select(x => x.VehicleNo).ToList();
            }
            else {
                List<string> VehicleNo = new List<string>();
                ViewBag.VehicleNo = VehicleNo;
            }
            ViewBag.Proj = Proj;
            ViewBag.VNo = VNo;
            ViewBag.Item = text;
            return View("Index");
        }

        [HttpPost]
        public JsonResult GetProjectItemDetails(string Project ,string Item)
        {
            ItemResponseMsg objresponse = new ItemResponseMsg();
            objresponse.Key = false;
            var projData = db.tblProjects.Where(x => x.Project == Project).FirstOrDefault();
            if (projData != null)
            {
                int projID = projData.ID;
                var batch = Item;
                var ItemData = db.tblTGBuxars.Where(x => x.ProjectId == projID && x.Batch == batch).FirstOrDefault();
                objresponse.Key = true;
                objresponse.data = ItemData;
            }
            return Json(objresponse, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult LoadProjectItemDetails(string markNo, string batch, string vehicleNo)
        {
            ItemResponseMsg objresponse = new ItemResponseMsg();
            objresponse.Key = false;
            var ItemData = db.tblTGBuxars.Where(x => x.MarkNo == markNo && x.Batch == batch).FirstOrDefault();
            if (ItemData != null)
            {
                ItemData.IsApprove = true;
                ItemData.VehicleNo = vehicleNo;
                ItemData.ApprovedOn = DateTime.Now;
                ItemData.ApprovedBy = objClsLoginInfo.UserName;
                db.SaveChanges();

                objresponse.Key = true;
                objresponse.data = ItemData;
            }
            return Json(objresponse, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult GetVehicleByProject(string Project)
        {
            VehicleResponseMsg objresponse = new VehicleResponseMsg();
            objresponse.Key = false;
            var objProject = db.tblProjects.Where(x => x.Project == Project).FirstOrDefault();
            if (objProject != null)
            {
                var ProjectID = objProject.ID;
                var Data = db.tblVehicles.Where(x => x.ProjectID == ProjectID).ToList();
                objresponse.Key = true;
                objresponse.data = Data; 
            }
            return Json(objresponse, JsonRequestBehavior.AllowGet);
        }

        public class ItemResponseMsg
        {
            public ItemResponseMsg()
            {
                new tblTGBuxar();
            }
            public bool Key;
            public tblTGBuxar data;
        }

        public class VehicleResponseMsg
        {
            public VehicleResponseMsg()
            {
                new tblVehicle();
            }
            public bool Key;
            public List<tblVehicle> data;
        }

        #endregion

        #region Only Scan Item
        
        [SessionExpireFilter]
        public ActionResult ItemScanner()
        {
            return View();
        }

        [SessionExpireFilter]
        public ActionResult ItemQRCodeResult(string text)
        {
            ViewBag.Item = text;
            return View("ItemScanner");
        }

        [HttpPost]
        public JsonResult GetItemDetails(string Item)
        {
            ItemResponseMsg objresponse = new ItemResponseMsg();
            objresponse.Key = false;
            var ItemData = db.tblTGBuxars.Where(x => x.Batch == Item).FirstOrDefault();
            objresponse.Key = true;
            objresponse.data = ItemData;
            return Json(objresponse, JsonRequestBehavior.AllowGet);
        }

        #endregion
    }
}