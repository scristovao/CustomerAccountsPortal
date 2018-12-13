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
    
    public partial class GBMVDP_MovimentosContasDepositosPrazo
    {
        public int MPNDOC_NumeroDocumento { get; set; }
        public Nullable<decimal> MPBAL_Balcao { get; set; }
        public Nullable<int> MPNCLI_NumeroCliente { get; set; }
        public Nullable<int> MPNATR_Natureza { get; set; }
        public Nullable<decimal> MPNSEQ_NumeroSequencial { get; set; }
        public Nullable<int> MPTDOC_TipoDocumento { get; set; }
        public Nullable<int> MPCOPE_CodigoOperacao { get; set; }
        public Nullable<decimal> MPVLR_ValorMovimento { get; set; }
        public Nullable<decimal> MPSLDI_SaldoIncremento { get; set; }
        public Nullable<decimal> MPSALD_SaldoAposMovimento { get; set; }
        public Nullable<decimal> MPSLDV_SaldoAposDataValor { get; set; }
        public string MPUSER_LancadoPor { get; set; }
        public Nullable<decimal> MPHORA_HoraLancamento { get; set; }
        public Nullable<decimal> MPDATL_DataLancamento { get; set; }
        public Nullable<decimal> MPDATV_DataValor { get; set; }
        public string MPDRCX_DiarioOuCaixa { get; set; }
        public string MPETRB_EstacaoLancamento { get; set; }
        public Nullable<decimal> MPDTEE_DataEmissaoExtracto { get; set; }
        public Nullable<decimal> MPBALM_BalcaoMovimento { get; set; }
        public Nullable<decimal> MPBALC_BalcaoContaCcbMov { get; set; }
        public string MPCCB_ContaCcbMovimento { get; set; }
        public Nullable<decimal> MPNOPR_NumeroOperacao { get; set; }
        public Nullable<decimal> MPNCX_NumeroCaixa { get; set; }
        public Nullable<decimal> MPNTCX_NrTransaccaoCaixa { get; set; }
        public string MPMNSL_MovParaMensualizar { get; set; }
        public string MPTMOV_TipoMovimento { get; set; }
        public Nullable<decimal> MPNORD_NrOrdemTransacca { get; set; }
        public string MPMINV_MovimentoInvisivel { get; set; }
        public Nullable<decimal> MPDTCB_DataContabilistica { get; set; }
        public string MPEXCT_ExecutorMovimento { get; set; }
        public string MPMOED_Moeda { get; set; }
        public string MPDMOV_DescritivoMovimento { get; set; }
        public Nullable<decimal> MPTXA_TaxaAplicadaValorI { get; set; }
        public Nullable<decimal> MPVLRI_ValorIncidencia { get; set; }
        public Nullable<decimal> MPAUTR_Autorizacao { get; set; }
        public Nullable<decimal> MPTOTV_TotalValores { get; set; }
        public Nullable<decimal> MPDVNC_DataVencimento { get; set; }
        public Nullable<decimal> MPNDIA_NumeroDias { get; set; }
        public Nullable<decimal> MPTXJ_TaxaJuro { get; set; }
        public string MPCCAP_CodigoCapitalizacao { get; set; }
        public string MPPENA_PenalizacaoAlterada { get; set; }
        public Nullable<decimal> MPPENJ_NrDiasPenalizacao { get; set; }
        public Nullable<decimal> MPTXPE_TaxaPenalizacao { get; set; }
        public Nullable<decimal> MPTXM_TaxaMobilizacao { get; set; }
        public string MPOBS_Observacoes { get; set; }
    
        public virtual GBCLI_Clientes GBCLI_Clientes { get; set; }
        public virtual GBCODOP_CodigosOperacao GBCODOP_CodigosOperacao { get; set; }
        public virtual GBDOC_Documentos GBDOC_Documentos { get; set; }
        public virtual GBNATR_NaturezasContas GBNATR_NaturezasContas { get; set; }
        public virtual PMOEDA_Divisas PMOEDA_Divisas { get; set; }
    }
}
