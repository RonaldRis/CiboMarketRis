//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ciboAPI.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class restaurante
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public restaurante()
        {
            this.CategoriasProductos = new HashSet<CategoriasProductos>();
            this.DireccionRestaurante = new HashSet<DireccionRestaurante>();
            this.Empleado = new HashSet<Empleado>();
        }
    
        public int id_Restaurante { get; set; }
        public string nombre { get; set; }
        public Nullable<float> rating { get; set; }
        public string descripcion { get; set; }
        public int id_ImagenLogo { get; set; }
        public int id_imgLayer { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CategoriasProductos> CategoriasProductos { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DireccionRestaurante> DireccionRestaurante { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Empleado> Empleado { get; set; }
        public virtual Imagenes Imagenes { get; set; }
        public virtual Imagenes Imagenes1 { get; set; }
    }
}
