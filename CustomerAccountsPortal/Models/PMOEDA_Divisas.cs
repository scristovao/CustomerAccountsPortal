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
    
    public partial class PMOEDA_Divisas
    {
        public string WMOED_CodigoDivisaIso { get; set; }
        public Nullable<int> WNMOE_CodigoIso { get; set; }
        public string WDESC_DesignacaoDivisa { get; set; }
        public string WPENT_PaisOuEntidade { get; set; }
        public string WROFX_RecolhaObgFixing { get; set; }
        public string WLNGU_Lingua { get; set; }
        public string WSIMB_SimboloMoedaParaExterior { get; set; }
        public Nullable<int> WNDGC_NrDecimaisGerCotacao { get; set; }
        public Nullable<int> WSORD_SeqOrdenacaoParaConsulta { get; set; }
        public string WCTB_CotadaBanco { get; set; }
        public string WCTBC_CotadaBancoCentral { get; set; }
        public Nullable<decimal> WMMC_ValorDesvioCalcContr { get; set; }
        public Nullable<decimal> WMTC_MargemTaxaCambio { get; set; }
        public Nullable<decimal> WMTJ_MargemTaxaJuro { get; set; }
        public Nullable<decimal> WMITC_MargemIntrTaxaCambio { get; set; }
        public Nullable<decimal> WMITJ_MargemIntrTaxaJuro { get; set; }
        public Nullable<int> WCTJ_BaseCalculoTaxaJuro { get; set; }
        public string WCBP_CodigoBancoSwiftPref { get; set; }
        public string WCPP_SiglaPaisIsoPref { get; set; }
        public Nullable<int> WCBLP_CodigoBalcaoPref { get; set; }
        public Nullable<int> WCDP_CodigoDomicilioPref { get; set; }
        public string WCREU_CodigoReutersPref { get; set; }
        public string WPSW_PrioridadeMsgSwift { get; set; }
        public string WOBS_ObservacoesDivisa { get; set; }
        public string WBLOQ_DivisaBloqueada { get; set; }
        public string WGEUR_MoedaInTerceiraFaseUem { get; set; }
        public Nullable<int> WDENTMIN_DataEntradaMoedaIn { get; set; }
        public string WTARRMIN_MetodoArredondMoedaIn { get; set; }
        public string WSITU_Situacao { get; set; }
        public string WUSCR_UtilizadorCriacao { get; set; }
        public Nullable<int> WDTCR_DataCriacao { get; set; }
        public Nullable<int> WHOCR_HoraCriacao { get; set; }
        public string WUSDE_UtilizadorDesactivacao { get; set; }
        public Nullable<int> WDTDE_DataDesactivacao { get; set; }
        public Nullable<int> WHODE_HoraDesactivacao { get; set; }
    }
}