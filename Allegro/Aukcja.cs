namespace Allegro
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Aukcja")]
    public partial class Aukcja
    {
        public Aukcja()
        {
            Umowa = new HashSet<Umowa>();
            Zdjecie = new HashSet<Zdjecie>();
        }

        public int ID { get; set; }

        public int? ZdjecieID { get; set; }

        public int UzytkownikID { get; set; }

        public int KategoriaID { get; set; }

        public int? Numer { get; set; }

        [StringLength(255)]
        public string Tytul { get; set; }

        [Column(TypeName = "text")]
        public string OpisPrzedmiotu { get; set; }

        public DateTime? TerminRozpoczecia { get; set; }

        public int? LiczbaPrzedmiotow { get; set; }

        public float? CenaKupTeraz { get; set; }

        public float? CenaWywolawcza { get; set; }

        public float? CenaMinimalna { get; set; }

        public DateTime? TerminZakonczenia { get; set; }

        public bool? FakturaVAT { get; set; }

        public int? LiczbaOdwiedzin { get; set; }

        public DateTime? TerminOstatnichOdwiedzin { get; set; }

        public int? LiczbaDostepnychPrzedmiotow { get; set; }

        public virtual Kategoria Kategoria { get; set; }

        public virtual Uzytkownik Uzytkownik { get; set; }

        public virtual ICollection<Umowa> Umowa { get; set; }

        public virtual ICollection<Zdjecie> Zdjecie { get; set; }
    }
}
