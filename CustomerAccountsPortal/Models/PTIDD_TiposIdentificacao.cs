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
    
    public partial class PTIDD_TiposIdentificacao
    {
        public long ID { get; set; }
        public string PTITP_TipoIdentificacao { get; set; }
        public string PTIDC_Descritivo { get; set; }
        public string POLOC_ObrigaLocalEmissao { get; set; }
        public string PSITU_Situacao { get; set; }
        public string PPASD_PermiteAssociarSeDesactivado { get; set; }
        public string PIDTIPUTL_TipoUtilizacao { get; set; }
        public string PIDRCLCKD_RotinaCalculoCheckDigit { get; set; }
        public string PIDPARM1_Parametro1ParaRotina { get; set; }
        public string PIDPARM2_Parametro2ParaRotina { get; set; }
        public string PIDTRCKDG_TratamentoParaCheckDigit { get; set; }
        public Nullable<int> PIDCARMIN_NrMinimoCaracteres { get; set; }
        public Nullable<int> PIDCARMAX_NrMaximoCaracteres { get; set; }
    }
}
