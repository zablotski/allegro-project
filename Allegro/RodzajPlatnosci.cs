namespace Allegro
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("RodzajPlatnosci")]
    public partial class RodzajPlatnosci
    {
        public int ID { get; set; }

        public int? PrzyOdbiorze { get; set; }

        public int? ZGory { get; set; }
    }
}
