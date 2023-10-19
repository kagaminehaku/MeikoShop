namespace MeikoShop.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Chatlieu")]
    public partial class Chatlieu
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Chatlieu()
        {
            Sanpham = new HashSet<Sanpham>();
        }

        [Key]
        public int Machatlieu { get; set; }

        [StringLength(10)]
        [Display(Name = "Tên chất liệu")]

        public string Tenchatlieu { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sanpham> Sanpham { get; set; }
    }
}
