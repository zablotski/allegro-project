namespace Allegro
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Komentarz")]
    public partial class Komentarz
    {
        public int ID { get; set; }

        public int KtoWystawiaID { get; set; }

        public int UmowaID { get; set; }

        public int KomuWystawionyID { get; set; }

        public int? Rodzaj { get; set; }

        [StringLength(255)]
        public string Tresc { get; set; }

        public DateTime? DataWystawienia { get; set; }

        public virtual Uzytkownik Uzytkownik { get; set; }

        public virtual Umowa Umowa { get; set; }

        public virtual Uzytkownik Uzytkownik1 { get; set; }
    }
}
