namespace Allegro
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TerminWysylki")]
    public partial class TerminWysylki
    {
        public int ID { get; set; }

        public int? Natychmiast { get; set; }

        [Column("24 godzin")]
        public int? C24_godzin { get; set; }

        [Column("2 dni")]
        public int? C2_dni { get; set; }

        [Column("3 dni")]
        public int? C3_dni { get; set; }

        [Column("4 dni")]
        public int? C4_dni { get; set; }

        [Column("5 dni")]
        public int? C5_dni { get; set; }

        [Column("7 dni")]
        public int? C7_dni { get; set; }

        [Column("10 dni")]
        public int? C10_dni { get; set; }

        [Column("14 dni")]
        public int? C14_dni { get; set; }

        [Column("21 dni")]
        public int? C21_dni { get; set; }
    }
}
