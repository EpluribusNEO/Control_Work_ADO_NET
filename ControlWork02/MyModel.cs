using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ControlWork02
{
    public static class MyModel
    {
        private static EModelContainer model = new EModelContainer();

        public static List<TechObject> GetTechObjectsList()
        {
            List<TechObject> techObjectsList;
            techObjectsList = (from techObj in model.TechObjectSet
                               select techObj).OrderBy(t => t.ProductionDate).ToList();

            return techObjectsList;
        }

        public static void AddNewTechObject(string name, string productionDate,
                                            string shippingDate, int warrantyPeriod)
        {
            TechObject techObject = new TechObject(name,productionDate, 
                                                    shippingDate, warrantyPeriod);

            model.TechObjectSet.Add(techObject);
            model.SaveChanges();
        }

        public static TechObject FindTechObjByID(Guid id)
        {
            TechObject techObject = (from t in model.TechObjectSet
                                     where t.Id == id
                                     select t).First();
            return techObject;
        }

        public static List<MaintenanceWorks> GetListMaintWorksForTechObj(Guid id)
        {
            List<MaintenanceWorks> resultList = (from mw in model.MaintenanceWorksSet
                                                 where mw.TechObject.Id == id
                                                 select mw).OrderBy(m => m.WorkshipDate).ToList();
            return resultList;
        }

        public static void ChangeTechObj(Guid id, string name, string productionDate,
                                         string shippingDate, int warrantyPeriod)
        {
            TechObject techObject = FindTechObjByID(id);

            techObject.Name = name;
            techObject.ProductionDate = productionDate;
            techObject.ShippingDate = shippingDate;
            techObject.WarrantyPeriod = warrantyPeriod;

            model.SaveChanges();
        }

        public static void AddMaintenanceWork(Guid idTechObj, MaintenanceWorks maintenanceWorks)
        {
            TechObject techObject = FindTechObjByID(idTechObj);
            techObject.MaintenanceWorks.Add(maintenanceWorks);
            model.SaveChanges();
        }
    }
}
