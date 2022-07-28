using System;
using Excel;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IMS.Models;
using System.Data;
using ClosedXML.Excel;
using System.IO;
using System.Web.UI.WebControls;
using System.Drawing;

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
                    return RedirectToAction("Dashboard");
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
            var RoleMaster = db.tblRoleMasters.ToList().OrderByDescending(x => x.RoleId);
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
                    else if (db.tblVehicles.Any(x => x.VehicleNo.ToLower() == Vehicle.ToLower()))
                    {
                        objResponseMsg.Key = false;
                        objResponseMsg.Value = "Please Kindly Remove From Primary Project. ";
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
            else
            {
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
            else
            {
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
            if (objTgb != null)
            {
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
                var list = db.tblTGBuxars
                    .Where(x => x.ProjectId == ProjectId && x.IsActive == true)
                    .ToList()
                    .Select(x => new
                    {
                        DrawingNo = x.DrawingNo,
                        MarkNo = x.MarkNo,
                        Batch = x.Batch,
                        PartSerialNo = x.PartSerialNo,
                        UnitWT = x.UnitWT,
                        IsApprove = x.IsApprove,
                        VehicleNo = x.VehicleNo,
                        ApprovedBy = x.ApprovedBy,
                        ApprovedOn = Convert.ToString(x.ApprovedOn),
                    }).ToList();
                recordsTotal = list.Count();
                var data = list.Take(pageSize).ToList();
                return Json(new { recordsFiltered = recordsTotal, recordsTotal = recordsTotal, data = data }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        [HttpGet]
        [DeleteFileAttribute] //Action Filter, it will auto delete the file after download, 
        public ActionResult Download(string file)
        {
            string fullPath = Server.MapPath(file);

            return File(fullPath, "application/vnd.ms-excel", Path.GetFileName(fullPath));
        }


        [HttpPost]
        public ActionResult Upload(HttpPostedFileBase file)
        {
            var usersList = new List<tblTGBuxar>();
            int ProjectId = Convert.ToInt32(Request.Form["hdnProject"]);

            string _FileName = "";
            string _path = "";
            DataTable dt = null;
            DataTable dtCloned = null;
            List<string> lstdtLines = new List<string>();
            string UploadFilePath = "~/Resources/Projects";
            
            if (file == null)
            {
                return Json(new { Status = false, Msg = CommonMessages.NoFile.ToString() }, JsonRequestBehavior.AllowGet);
            }
            var fileExtension = System.IO.Path.GetExtension(file.FileName);

            if (fileExtension != ".xls" && fileExtension != ".xlsx")
            {
                return Json(new { Status = false, Msg = CommonMessages.UploadFormateMismatch.ToString() }, JsonRequestBehavior.AllowGet);
            }

            if (file.ContentLength > 0)
            {
                // Create a directory
                if (!Directory.Exists(Server.MapPath(UploadFilePath)))
                {
                    Directory.CreateDirectory(Server.MapPath(UploadFilePath));
                }
                _FileName = DateTime.Now.ToString("ddMMyyyyhhmmss") + Path.GetFileName(file.FileName);
                _path = Path.Combine(Server.MapPath(UploadFilePath), _FileName);
                file.SaveAs(_path);
            }
            else
            {
                return Json(new { Status = false, Msg = CommonMessages.NoFile.ToString() }, JsonRequestBehavior.AllowGet);
            }

            DataSet result;
            FileStream stream = System.IO.File.Open(_path, FileMode.Open, FileAccess.Read);
            IExcelDataReader excelReader;
            //1. Reading from a binary Excel file ('97-2003 format; *.xls)
            //IExcelDataReader excelReader = ExcelReaderFactory.CreateBinaryReader(stream);
            //...
            //2. Reading from a OpenXml Excel file (2007 format; *.xlsx)
            if (Path.GetExtension(_path).ToLower() == ".xlsx")
            {
                excelReader = ExcelReaderFactory.CreateOpenXmlReader(stream);
            }
            else
            {
                excelReader = ExcelReaderFactory.CreateBinaryReader(stream);
            }
            result = excelReader.AsDataSet();

            if (result != null && result.Tables.Count > 0)
            {
                lstdtLines.Add("DrawingNo");
                lstdtLines.Add("MarkNo");
                lstdtLines.Add("Batch");
                lstdtLines.Add("PartSerialNo");
                lstdtLines.Add("UnitWT");

                dt = result.Tables[0];

                #region Removing Unwanted blank rows and column

                dt = dt.Rows.Cast<DataRow>().Where(row => !row.ItemArray.All(field => field is DBNull || string.IsNullOrWhiteSpace(field as string))).CopyToDataTable();

                for (int i = 0; i < dt.Columns.Count; i++)
                {
                    if (dt.Columns.Contains("UnitWT"))
                    {
                        int indexValue = dt.Columns["UnitWT"].Ordinal;
                        for (int k = dt.Columns.Count; k > (indexValue + 1); k--)
                        {
                            dt.Columns.RemoveAt(i);
                        }
                    }
                    else
                    {
                        dt.Columns[i].ColumnName = dt.Rows[0][i].ToString().Replace("*", "").Trim();
                    }
                }

                #endregion

                dtCloned = dt.Clone();

                for (int i = 0; i < dt.Columns.Count; i++)
                {
                    dtCloned.Columns[i].DataType = typeof(string);
                }

                foreach (DataRow row in dt.Rows)
                {
                    dtCloned.ImportRow(row);
                }
            }

            if (dt.Rows.Count >= 1)
            {
                dtCloned.Rows.RemoveAt(0);
                var listColumns = dtCloned.Columns.Cast<DataColumn>().Select(x => x.ColumnName).ToList();

                if (lstdtLines.Where(i => !listColumns.Contains(i)).Any())
                {
                    return Json(new { Status = false, Msg = CommonMessages.UploadFormateMismatch.ToString() }, JsonRequestBehavior.AllowGet);
                }

                foreach (string dc in listColumns)
                {
                    if (!lstdtLines.Any(i => dc.ToLower() == i.ToLower()))
                    {
                        dtCloned.Columns.Remove(dc);
                        dtCloned.AcceptChanges();
                    }
                }

                if (!dtCloned.Columns.Contains("Error"))
                {
                    dtCloned.Columns.Add("Error", typeof(string));
                }
            }

            // File Delete
            if (System.IO.File.Exists(_path))
            {
                System.IO.File.Delete(_path);
            }

            List<string> errmsg = new List<string>();
            if (dtCloned != null && dtCloned.Rows.Count > 0)
            {
                string DocumentMsg = "";
                var Newdt = AddImportedData(dtCloned, objClsLoginInfo.UserName, out errmsg, ProjectId, out DocumentMsg);


                string FileName = UploadFilePath + "_IMS_" + DateTime.Now.Ticks + ".xlsx";
                List<string> lstError = new List<string>();
                GridView _GridView = new GridView();

                _GridView.AllowPaging = false;
                _GridView.DataSource = Newdt;
                _GridView.DataBind();

                for (int i = 0; i < _GridView.Rows.Count; i++)
                {
                    var listError = Newdt.Rows[i]["Error"].ToString().Split('|').Where(x => !string.IsNullOrEmpty(x)).ToList();
                    if (listError != null && listError.Count > 0)
                    {
                        var ErrorReplaceText = string.Empty;
                        for (int k = 0; k < listError.Count; k++)
                        {
                            var error = listError[k].Trim();
                            var ColumnName = listError[k].Trim().Split(' ')[0];

                            for (int j = 0; j <= (_GridView.HeaderRow.Cells.Count - 1); j++)
                            {
                                if (_GridView.HeaderRow.Cells[j].Text.ToLower() == ColumnName.ToLower() ||
                                    _GridView.HeaderRow.Cells[j].Text.ToLower() == ColumnName.ToLower() ||
                                    _GridView.HeaderRow.Cells[j].Text.ToLower() == ColumnName.ToLower())
                                {
                                    _GridView.Rows[i].Cells[j].BackColor = Color.Red;
                                    lstError.Add(error);
                                }
                                else if (ColumnName == "Record")
                                    lstError.Add(error);
                            }
                        }
                    }
                }
                if (lstError != null && lstError.Count > 0)
                {
                    using (ClosedXML.Excel.XLWorkbook workbook = new ClosedXML.Excel.XLWorkbook())
                    {
                        var ws = workbook.Worksheets.Add("Sheet1");
                        for (int l = 0; l < _GridView.HeaderRow.Cells.Count; l++)
                        {
                            ws.Cell(1, l + 1).Value = _GridView.HeaderRow.Cells[l].Text.ToLower() == "error" ? "System Info" : _GridView.HeaderRow.Cells[l].Text;
                            ws.Cell(1, l + 1).Style.Font.Bold = true;
                        }

                        for (int k = 0; k < _GridView.Rows.Count; k++)
                        {
                            for (int i = 0; i < _GridView.Rows[k].Cells.Count; i++)
                            {
                                ws.Cell(k + 2, i + 1).SetValue<string>(_GridView.Rows[k].Cells[i].Text == "&nbsp;" ? "" : _GridView.Rows[k].Cells[i].Text);

                                if (_GridView.Rows[k].Cells[i].BackColor.ToString() != "Color [Empty]")
                                {
                                    ws.Cell(k + 2, i + 1).Style.Fill.BackgroundColor = ClosedXML.Excel.XLColor.Red;
                                }
                            }
                        }
                        workbook.SaveAs(Server.MapPath(FileName));
                    }
                    return Json(new { Status = false, Msg = CommonMessages.ExcelWithError.ToString(), File = FileName }, JsonRequestBehavior.AllowGet);
                }

                if (errmsg != null && errmsg.Count > 0)
                {
                    return Json(new { Status = false, Msg = DocumentMsg + "<br/>" + string.Join("<br/>", errmsg), IsSwal = false }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    if (!string.IsNullOrEmpty(DocumentMsg))
                        return Json(new { Status = true, Msg = DocumentMsg, IsSwal = true }, JsonRequestBehavior.AllowGet);
                    else
                        return Json(new { Status = true, Msg = "File uploaded successfully", IsSwal = true }, JsonRequestBehavior.AllowGet);
                }
            }
            else
            {
                return Json(new { Status = false, Msg = "Data not found in excel file", IsSwal = false }, JsonRequestBehavior.AllowGet);
            }

        }

        [HttpPost]
        public FileResult Export(FormCollection formCollection)
        {
            int ProjectId = Convert.ToInt32(formCollection["hdnProject"]);
            DataTable dt = new DataTable("Grid");
            dt.Columns.AddRange(new DataColumn[9] { new DataColumn("Drawing No"), new DataColumn("Mark No"), new DataColumn("Batch")
                , new DataColumn("Part Serial No"), new DataColumn("UnitWT"), new DataColumn("Is Loaded"), new DataColumn("Vehicle No")
                , new DataColumn("Load Date"), new DataColumn("Approved By")});

            var list = db.tblTGBuxars.Where(x => x.ProjectId == ProjectId && x.IsActive == true).ToList();

            foreach (var item in list)
            {
                dt.Rows.Add(item.DrawingNo, item.MarkNo, item.Batch, item.PartSerialNo, item.UnitWT, item.IsApprove == true ? "Yes" : "No", item.VehicleNo, Convert.ToString(item.ApprovedOn), item.ApprovedBy);
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
            //ViewBag.Projects = db.tblProjects.Count();
            //ViewBag.Vehicles = db.tblVehicles.Count();
            return View(Countlst);
        }

        #endregion

        #region Methods

        public DataTable AddImportedData(DataTable dt, string PsNo, out List<string> errorStrMsg, int projectID, out string MSG)
        {
            MSG = "";
            errorStrMsg = new List<string>();
            
            try
            {
                string DrawingNo = null, MarkNo = null, Batch = null, PartSerialNo = null, UnitWT = null;

                bool flag = false;

                #region Validation

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (dt.Rows[i]["DrawingNo"].ToString() != null && (!string.IsNullOrEmpty(dt.Rows[i]["DrawingNo"].ToString())))
                    {
                        DrawingNo = dt.Rows[i]["DrawingNo"].ToString();
                    }
                    else
                    {
                        errorStrMsg.Add("DrawingNo is required");
                        dt.Rows[i]["Error"] += "DrawingNo is required | ";
                        flag = true;
                    }

                    if (dt.Rows[i]["MarkNo"].ToString() != null && (!string.IsNullOrEmpty(dt.Rows[i]["MarkNo"].ToString())))
                    {
                        MarkNo = dt.Rows[i]["MarkNo"].ToString();
                    }
                    else
                    {
                        errorStrMsg.Add("MarkNo is required");
                        dt.Rows[i]["Error"] += "MarkNo is required | ";
                        flag = true;
                    }

                    if (dt.Rows[i]["Batch"].ToString() != null && (!string.IsNullOrEmpty(dt.Rows[i]["Batch"].ToString())))
                    {
                        Batch = dt.Rows[i]["Batch"].ToString();
                    }
                    else
                    {
                        errorStrMsg.Add("Batch is required");
                        dt.Rows[i]["Error"] += "Batch is required | ";
                        flag = true;
                    }

                    if (dt.Rows[i]["PartSerialNo"].ToString() != null && (!string.IsNullOrEmpty(dt.Rows[i]["PartSerialNo"].ToString())))
                    {
                        PartSerialNo = dt.Rows[i]["PartSerialNo"].ToString();
                    }
                    else
                    {
                        errorStrMsg.Add("PartSerialNo is required");
                        dt.Rows[i]["Error"] += "PartSerialNo is required | ";
                        flag = true;
                    }

                    if (dt.Rows[i]["UnitWT"].ToString() != null && (!string.IsNullOrEmpty(dt.Rows[i]["UnitWT"].ToString())))
                    {
                        UnitWT = dt.Rows[i]["UnitWT"].ToString();
                    }
                    else
                    {
                        errorStrMsg.Add("UnitWT is required");
                        dt.Rows[i]["Error"] += "UnitWT is required | ";
                        flag = true;
                    }

                }

                #endregion

                if (!flag)
                {
                    List<tblTGBuxar> usersList = new List<tblTGBuxar>();

                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        tblTGBuxar _tg = new tblTGBuxar();

                        _tg.DrawingNo = DrawingNo;
                        _tg.MarkNo = MarkNo;
                        _tg.Batch = Batch;
                        _tg.PartSerialNo = PartSerialNo;
                        _tg.UnitWT = UnitWT;
                        _tg.IsActive = true;
                        _tg.ProjectId = projectID;
                        _tg.CreatedBy = objClsLoginInfo.UserName;
                        _tg.CreatedOn = DateTime.Now;
                        usersList.Add(_tg);
                    }

                    if (usersList.Count >= 0)
                    {
                        List<tblTGBuxar> data = db.tblTGBuxars.Where(x => x.ProjectId == projectID).ToList();
                        if (data.Count > 0)
                        {
                            data.ForEach(a => a.IsActive = false);
                        }
                        db.tblTGBuxars.AddRange(usersList);
                        db.SaveChanges();
                    }
                }


                return dt;
            }
            catch (Exception ex)
            {
                errorStrMsg.Add("Something went wrong");
                MSG = "Something went wrong";
                return new DataTable();
            }
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

    public static class CommonMessages
    {
        public const string NoFile = "Please select file first";
        public const string NoValidFile = "Please upload valid excel file";
        public const string UploadFormateMismatch = "Your File format is not match with template";
        public const string ExcelWithError = "Excel has some error, please check";
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

