﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class CiboMarketDBEntities : DbContext
    {
        public CiboMarketDBEntities()
            : base("name=CiboMarketDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<CategoriasProductos> CategoriasProductos { get; set; }
        public virtual DbSet<DireccionCliente> DireccionCliente { get; set; }
        public virtual DbSet<DireccionRestaurante> DireccionRestaurante { get; set; }
        public virtual DbSet<Empleado> Empleado { get; set; }
        public virtual DbSet<pedidos> pedidos { get; set; }
        public virtual DbSet<platillos> platillos { get; set; }
        public virtual DbSet<PlatilloSize> PlatilloSize { get; set; }
        public virtual DbSet<platillosPedidos> platillosPedidos { get; set; }
        public virtual DbSet<repartidor> repartidor { get; set; }
        public virtual DbSet<restaurante> restaurante { get; set; }
        public virtual DbSet<RetirosRepartidor> RetirosRepartidor { get; set; }
        public virtual DbSet<usuario> usuario { get; set; }
    }
}
