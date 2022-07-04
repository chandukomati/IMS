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

namespace IMS.Controllers
{
    public class HomeController : clsBase
    {
        ImsDBEntities db = new ImsDBEntities();

        #region Login

        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(tblRoleMaster objUser)
        {
            _objclsLoginInfo = new clsLoginInfo();
            if (ModelState.IsValid)
            {
                var obj = db.tblRoleMasters.Where(a => a.UserName.Equals(objUser.UserName) && a.Password.Equals(objUser.Password)).FirstOrDefault();
                if (obj != null)
                {
                    objClsLoginInfo.Name = obj.Name;
                    objClsLoginInfo.UserName = obj.UserName;
                    objClsLoginInfo.RoleName = GetRole(obj.UserName);
                    Session[clsEnum.Session.LoginInfo] = objClsLoginInfo;
                    return RedirectToAction("Index");
                }
            }
            return View(objUser);
        }

        public string GetRole(string UserName)
        {
            string Role = clsImplementationEnum.RoleType.PMG.GetStringValue();
            try
            {
                var strrole = db.tblRoleMasters.Where(x => x.UserName.ToLower() == UserName.ToLower()).Select(x => x.Role).FirstOrDefault();
                if (strrole != null)
                    Role = strrole;
            }
            catch (Exception)
            {
                throw;
            }
            return Role;
        }

        public ActionResult Logout()
        {
            Session.Abandon();
            return Redirect("Login");
        }

        #endregion

        #region Role

        [SessionExpireFilter]
        public ActionResult RoleMaster()
        {
            ViewBag.Roles = new string[] { clsImplementationEnum.RoleType.PMG.GetStringValue(), clsImplementationEnum.RoleType.LOG.GetStringValue() };
            var RoleMaster = db.tblRoleMasters.ToList().OrderByDescending(x=>x.RoleId);
            return View(RoleMaster);
        }

        [HttpPost]
        public ActionResult AddRole(int RoleId, string Role, string Name, string Username)
        {
            ResponseMsg objResponseMsg = new ResponseMsg();
            tblRoleMaster objRoleMaster = null;
            try
            {
                objRoleMaster = db.tblRoleMasters.Where(x => x.RoleId == RoleId).FirstOrDefault();

                if (objRoleMaster != null)
                {
                    objRoleMaster.Role = Role;
                    objRoleMaster.Name = Name;
                    objRoleMaster.UserName = Username;
                    objRoleMaster.IsActive = objRoleMaster.IsActive;

                    objRoleMaster.EditedBy = objClsLoginInfo.UserName;
                    objRoleMaster.EditedOn = DateTime.Now;

                    objResponseMsg.Value = "Successfully Updated";
                }
                else
                {
                    if (db.tblRoleMasters.Any(x => x.UserName.ToLower() == Username.ToLower()))
                    {
                        objResponseMsg.Key = false;
                        objResponseMsg.Value = "User Already Exit!";
                        return Json(objResponseMsg, JsonRequestBehavior.AllowGet);
                    }

                    objRoleMaster = new tblRoleMaster();
                    objRoleMaster.Role = Role;
                    objRoleMaster.Name = Name;
                    objRoleMaster.UserName = Username;
                    objRoleMaster.Password = Role;
                    objRoleMaster.IsActive = true;

                    objRoleMaster.CreatedBy = objClsLoginInfo.UserName;
                    objRoleMaster.CreatedOn = DateTime.Now;

                    db.tblRoleMasters.Add(objRoleMaster);
                    //db.SaveChanges();
                    objResponseMsg.Value = "Successfully Saved";
                }
                db.SaveChanges();

                objResponseMsg.Key = true;
                return Json(objResponseMsg, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                objResponseMsg.Key = false;
                objResponseMsg.Value = ex.Message.ToString();
                return Json(objResponseMsg, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult GetRoleDetails(int RoleId)
        {
            RoleResponseMsg objresponse = new RoleResponseMsg();
            objresponse.Key = false;
            var roledata = db.tblRoleMasters.Where(x => x.RoleId == RoleId).FirstOrDefault();
            if (roledata != null)
            {
                objresponse.Key = true;
                objresponse.data = roledata;
            }
            return Json(objresponse, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteRole(int RID)
        {
            ResponseMsg objResponseMsg = new ResponseMsg();
            objResponseMsg.Key = false;
            var data = db.tblRoleMasters.Where(x => x.RoleId == RID).FirstOrDefault();
            if (data != null)
            {
                db.tblRoleMasters.Remove(data);
                db.SaveChanges();
                objResponseMsg.Key = true;
                objResponseMsg.Value = "Successfully Deleted";
            }
            else
            {
                objResponseMsg.Value = "Record Not Found.";
            }

            return Json(objResponseMsg, JsonRequestBehavior.AllowGet);
        }


        #endregion

        #region Project

        [SessionExpireFilter]
        public ActionResult Index()
        {
            var lstProjects = db.tblProjects.ToList().OrderBy(x => x.ID);
            return View(lstProjects);
        }

        [HttpPost]
        public ActionResult AddProject(int ID, string Project)
        {
            ResponseMsg objResponseMsg = new ResponseMsg();
            tblProject objProjects = null;
            try
            {
                objProjects = db.tblProjects.Where(x => x.ID == ID).FirstOrDefault();

                if (objProjects != null)
                {
                    objProjects.Project = Project;
                    objProjects.EditedBy = objClsLoginInfo.UserName;
                    objProjects.EditedOn = DateTime.Now;

                    objResponseMsg.Value = "Successfully Updated";
                }
                else
                {
                    if (db.tblProjects.Any(x => x.Project.ToLower() == Project.ToLower()))
                    {
                        objResponseMsg.Key = false;
                        objResponseMsg.Value = "Project Already Exit!";
                        return Json(objResponseMsg, JsonRequestBehavior.AllowGet);
                    }

                    objProjects = new tblProject();
                    objProjects.Project = Project;
                    objProjects.CreatedBy = objClsLoginInfo.UserName;
                    objProjects.CreatedOn = DateTime.Now;

                    db.tblProjects.Add(objProjects);

                    objResponseMsg.Value = "Successfully Saved";
                }
                db.SaveChanges();

                objResponseMsg.Key = true;
                return Json(objResponseMsg, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                objResponseMsg.Key = false;
                objResponseMsg.Value = ex.Message.ToString();
                return Json(objResponseMsg, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult GetProjectDetails(int ID)
        {
            ProjectResponseMsg objresponse = new ProjectResponseMsg();
            objresponse.Key = false;
            var data = db.tblProjects.Where(x => x.ID == ID).FirstOrDefault();
            if (data != null)
            {
                objresponse.Key = true;
                objresponse.data = data;
            }
            return Json(objresponse, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteProject(int PID)
        {
            ResponseMsg objResponseMsg = new ResponseMsg();
            objResponseMsg.Key = false;
            var data = db.tblProjects.Where(x => x.ID == PID).FirstOrDefault();
            if (data != null)
            {
                var lstTGB = db.tblTGBuxars.Where(x => x.ProjectId == data.ID).ToList();
                if (lstTGB.Count > 0)
                {
                    db.tblTGBuxars.RemoveRange(lstTGB);
                }
                var lstVehicles = db.tblVehicles.Where(x => x.ProjectID == data.ID).ToList();
                if (lstVehicles.Count > 0)
                {
                    db.tblVehicles.RemoveRange(lstVehicles);
                }
                db.tblProjects.Remove(data);
                db.SaveChanges();
                objResponseMsg.Key = true;
                objResponseMsg.Value = "Successfully Deleted";
            }
            else
            {
                objResponseMsg.Value = "Record Not Found.";
            }

            return Json(objResponseMsg, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Vehicle


        [HttpPost]
        public ActionResult AddVehicle(int VID, int PID, string Vehicle)
        {
            ResponseMsg objResponseMsg = new ResponseMsg();
            tblVehicle objVehicles = null;
            try
            {
                objVehicles = db.tblVehicles.Where(x => x.VehicleID == VID).FirstOrDefault();

                if (objVehicles != null)
                {
                    objVehicles.ProjectID = PID;
                    objVehicles.VehicleNo = Vehicle;
                    objVehicles.EditedBy = objClsLoginInfo.UserName;
                    objVehicles.EditedOn = DateTime.Now;

                    objResponseMsg.Value = "Successfully Updated";
                }
                else
                {
                    if (db.tblVehicles.Any(x => x.ProjectID == PID && x.VehicleNo.ToLower() == Vehicle.ToLower()))
                    {
                        objResponseMsg.Key = false;
                        objResponseMsg.Value = "Vehicle Already Exit!";
                        return Json(objResponseMsg, JsonRequestBehavior.AllowGet);
                    }

                    objVehicles = new tblVehicle();
                    objVehicles.ProjectID = PID;
                    objVehicles.VehicleNo = Vehicle;
                    objVehicles.Status = clsImplementationEnum.VehicleStatus.Pending.GetStringValue();
                    objVehicles.CreatedBy = objClsLoginInfo.UserName;
                    objVehicles.CreatedOn = DateTime.Now;

                    db.tblVehicles.Add(objVehicles);

                    objResponseMsg.Value = "Successfully Saved";
                }
                db.SaveChanges();

                objResponseMsg.Key = true;
                return Json(objResponseMsg, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                objResponseMsg.Key = false;
                objResponseMsg.Value = ex.Message.ToString();
                return Json(objResponseMsg, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult GetVehicleDetails(int ID)
        {
            VehicleResponseMsg objresponse = new VehicleResponseMsg();
            objresponse.Key = false;
            var data = db.tblVehicles.Where(x => x.VehicleID == ID).FirstOrDefault();
            if (data != null)
            {
                objresponse.Key = true;
                objresponse.data = data;
            }
            return Json(objresponse, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteVehicle(int VID)
        {
            ResponseMsg objResponseMsg = new ResponseMsg();
            objResponseMsg.Key = false;
            var data = db.tblVehicles.Where(x => x.VehicleID == VID).FirstOrDefault();
            if (data != null)
            {
                db.tblVehicles.Remove(data);
                db.SaveChanges();
                objResponseMsg.Key = true;
                objResponseMsg.Value = "Successfully Deleted";
            }
            else {
                objResponseMsg.Value = "Record Not Found.";
            }

            return Json(objResponseMsg, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult DisplyVehicleDetails(int PID)
        {
            ResponseMsg objresponse = new ResponseMsg();
            objresponse.Key = false;
            var data = db.tblVehicles.Where(x => x.ProjectID == PID).ToList();
            if (data != null)
            {
                objresponse.Key = true;
            }
            else {
                objresponse.Key = false;
                data = new List<tblVehicle>();
            }
            return PartialView("_ListVehicles", data);
        }

        #endregion

        #region Grid Data

        [SessionExpireFilter]
        public ActionResult ShowGrid(int ProjectId)
        {
            ViewBag.Project = ProjectId;
            var objTgb = db.tblTGBuxars.Where(x => x.ProjectId == ProjectId && x.IsActive == true).FirstOrDefault();
            ViewBag.datetime = string.Empty;
            if (objTgb != null) {
                ViewBag.datetime = objTgb.CreatedOn.ToString();
            }
            return View();
        }

        public ActionResult LoadGrid(int ProjectId)
        {
            try
            {
                var length = 1000;
                int pageSize = Convert.ToInt32(length);
                int recordsTotal = 0;
                var list = db.tblTGBuxars.Where(x => x.ProjectId == ProjectId && x.IsActive == true).ToList();
                recordsTotal = list.Count();
                var data = list.Take(pageSize).ToList();
                return Json(new { recordsFiltered = recordsTotal, recordsTotal = recordsTotal, data = data }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public ActionResult Upload(FormCollection formCollection)
        {
            var usersList = new List<tblTGBuxar>();
            int ProjectId = Convert.ToInt32(formCollection["hdnProject"]);
            if (Request != null)
            {
                HttpPostedFileBase file = Request.Files["UploadedFile"];

                if ((file != null) && (file.ContentLength > 0) && !string.IsNullOrEmpty(file.FileName))
                {
                    string fileName = file.FileName;
                    string fileContentType = file.ContentType;
                    byte[] fileBytes = new byte[file.ContentLength];
                    ExcelPackage.LicenseContext = LicenseContext.NonCommercial;
                    var data = file.InputStream.Read(fileBytes, 0, Convert.ToInt32(file.ContentLength));
                    using (var package = new ExcelPackage(file.InputStream))
                    {
                        var currentSheet = package.Workbook.Worksheets;
                        var workSheet = currentSheet.First();
                        var noOfCol = workSheet.Dimension.End.Column;
                        var noOfRow = workSheet.Dimension.End.Row;
                        for (int rowIterator = 2; rowIterator <= noOfRow; rowIterator++)
                        {
                            var tgb = new tblTGBuxar();
                            tgb.DrawingNo = workSheet.Cells[rowIterator, 1].Value.ToString();
                            tgb.MarkNo = workSheet.Cells[rowIterator, 2].Value.ToString();
                            tgb.Batch = workSheet.Cells[rowIterator, 3].Value.ToString();
                            tgb.PartSerialNo = workSheet.Cells[rowIterator, 4].Value.ToString();
                            tgb.UnitWT = workSheet.Cells[rowIterator, 5].Value.ToString();
                            tgb.IsActive = true;
                            tgb.ProjectId = ProjectId;
                            tgb.CreatedBy = objClsLoginInfo.UserName;
                            tgb.CreatedOn = DateTime.Now;
                            usersList.Add(tgb);
                        }
                    }
                }
            }

            if (usersList.Count >= 0)
            {
                List<tblTGBuxar> data = db.tblTGBuxars.Where(x => x.ProjectId == ProjectId).ToList();
                if (data.Count > 0)
                { 
                    data.ForEach(a => a.IsActive = false);
                }
                db.tblTGBuxars.AddRange(usersList);
                db.SaveChanges();
            }
            return RedirectToAction("ShowGrid", new { ProjectId = ProjectId });
        }

        [HttpPost]
        public FileResult Export(FormCollection formCollection)
        {
            int ProjectId = Convert.ToInt32(formCollection["hdnProject"]);
            DataTable dt = new DataTable("Grid");
            dt.Columns.AddRange(new DataColumn[7] { new DataColumn("DrawingNo"), new DataColumn("MarkNo"), new DataColumn("Batch"), new DataColumn("PartSerialNo"), new DataColumn("UnitWT"), new DataColumn("IsLoaded"), new DataColumn("VehicleNo") });

            var list = db.tblTGBuxars.Where(x => x.ProjectId == ProjectId && x.IsActive == true).ToList();

            foreach (var item in list)
            {
                dt.Rows.Add(item.DrawingNo, item.MarkNo, item.Batch, item.PartSerialNo, item.UnitWT, item.IsApprove==true?"Yes":"No", item.VehicleNo);
            }

            using (XLWorkbook wb = new XLWorkbook())
            {
                wb.Worksheets.Add(dt);
                using (MemoryStream stream = new MemoryStream())
                {
                    wb.SaveAs(stream);
                    return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "Grid.xlsx");
                }
            }
        }

        #endregion

        #region Dashboard

        [SessionExpireFilter]
        public ActionResult Dashboard()
        {
            var Countlst = db.GetProjectItemCount().ToList();
            ViewBag.Projects = db.tblProjects.Count();
            ViewBag.Vehicles = db.tblVehicles.Count();
            return View(Countlst);
        }

        #endregion
    }

    #region Classes

    public class RoleResponseMsg
    {
        public RoleResponseMsg()
        {
            new tblRoleMaster();
        }
        public bool Key;
        public tblRoleMaster data;
    }

    public class ProjectResponseMsg
    {
        public ProjectResponseMsg()
        {
            new tblProject();
        }
        public bool Key;
        public tblProject data;
    }

    public class VehicleResponseMsg
    {
        public VehicleResponseMsg()
        {
            new tblProject();
        }
        public bool Key;
        public tblVehicle data;
    }

    public class ResponseMsg
    {
        public bool Key;
        public string Value;
        public object Data;

        public static implicit operator ResponseMsg(string v)
        {
            throw new NotImplementedException();
        }
        public ResponseMsg(string message, bool isSuccess = false, object data = null)
        {
            Key = isSuccess;
            Value = message;
            Data = data;
        }
        public ResponseMsg()
        {
        }
    }

    #endregion
}