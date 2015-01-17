namespace Allegro
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class EntitesModel : DbContext
    {
        public EntitesModel()
            : base("name=EntitesModel")
        {
        }

        public virtual DbSet<Aukcja> Aukcja { get; set; }
        public virtual DbSet<DefinicjaJednostkiPrzedmiotu> DefinicjaJednostkiPrzedmiotu { get; set; }
        public virtual DbSet<Kategoria> Kategoria { get; set; }
        public virtual DbSet<Komentarz> Komentarz { get; set; }
        public virtual DbSet<RodzajAukcji> RodzajAukcji { get; set; }
        public virtual DbSet<RodzajKomentarza> RodzajKomentarza { get; set; }
        public virtual DbSet<RodzajPlatnosci> RodzajPlatnosci { get; set; }
        public virtual DbSet<TerminWysylki> TerminWysylki { get; set; }
        public virtual DbSet<Umowa> Umowa { get; set; }
        public virtual DbSet<Uzytkownik> Uzytkownik { get; set; }
        public virtual DbSet<Zdjecie> Zdjecie { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Aukcja>()
                .Property(e => e.Tytul)
                .IsUnicode(false);

            modelBuilder.Entity<Aukcja>()
                .Property(e => e.OpisPrzedmiotu)
                .IsUnicode(false);

            modelBuilder.Entity<Aukcja>()
                .HasMany(e => e.Umowa)
                .WithRequired(e => e.Aukcja)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Aukcja>()
                .HasMany(e => e.Zdjecie)
                .WithRequired(e => e.Aukcja)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Kategoria>()
                .Property(e => e.Nazwa)
                .IsUnicode(false);

            modelBuilder.Entity<Kategoria>()
                .HasMany(e => e.Aukcja)
                .WithRequired(e => e.Kategoria)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Kategoria>()
                .HasMany(e => e.Kategoria1)
                .WithOptional(e => e.Kategoria2)
                .HasForeignKey(e => e.KategoriaID);

            modelBuilder.Entity<Komentarz>()
                .Property(e => e.Tresc)
                .IsUnicode(false);

            modelBuilder.Entity<Umowa>()
                .HasMany(e => e.Komentarz)
                .WithRequired(e => e.Umowa)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Uzytkownik>()
                .Property(e => e.Login)
                .IsUnicode(false);

            modelBuilder.Entity<Uzytkownik>()
                .Property(e => e.Imie)
                .IsUnicode(false);

            modelBuilder.Entity<Uzytkownik>()
                .Property(e => e.Nazwisko)
                .IsUnicode(false);

            modelBuilder.Entity<Uzytkownik>()
                .Property(e => e.E_mail)
                .IsUnicode(false);

            modelBuilder.Entity<Uzytkownik>()
                .Property(e => e.Telefon)
                .IsUnicode(false);

            modelBuilder.Entity<Uzytkownik>()
                .HasMany(e => e.Aukcja)
                .WithRequired(e => e.Uzytkownik)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Uzytkownik>()
                .HasMany(e => e.Komentarz)
                .WithRequired(e => e.Uzytkownik)
                .HasForeignKey(e => e.KtoWystawiaID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Uzytkownik>()
                .HasMany(e => e.Komentarz1)
                .WithRequired(e => e.Uzytkownik1)
                .HasForeignKey(e => e.KomuWystawionyID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Uzytkownik>()
                .HasMany(e => e.Umowa)
                .WithRequired(e => e.Uzytkownik)
                .HasForeignKey(e => e.KtoKupilID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Uzytkownik>()
                .HasMany(e => e.Umowa1)
                .WithRequired(e => e.Uzytkownik1)
                .HasForeignKey(e => e.KtoWystawilID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Zdjecie>()
                .Property(e => e.Opis)
                .IsUnicode(false);

            modelBuilder.Entity<Zdjecie>()
                .Property(e => e.PathDoZdjecia)
                .IsUnicode(false);
        }
    }
}
