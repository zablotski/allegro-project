namespace Allegro
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DefinicjaJednostkiPrzedmiotu")]
    public partial class DefinicjaJednostkiPrzedmiotu
    {
        public int ID { get; set; }

        public int? Sztuka { get; set; }

        public int? Komplet { get; set; }

        public int? Para { get; set; }
    }
}
