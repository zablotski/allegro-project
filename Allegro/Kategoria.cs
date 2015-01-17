namespace Allegro
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Kategoria")]
    public partial class Kategoria
    {
        public Kategoria()
        {
            Aukcja = new HashSet<Aukcja>();
            Kategoria1 = new HashSet<Kategoria>();
        }

        public int ID { get; set; }

        public int? KategoriaID { get; set; }

        [StringLength(255)]
        public string Nazwa { get; set; }

        public virtual ICollection<Aukcja> Aukcja { get; set; }

        public virtual ICollection<Kategoria> Kategoria1 { get; set; }

        public virtual Kategoria Kategoria2 { get; set; }
    }
}
