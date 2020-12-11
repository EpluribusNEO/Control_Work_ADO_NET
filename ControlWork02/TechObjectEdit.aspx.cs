using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlWork02
{
    public partial class TechObjectEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Guid id = new Guid(Request.Params["TechObjectID"]);
                TechObject techObject = MyModel.FindTechObjByID(id);
                Name.Text           = techObject.Name;
                ProductionDate.Text = techObject.ProductionDate;
                ShippingDate.Text   = techObject.ShippingDate;
                WarrantyPeriod.Text = techObject.WarrantyPeriod.ToString();
                Session["TechObjectID"] = id;
                MaintenanceWorksTable.DataSource = MyModel.GetListMaintWorksForTechObj(id);
                MaintenanceWorksTable.DataBind();
            }
        }

        protected void EditTechObject_Click(object sender, EventArgs e)
        {
            Guid id = (Guid)Session["TechObjectID"];
            MyModel.ChangeTechObj(id, Name.Text.Trim(), ProductionDate.Text.Trim(), 
                                  ShippingDate.Text.Trim(),
                                  Convert.ToInt32(WarrantyPeriod.Text.Trim()));

            Response.Redirect("TechObjectEdit.aspx?TechObjectID=" + id.ToString());
        }

        protected void AddMaintenanceWorks_Click(object sender, EventArgs e)
        {
            Guid id = (Guid)Session["TechObjectID"];
            MaintenanceWorks maintenance = new MaintenanceWorks(
                Type.Text.Trim(), WorkshipDate.Text.Trim(), 
                WorkshipTime.Text.Trim(), 
                Convert.ToInt32(EngineerID.Text.Trim())
            );

            MyModel.AddMaintenanceWork(id, maintenance);
            Response.Redirect("TechObjectEdit.aspx?TechObjectID=" + id.ToString());
        }
    }

}