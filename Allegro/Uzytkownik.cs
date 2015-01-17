namespace Allegro
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Uzytkownik")]
    public partial class Uzytkownik
    {
        public Uzytkownik()
        {
            Aukcja = new HashSet<Aukcja>();
            Komentarz = new HashSet<Komentarz>();
            Komentarz1 = new HashSet<Komentarz>();
            Umowa = new HashSet<Umowa>();
            Umowa1 = new HashSet<Umowa>();
        }

        public int ID { get; set; }

        [StringLength(255)]
        public string Login { get; set; }

        [StringLength(255)]
        public string Imie { get; set; }

        [StringLength(255)]
        public string Nazwisko { get; set; }

        [Column("E-mail")]
        [StringLength(255)]
        public string E_mail { get; set; }

        [StringLength(255)]
        public string Telefon { get; set; }

        public DateTime? DataUrodzenia { get; set; }

        public virtual ICollection<Aukcja> Aukcja { get; set; }

        public virtual ICollection<Komentarz> Komentarz { get; set; }

        public virtual ICollection<Komentarz> Komentarz1 { get; set; }

        public virtual ICollection<Umowa> Umowa { get; set; }

        public virtual ICollection<Umowa> Umowa1 { get; set; }
    }
}
