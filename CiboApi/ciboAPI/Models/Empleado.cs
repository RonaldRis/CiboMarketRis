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
    
    public partial class Empleado
    {
        public int id_empleado { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string direccion { get; set; }
        public string numTelefono { get; set; }
        public string correo { get; set; }
        public string username { get; set; }
        public int id_Restaurante { get; set; }
    
        public virtual restaurante restaurante { get; set; }
    }
}