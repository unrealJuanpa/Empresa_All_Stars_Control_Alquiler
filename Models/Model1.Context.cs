﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DBEventosEntities : DbContext
    {
        public DBEventosEntities()
            : base("name=DBEventosEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Alquiler_de_espacio> Alquiler_de_espacio { get; set; }
        public virtual DbSet<Encargado_del_evento> Encargado_del_evento { get; set; }
        public virtual DbSet<Show_a_presentar> Show_a_presentar { get; set; }
        public virtual DbSet<Tipo_de_show_a_presentar> Tipo_de_show_a_presentar { get; set; }
    }
}