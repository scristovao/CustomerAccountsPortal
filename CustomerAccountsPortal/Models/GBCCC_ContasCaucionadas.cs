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
    
    public partial class GBCCC_ContasCaucionadas
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GBCCC_ContasCaucionadas()
        {
            this.GBMVCC_MovimentosContasCaucionadas = new HashSet<GBMVCC_MovimentosContasCaucionadas>();
        }
    
        public int CCNSEQ_NrSequencial { get; set; }
        public int CCBAL_Balcao { get; set; }
        public int CCNCLI_NrCliente { get; set; }
        public int CCNATR_Natureza { get; set; }
        public Nullable<decimal> CCSLD_Saldo { get; set; }
        public Nullable<decimal> CCSLDV_SaldoPorDataValor { get; set; }
        public Nullable<int> CCNDDESC_DiasDescobertoSaldo { get; set; }
        public Nullable<decimal> CCSALM_SaldoMedioPorSaldo { get; set; }
        public Nullable<decimal> CCSALV_SaldoMedioParaDataValor { get; set; }
        public Nullable<decimal> CCSALD_SaldoMedioDisponivel { get; set; }
        public Nullable<int> CCNDSM_NrDiasSaldoMedio { get; set; }
        public Nullable<decimal> CCLIMD_LimiteDescoberto { get; set; }
        public Nullable<int> CCDLIM_DataExpirLimiteDesc { get; set; }
        public Nullable<decimal> CCVLR_ValorCredito { get; set; }
        public Nullable<decimal> CCNUMV_NumerosVermelhos { get; set; }
        public Nullable<decimal> CCNUCI_ComissaoImobilizacao { get; set; }
        public Nullable<decimal> CCRUMV_RecalculoNrsVermelhos { get; set; }
        public Nullable<decimal> CCRUCI_RecalculoComissaoImob { get; set; }
        public string CCPERJ_PeriodicidadeJuros { get; set; }
        public string CCPERRENOV_PeriodicidadeRenovacao { get; set; }
        public string CCRENOVAAU_RenovacaoAutomatica { get; set; }
        public string CCTCRE_TipoCredito { get; set; }
        public string CCTGAR_TipoGarantia { get; set; }
        public string CCLCRE_LinhaCredito { get; set; }
        public decimal CCTXC_TaxaConta { get; set; }
        public Nullable<decimal> CCTXDS_TaxaDescoberto { get; set; }
        public Nullable<decimal> CCTXIM_TaxaImobilizacao { get; set; }
        public int CCDTAB_DataAbertura { get; set; }
        public int CCDATAIPER_DataInicioPeriodo { get; set; }
        public int CCDVNC_DataVencimento { get; set; }
        public Nullable<int> CCDUMV_DataUltimoMovimento { get; set; }
        public int CCDDJR_DataUltimoDebitoJuros { get; set; }
        public int CCDPDJ_ProximoDebitoJuros { get; set; }
        public string CCTEXT_TipoExtracto { get; set; }
        public string CCPERE_PeriodicidadeExtracto { get; set; }
        public Nullable<int> CCMVNE_MovNaoSaidosExtracto { get; set; }
        public Nullable<int> CCUEXT_NrExtractoLinhaCader { get; set; }
        public Nullable<int> CCDEXT_DataUltimoExtracto { get; set; }
        public string CCSITU_SituacaoConta { get; set; }
        public string CCEPRZ_CdgEstatisticoPrazo { get; set; }
        public Nullable<int> CCDSIT_DataSituacao { get; set; }
        public Nullable<decimal> CCVLRD_ValorMinimoParaDebito { get; set; }
        public Nullable<decimal> CCVLRC_ValorMinimoParaCredito { get; set; }
        public Nullable<decimal> CCTRCD_TrancheDebito { get; set; }
        public Nullable<decimal> CCTRCC_TrancheCredito { get; set; }
        public string CCSLAL_SaldoAlterado { get; set; }
        public string CCTXNG_ComTaxaNegociada { get; set; }
        public string CCSITP_SituacaoProtegida { get; set; }
        public string CCECJ_ComEscalaJuros { get; set; }
        public string CCMOED_Moeda { get; set; }
        public Nullable<decimal> CCNJDM_NrsJurosDevMes { get; set; }
        public int CCNCLD_NrCliRelacParaDebitos { get; set; }
        public int CCNATD_NaturRelacParaDebitos { get; set; }
        public int CCNSED_NrSeqRelacParaDebitos { get; set; }
        public Nullable<decimal> CCCTDB_CativosADebito { get; set; }
        public Nullable<decimal> CCCTCR_CativosACredito { get; set; }
        public Nullable<decimal> CCCTPD_CativosPendentes { get; set; }
        public string CCMSIT_MotivoSituacao { get; set; }
        public int CCBAJ_BaseAnualDiasParajuros { get; set; }
        public string CCTTXR_TaxaRefParaTaxaConta { get; set; }
        public string CCTXRD_TaxaRefParaTaxaDesc { get; set; }
        public string CCPSPC_ParmSpreadTaxaConta { get; set; }
        public string CCPSPD_ParmSpreadTaxaDescob { get; set; }
        public Nullable<decimal> CCSPDC_SpreadTaxaConta { get; set; }
        public Nullable<decimal> CCSPDD_SpreadTaxaDescoberto { get; set; }
        public string CCNCJR_CalculaJuros { get; set; }
        public string CCCPRD_CodigoProduto { get; set; }
        public string CCCCPR_CodigoComponente { get; set; }
        public string CCCLCP_ClasseComponente { get; set; }
        public string CCCCAS_CanalSubscricao { get; set; }
        public string CCUSRS_UtilizadorSubscricao { get; set; }
        public string CCPRTX_PeriodicidadeRevisaoTx { get; set; }
        public Nullable<int> CCDTRT_DtReferenciaRevisaoTx { get; set; }
        public int CCDTUT_DataUltimaRevisaoTaxa { get; set; }
        public Nullable<decimal> CCTXCN_TaxaContaNegociada { get; set; }
        public Nullable<decimal> CCTXDN_TaxaDescobertoNeg { get; set; }
        public Nullable<decimal> CCTXIN_TaxaImobilizacaoNeg { get; set; }
        public string CCTXRN_TaxaRefTxContaNeg { get; set; }
        public string CCTRDN_TaxaRefTxDescNeg { get; set; }
        public string CCPSCN_ParmSpreadTxContaNeg { get; set; }
        public string CCPSDN_ParmSpreadTxDescNeg { get; set; }
        public Nullable<decimal> CCSPCN_SpreadTaxaContaNeg { get; set; }
        public Nullable<decimal> CCSPDN_SpreadTaxaDescNeg { get; set; }
        public string CCMAPI_ModoAplicIndexante { get; set; }
        public string CCMAIN_ModoAplicIndexNeg { get; set; }
    
        public virtual GBCDO_ContasDepositosOrdem GBCDO_ContasDepositosOrdem { get; set; }
        public virtual GBCLI_Clientes GBCLI_Clientes { get; set; }
        public virtual GBNATR_NaturezasContas GBNATR_NaturezasContas { get; set; }
        public virtual PMOEDA_Divisas PMOEDA_Divisas { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GBMVCC_MovimentosContasCaucionadas> GBMVCC_MovimentosContasCaucionadas { get; set; }
    }
}
