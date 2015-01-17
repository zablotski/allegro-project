namespace Allegro
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("RodzajKomentarza")]
    public partial class RodzajKomentarza
    {
        public int ID { get; set; }

        public int? Pozytywny { get; set; }

        public int? Neutralny { get; set; }

        public int? Negatywny { get; set; }
    }
}
