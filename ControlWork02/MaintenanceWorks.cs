//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ControlWork02
{
    using System;
    using System.Collections.Generic;
    
    public partial class MaintenanceWorks
    {
        public System.Guid Id { get; set; }
        public string Type { get; set; }
        public string WorkshipDate { get; set; }
        public string WorkshipTime { get; set; }
        public int EngineerID { get; set; }
    
        public virtual TechObject TechObject { get; set; }


        public MaintenanceWorks() { }

        public MaintenanceWorks(string type, string workshipDate,
                                string workshipTime, int engineerID)
        {
            this.Id = Guid.NewGuid();
            this.Type = type;
            this.WorkshipDate = workshipDate;
            this.WorkshipTime = workshipDate;
            this.EngineerID = engineerID;
        }
    }
}
