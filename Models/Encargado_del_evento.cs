//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Empresa_All_Stars_Control_Alquiler.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Encargado_del_evento
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Encargado_del_evento()
        {
            this.Alquiler_de_espacio = new HashSet<Alquiler_de_espacio>();
        }
    
        public int Encargado { get; set; }
        public string Nombre_encargado { get; set; }
        public int Telefono_contacto { get; set; }
        public string Correo_electronico { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Alquiler_de_espacio> Alquiler_de_espacio { get; set; }
    }
}
