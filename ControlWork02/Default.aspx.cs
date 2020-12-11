using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlWork02
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TechObjectTable.DataSource = MyModel.GetTechObjectsList();
                TechObjectTable.DataBind();
            }
        }

        protected void AddTechObject_Click(object sender, EventArgs e)
        {
            MyModel.AddNewTechObject(Name.Text.Trim(), ProductionDate.Text.Trim(), 
                ShippingDate.Text.Trim(), Convert.ToInt32(WarrantyPeriod.Text.Trim()));
            Response.Redirect("/");
        }
    }
}