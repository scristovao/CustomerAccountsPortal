//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CustomerAccountsPortal.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PPAIS_Paises
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PPAIS_Paises()
        {
            this.GBCLI_Clientes = new HashSet<GBCLI_Clientes>();
            this.GBTIT_Entidade = new HashSet<GBTIT_Entidade>();
            this.GBTIT_Entidade1 = new HashSet<GBTIT_Entidade>();
        }
    
        public string ACPAI_CodigoPais { get; set; }
        public string ASPAI_SiglaPais { get; set; }
        public Nullable<int> ANPAI_NumeroPais { get; set; }
        public string ADPAI_DescricaoPais { get; set; }
        public string AINDI_IndicativoInternacional { get; set; }
        public string ACID1_CodigoIdioma1 { get; set; }
        public string ACID2_CodigoIdioma2 { get; set; }
        public string ACID3_CodigoIdioma3 { get; set; }
        public string ASITU_Situacao { get; set; }
        public string AUSCR_UtilizadorCriacao { get; set; }
        public Nullable<int> ADTCR_DataCriacao { get; set; }
        public Nullable<int> AHOCR_HoraCriacao { get; set; }
        public string AUSDE_UtilizadorDesactivacao { get; set; }
        public Nullable<int> ADTDE_DataDesactivacao { get; set; }
        public Nullable<int> AHODE_HoraDesactivacao { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GBCLI_Clientes> GBCLI_Clientes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GBTIT_Entidade> GBTIT_Entidade { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GBTIT_Entidade> GBTIT_Entidade1 { get; set; }
    }
}
