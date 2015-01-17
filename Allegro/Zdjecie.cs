namespace Allegro
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Zdjecie")]
    public partial class Zdjecie
    {
        public int ID { get; set; }

        public int AukcjaID { get; set; }

        [StringLength(255)]
        public string Opis { get; set; }

        [StringLength(500)]
        public string PathDoZdjecia { get; set; }

        public virtual Aukcja Aukcja { get; set; }
    }
}
