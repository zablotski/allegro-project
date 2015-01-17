namespace Allegro
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Umowa")]
    public partial class Umowa
    {
        public Umowa()
        {
            Komentarz = new HashSet<Komentarz>();
        }

        public int ID { get; set; }

        public int KtoWystawilID { get; set; }

        public int KtoKupilID { get; set; }

        public int AukcjaID { get; set; }

        public int? LiczbaSztuk { get; set; }

        public virtual Aukcja Aukcja { get; set; }

        public virtual ICollection<Komentarz> Komentarz { get; set; }

        public virtual Uzytkownik Uzytkownik { get; set; }

        public virtual Uzytkownik Uzytkownik1 { get; set; }
    }
}
