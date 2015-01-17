namespace Allegro
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("RodzajAukcji")]
    public partial class RodzajAukcji
    {
        public int ID { get; set; }

        public int? Licytacja { get; set; }

        public int? KupTeraz { get; set; }

        public int? LicytacjaZKupTeraz { get; set; }
    }
}
