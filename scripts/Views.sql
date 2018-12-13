USE [CustomerAccounts]
GO
/****** Object:  View [dbo].[VConsultaClientePorNomeEntidade]    Script Date: 13/12/2018 15:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaClientePorNomeEntidade]
AS
SELECT        dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, dbo.GBTIT_Entidade.TTDNSC_DataNascimento, dbo.GBTIT_Entidade.TTNIF_NrIdentificacaoFiscal, dbo.GBCLI_Clientes.CLNCLI_NrCliente
FROM            dbo.GBLTIT_LigacaoClientesEntidades INNER JOIN
                         dbo.GBTIT_Entidade ON dbo.GBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade = dbo.GBTIT_Entidade.TTNUMT_NrEntidade INNER JOIN
                         dbo.GBCLI_Clientes ON dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente = dbo.GBCLI_Clientes.CLNCLI_NrCliente
GO
/****** Object:  View [dbo].[VConsultaClientePorNumeroCliente]    Script Date: 13/12/2018 15:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaClientePorNumeroCliente]
AS
SELECT        dbo.GBCLI_Clientes.CLNCLI_NrCliente, dbo.GBCLI_Clientes.CLDTAB_DataAbertura, dbo.GBCLI_Clientes.CLTCLI_SegmentoCliente, dbo.GBCLI_Clientes.CLGERC_GestorCliente, 
                         dbo.GBCLI_Clientes.CLCNDM_CondicoesMovimentacao, dbo.GBCNDM_CondicoesMovimentacaoConta.ATDCND_Descritivo, dbo.GBCRES_CodigosResidencia.REDESC_Descritivo, 
                         dbo.GBCSTE_CodigosSectoriaisNaoResidentes.SEDESC_Descritivo, dbo.GBCSTR_CodigosSectoriaisResidentes.SRDESC_Descritivo, dbo.GBTCLI_SegmentoCliente.TCDESC_Descritivo, 
                         dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, dbo.GBTIT_Entidade.TTCRES_CodigoResidencia, dbo.GBTIT_Entidade.TTCST_CodigoSectorial, dbo.GBTIT_Entidade.TTTIPT_EmpresaOuParticular
FROM            dbo.GBLTIT_LigacaoClientesEntidades INNER JOIN
                         dbo.GBTIT_Entidade ON dbo.GBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade = dbo.GBTIT_Entidade.TTNUMT_NrEntidade INNER JOIN
                         dbo.GBCLI_Clientes ON dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente = dbo.GBCLI_Clientes.CLNCLI_NrCliente INNER JOIN
                         dbo.GBCNDM_CondicoesMovimentacaoConta ON dbo.GBCLI_Clientes.CLCNDM_CondicoesMovimentacao = dbo.GBCNDM_CondicoesMovimentacaoConta.ATCNDM_CondMovimentacao INNER JOIN
                         dbo.GBCRES_CodigosResidencia ON dbo.GBCRES_CodigosResidencia.RECRES_CodigoResidencia = dbo.GBTIT_Entidade.TTCRES_CodigoResidencia INNER JOIN
                         dbo.GBCSTE_CodigosSectoriaisNaoResidentes ON dbo.GBCSTE_CodigosSectoriaisNaoResidentes.SECST_CodigoSectorial = dbo.GBTIT_Entidade.TTCST_CodigoSectorial INNER JOIN
                         dbo.GBCSTR_CodigosSectoriaisResidentes ON dbo.GBCSTR_CodigosSectoriaisResidentes.SRCST_CodigoSectorial = dbo.GBTIT_Entidade.TTCST_CodigoSectorial INNER JOIN
                         dbo.GBTCLI_SegmentoCliente ON dbo.GBTCLI_SegmentoCliente.TCTIPO_Tipo = dbo.GBCLI_Clientes.CLTCLI_SegmentoCliente
GO
/****** Object:  View [dbo].[VConsultaDocumentos_DadosDocumento]    Script Date: 13/12/2018 15:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaDocumentos_DadosDocumento]
AS
SELECT        dbo.GBDOC_Documentos.DCTDOC_TipoDocumento, dbo.GBDOC_Documentos.DCNDOC_Documento, dbo.GBCODOP_CodigosOperacao.CODEST_DescritivoTipoDoc, dbo.GBDOC_Documentos.DCSITU_SituacaoDocumento
FROM            dbo.GBCODOP_CodigosOperacao INNER JOIN
                         dbo.GBDOC_Documentos ON dbo.GBCODOP_CodigosOperacao.COTDOC_TipoDocumento = dbo.GBDOC_Documentos.DCTDOC_TipoDocumento
GO
/****** Object:  View [dbo].[VConsultaDocumentos_DadosMovimentoContaCaucinada]    Script Date: 13/12/2018 15:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaDocumentos_DadosMovimentoContaCaucinada]
AS
SELECT        dbo.GBMVCC_MovimentosContasCaucionadas.MUNCLI_NumeroCliente + dbo.GBMVCC_MovimentosContasCaucionadas.MUNATR_Natureza + dbo.GBMVCC_MovimentosContasCaucionadas.MUNSEQ_NumeroSequencial AS ContaDoMovimentoCaucinada,
                          dbo.GBMVCC_MovimentosContasCaucionadas.MUDMOV_DescritivoMovimento, dbo.GBMVCC_MovimentosContasCaucionadas.MUVLR_ValorMovimento, dbo.GBMVCC_MovimentosContasCaucionadas.MUMOED_Moeda, 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUDATV_DataValor, dbo.GBMVCC_MovimentosContasCaucionadas.MUNOPR_NrOperacao, dbo.GBMVCC_MovimentosContasCaucionadas.MUUSER_LancadoPor, 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUDATL_DataLancamento, dbo.GBMVCC_MovimentosContasCaucionadas.MUCCB_ContaCcbMovimento, 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUDTCB_DataContabilistica, dbo.GBMVCC_MovimentosContasCaucionadas.MUAUTR_Autorizacao
FROM            dbo.GBDOC_Documentos INNER JOIN
                         dbo.GBCODOP_CodigosOperacao ON dbo.GBDOC_Documentos.DCTDOC_TipoDocumento = dbo.GBCODOP_CodigosOperacao.COTDOC_TipoDocumento AND dbo.GBCODOP_CodigosOperacao.COSITU_Situacao = 'V' INNER JOIN
                         dbo.GBMVCC_MovimentosContasCaucionadas ON dbo.GBMVCC_MovimentosContasCaucionadas.MUCOPE_CodigoOperacao = dbo.GBCODOP_CodigosOperacao.COCOPE_CodigoOperacao
GO
/****** Object:  View [dbo].[VConsultaDocumentos_DadosMovimentoContaContabilistica]    Script Date: 13/12/2018 15:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaDocumentos_DadosMovimentoContaContabilistica]
AS
SELECT        dbo.GBMVCO_MovimentosContasContabilisticas.MRNCLI_NumeroCliente + dbo.GBMVCO_MovimentosContasContabilisticas.MRNATR_Natureza + dbo.GBMVCO_MovimentosContasContabilisticas.MRNSEQ_NumeroSequencial AS
                          ContaDoMovimentoContabilistica, dbo.GBMVCO_MovimentosContasContabilisticas.MRDMOV_DescritivoMovimento, dbo.GBMVCO_MovimentosContasContabilisticas.MRVLR_ValorMovimento, 
                         dbo.GBMVCO_MovimentosContasContabilisticas.MRMOED_Moeda, dbo.GBMVCO_MovimentosContasContabilisticas.MRNOPR_NrOperacao, dbo.GBMVCO_MovimentosContasContabilisticas.MRUSER_LancadoPor, 
                         dbo.GBMVCO_MovimentosContasContabilisticas.MRDATL_DataLancamento, dbo.GBMVCO_MovimentosContasContabilisticas.MRCCB_ContaContabilistica, 
                         dbo.GBMVCO_MovimentosContasContabilisticas.MRDTCB_DataContabilistica, dbo.GBMVCO_MovimentosContasContabilisticas.MRAUTR_Autorizacao
FROM            dbo.GBDOC_Documentos INNER JOIN
                         dbo.GBCODOP_CodigosOperacao ON dbo.GBDOC_Documentos.DCTDOC_TipoDocumento = dbo.GBCODOP_CodigosOperacao.COTDOC_TipoDocumento AND dbo.GBCODOP_CodigosOperacao.COSITU_Situacao = 'V' INNER JOIN
                         dbo.GBMVCO_MovimentosContasContabilisticas ON dbo.GBMVCO_MovimentosContasContabilisticas.MRCOPE_CodigoOperacao = dbo.GBCODOP_CodigosOperacao.COCOPE_CodigoOperacao
GO
/****** Object:  View [dbo].[VConsultaDocumentos_DadosMovimentoContaCredito]    Script Date: 13/12/2018 15:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaDocumentos_DadosMovimentoContaCredito]
AS
SELECT        dbo.GBMVCR_MovimentosContasCredito.MCNCLI_NumeroCliente + dbo.GBMVCR_MovimentosContasCredito.MCNATR_Natureza + dbo.GBMVCR_MovimentosContasCredito.MCNSEQ_NumeroSequencial AS ContaDoMovimentoCredito,
                          dbo.GBMVCR_MovimentosContasCredito.MCDMOV_DescritivoMovimento, dbo.GBMVCR_MovimentosContasCredito.MCVLR_ValorMovimento, dbo.GBMVCR_MovimentosContasCredito.MCMOED_Moeda, 
                         dbo.GBMVCR_MovimentosContasCredito.MCDATV_DataValor, dbo.GBMVCR_MovimentosContasCredito.MCNOPR_NrOperacao, dbo.GBMVCR_MovimentosContasCredito.MCUSER_LancadoPor, 
                         dbo.GBMVCR_MovimentosContasCredito.MCDATL_DataLancamento, dbo.GBMVCR_MovimentosContasCredito.MCCCB_ContaCcbMovimento, dbo.GBMVCR_MovimentosContasCredito.MCDTCB_DataContabilistica, 
                         dbo.GBMVCR_MovimentosContasCredito.MCAUTR_Autorizacao
FROM            dbo.GBDOC_Documentos INNER JOIN
                         dbo.GBCODOP_CodigosOperacao ON dbo.GBDOC_Documentos.DCTDOC_TipoDocumento = dbo.GBCODOP_CodigosOperacao.COTDOC_TipoDocumento AND dbo.GBCODOP_CodigosOperacao.COSITU_Situacao = 'V' INNER JOIN
                         dbo.GBMVCR_MovimentosContasCredito ON dbo.GBMVCR_MovimentosContasCredito.MCCOPE_CodigoOperacao = dbo.GBCODOP_CodigosOperacao.COCOPE_CodigoOperacao
GO
/****** Object:  View [dbo].[VConsultaDocumentos_DadosMovimentoContaOrdem]    Script Date: 13/12/2018 15:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaDocumentos_DadosMovimentoContaOrdem]
AS
SELECT        dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNCLI_NumeroCliente + dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNATR_Natureza + dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNSEQ_NumeroSequencial
                          AS ContaDoMovimentoOrdem, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVDMOV_DescritivoMovimento, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVVLR_ValorQueAfectaConta, 
                         dbo.GBMVDO_MovimentosContasDepositosOrdem.MVMOED_MoedaQueAfectaConta, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVDATV_DataValor, 
                         dbo.GBMVDO_MovimentosContasDepositosOrdem.MVNOPR_NrOperacao, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVUSER_LancadoPor, 
                         dbo.GBMVDO_MovimentosContasDepositosOrdem.MVDATL_DataLancamento, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVCCB_ContaCcbMovimento, 
                         dbo.GBMVDO_MovimentosContasDepositosOrdem.MVDTCB_DataContabilistica, dbo.GBMVDO_MovimentosContasDepositosOrdem.MVAUTR_Autorizacao
FROM            dbo.GBDOC_Documentos INNER JOIN
                         dbo.GBCODOP_CodigosOperacao ON dbo.GBDOC_Documentos.DCTDOC_TipoDocumento = dbo.GBCODOP_CodigosOperacao.COTDOC_TipoDocumento AND dbo.GBCODOP_CodigosOperacao.COSITU_Situacao = 'V' INNER JOIN
                         dbo.GBMVDO_MovimentosContasDepositosOrdem ON dbo.GBCODOP_CodigosOperacao.COCOPE_CodigoOperacao = dbo.GBMVDO_MovimentosContasDepositosOrdem.MVCOPE_CodigoOperacao
GO
/****** Object:  View [dbo].[VConsultaDocumentos_DadosMovimentoContaPrazo]    Script Date: 13/12/2018 15:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaDocumentos_DadosMovimentoContaPrazo]
AS
SELECT        dbo.GBMVDP_MovimentosContasDepositosPrazo.MPNCLI_NumeroCliente + dbo.GBMVDP_MovimentosContasDepositosPrazo.MPNATR_Natureza + dbo.GBMVDP_MovimentosContasDepositosPrazo.MPNSEQ_NumeroSequencial
                          AS ContaDoMovimentoPrazo, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPDMOV_DescritivoMovimento, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPVLR_ValorMovimento, 
                         dbo.GBMVDP_MovimentosContasDepositosPrazo.MPMOED_Moeda, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPDATV_DataValor, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPNOPR_NumeroOperacao, 
                         dbo.GBMVDP_MovimentosContasDepositosPrazo.MPUSER_LancadoPor, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPDATL_DataLancamento, 
                         dbo.GBMVDP_MovimentosContasDepositosPrazo.MPCCB_ContaCcbMovimento, dbo.GBMVDP_MovimentosContasDepositosPrazo.MPDTCB_DataContabilistica, 
                         dbo.GBMVDP_MovimentosContasDepositosPrazo.MPAUTR_Autorizacao
FROM            dbo.GBDOC_Documentos INNER JOIN
                         dbo.GBCODOP_CodigosOperacao ON dbo.GBDOC_Documentos.DCTDOC_TipoDocumento = dbo.GBCODOP_CodigosOperacao.COTDOC_TipoDocumento AND dbo.GBCODOP_CodigosOperacao.COSITU_Situacao = 'V' INNER JOIN
                         dbo.GBMVDP_MovimentosContasDepositosPrazo ON dbo.GBCODOP_CodigosOperacao.COCOPE_CodigoOperacao = dbo.GBMVDP_MovimentosContasDepositosPrazo.MPCOPE_CodigoOperacao
GO
/****** Object:  View [dbo].[VConsultaEntidadePorDadosEntidade]    Script Date: 13/12/2018 15:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaEntidadePorDadosEntidade]
AS
SELECT        dbo.PACTP_ActividadeProfissional.PACDC_Descritivo, dbo.PESTC_EstadoCivil.EDCIV_Descritivo, dbo.PHBLT_HabilitacoesLiterarias.HBDC_Descritivo, dbo.PPAIS_Paises.ADPAI_DescricaoPais AS DescricaoPaisResidencia, 
                         dbo.PPAIS_Paises.ADPAI_DescricaoPais AS DescricaoNacionalidade, dbo.PPROF_Profissoes.PPRDESC_Descritivo, dbo.PTIDD_TiposIdentificacao.PTIDC_Descritivo, dbo.GBCRES_CodigosResidencia.REDESC_Descritivo, 
                         dbo.GBCSTE_CodigosSectoriaisNaoResidentes.SEDESC_Descritivo, dbo.GBCSTR_CodigosSectoriaisResidentes.SRDESC_Descritivo, dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, 
                         dbo.GBTIT_Entidade.TTNOMT_NomeEntidade, dbo.GBTIT_Entidade.TTTPEN_TipoEntidade, dbo.GBTIT_Entidade.TTNUMT_NrEntidade, dbo.GBTIT_Entidade.TTDNSC_DataNascimento, dbo.GBTIT_Entidade.TTSEXO_Sexo, 
                         dbo.GBTIT_Entidade.TTHABL_Habilitacoes, dbo.GBTIT_Entidade.TTNIDE_NrIdentificacao, dbo.GBTIT_Entidade.TTDTEI_DataEmissao, dbo.GBTIT_Entidade.GBTTDTVAL_DataValidadeDocumento, 
                         dbo.GBTIT_Entidade.TTLOCA_LocalEmissao, dbo.GBTIT_Entidade.TTNIF_NrIdentificacaoFiscal, dbo.GBTIT_Entidade.TTCRES_CodigoResidencia, dbo.GBTIT_Entidade.TTCST_CodigoSectorial, 
                         dbo.GBTIT_Entidade.TTPAIS_CodigoPais, dbo.GBTIT_Entidade.TTNAC_Nacionalidade, dbo.GBTIT_Entidade.TTNATU_Naturalidade, dbo.GBTIT_Entidade.TTECIV_EstadoCivil, dbo.GBTIT_Entidade.TTPAI_NomePai, 
                         dbo.GBTIT_Entidade.TTMAE_NomeMae, dbo.GBTIT_Entidade.TTACTP_ActividadeProfissional, dbo.GBTIT_Entidade.GBTTPROF_Profissao, dbo.GBTIT_Entidade.TTENTP_EntidadePatronal, 
                         dbo.GBTIT_Entidade.TTFUCA_FuncaoOuCargo, dbo.GBTPENT_TiposEntidades.NIDTPE_Descritivo, dbo.GBTIT_Entidade.TTRCAS_RegimeCasamento
FROM            dbo.GBTIT_Entidade INNER JOIN
                         dbo.GBCRES_CodigosResidencia ON dbo.GBTIT_Entidade.TTCRES_CodigoResidencia = dbo.GBCRES_CodigosResidencia.RECRES_CodigoResidencia INNER JOIN
                         dbo.GBCSTE_CodigosSectoriaisNaoResidentes ON dbo.GBTIT_Entidade.TTCST_CodigoSectorial = dbo.GBCSTE_CodigosSectoriaisNaoResidentes.SECST_CodigoSectorial INNER JOIN
                         dbo.GBCSTR_CodigosSectoriaisResidentes ON dbo.GBTIT_Entidade.TTCST_CodigoSectorial = dbo.GBCSTR_CodigosSectoriaisResidentes.SRCST_CodigoSectorial INNER JOIN
                         dbo.GBTPENT_TiposEntidades ON dbo.GBTIT_Entidade.TTTPEN_TipoEntidade = dbo.GBTPENT_TiposEntidades.NITPEN_TipoEntidade INNER JOIN
                         dbo.PACTP_ActividadeProfissional ON dbo.GBTIT_Entidade.TTACTP_ActividadeProfissional = dbo.PACTP_ActividadeProfissional.PACTV_Actividade INNER JOIN
                         dbo.PESTC_EstadoCivil ON dbo.GBTIT_Entidade.TTECIV_EstadoCivil = dbo.PESTC_EstadoCivil.EECIV_EstadoCivil INNER JOIN
                         dbo.PHBLT_HabilitacoesLiterarias ON dbo.GBTIT_Entidade.TTHABL_Habilitacoes = dbo.PHBLT_HabilitacoesLiterarias.PHBTP_Habilitacoes INNER JOIN
                         dbo.PPAIS_Paises ON dbo.GBTIT_Entidade.TTPAIS_CodigoPais = dbo.PPAIS_Paises.ACPAI_CodigoPais INNER JOIN
                         dbo.PPROF_Profissoes ON dbo.GBTIT_Entidade.GBTTPROF_Profissao = dbo.PPROF_Profissoes.PPRPROF_CodigoProfissao INNER JOIN
                         dbo.PREGC_RegimesCasamento ON dbo.GBTIT_Entidade.TTRCAS_RegimeCasamento = dbo.PREGC_RegimesCasamento.CRCAS_RegimeCasamento INNER JOIN
                         dbo.PTIDD_TiposIdentificacao ON dbo.GBTIT_Entidade.TTTIDE_TipoIdentificacao = dbo.PTIDD_TiposIdentificacao.PTITP_TipoIdentificacao
GO
/****** Object:  View [dbo].[VConsultaEntidadePorNome]    Script Date: 13/12/2018 15:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaEntidadePorNome]
AS
SELECT        TTNOME_NomeSemTitulo, TTDNSC_DataNascimento, TTNIF_NrIdentificacaoFiscal
FROM            dbo.GBTIT_Entidade
GO
/****** Object:  View [dbo].[VConsultaMovimentosCCC]    Script Date: 13/12/2018 15:57:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaMovimentosCCC]
AS
SELECT        dbo.GBCCC_ContasCaucionadas.CCNCLI_NrCliente, dbo.GBCCC_ContasCaucionadas.CCNATR_Natureza, dbo.GBCCC_ContasCaucionadas.CCNSEQ_NrSequencial, dbo.GBCCC_ContasCaucionadas.CCMOED_Moeda, 
                         dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, dbo.GBMVCC_MovimentosContasCaucionadas.MUDATL_DataLancamento, dbo.GBMVCC_MovimentosContasCaucionadas.MUDMOV_DescritivoMovimento, 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUVLR_ValorMovimento, dbo.GBMVCC_MovimentosContasCaucionadas.MUSALD_SaldoAposMovimento
FROM            dbo.GBMVCC_MovimentosContasCaucionadas INNER JOIN
                         dbo.GBCCC_ContasCaucionadas INNER JOIN
                         dbo.GBLTIT_LigacaoClientesEntidades INNER JOIN
                         dbo.GBTIT_Entidade ON dbo.GBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade = dbo.GBTIT_Entidade.TTNUMT_NrEntidade ON 
                         dbo.GBCCC_ContasCaucionadas.CCNCLI_NrCliente = dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente ON 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUNCLI_NumeroCliente = dbo.GBCCC_ContasCaucionadas.CCNCLI_NrCliente AND 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUNATR_Natureza = dbo.GBCCC_ContasCaucionadas.CCNATR_Natureza AND 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUNSEQ_NumeroSequencial = dbo.GBCCC_ContasCaucionadas.CCNSEQ_NrSequencial
GO
/****** Object:  View [dbo].[VConsultaMovimentosCCCExtracto]    Script Date: 13/12/2018 17:41:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VConsultaMovimentosCCCExtracto]
AS
SELECT        dbo.GBMVCC_MovimentosContasCaucionadas.MUDATL_DataLancamento AS DataInicio, dbo.GBMVCC_MovimentosContasCaucionadas.MUDATL_DataLancamento AS DataFim, dbo.GBTIT_Entidade.TTNOME_NomeSemTitulo, 
                         dbo.GBMORD_Moradas.MOMORD_Morada, dbo.GBMORD_Moradas.MOMOR1_Morada, dbo.GBMORD_Moradas.MOCODX_CodigoPostalPais, dbo.GBCCC_ContasCaucionadas.CCNCLI_NrCliente, 
                         dbo.GBCCC_ContasCaucionadas.CCNATR_Natureza, dbo.GBCCC_ContasCaucionadas.CCNSEQ_NrSequencial, dbo.GBNATR_NaturezasContas.NTDESC_Descritivo, dbo.GBCLI_Clientes.CLGERC_GestorCliente, 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUSALD_SaldoAposMovimento AS SaldoAnterior, dbo.GBMVCC_MovimentosContasCaucionadas.MUDATL_DataLancamento AS Data, 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUTDOC_TipoDocumento, dbo.GBMVCC_MovimentosContasCaucionadas.MUNDOC_NumeroDocumento, 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUDMOV_DescritivoMovimento, dbo.GBMVCC_MovimentosContasCaucionadas.MUVLR_ValorMovimento, 
                         dbo.GBMVCC_MovimentosContasCaucionadas.MUSALD_SaldoAposMovimento AS SaldoAposMovimento, dbo.GBMVCC_MovimentosContasCaucionadas.MUSALD_SaldoAposMovimento AS SaldoConta
FROM            dbo.GBCCC_ContasCaucionadas INNER JOIN
                         dbo.GBMVCC_MovimentosContasCaucionadas ON dbo.GBCCC_ContasCaucionadas.CCNCLI_NrCliente = dbo.GBMVCC_MovimentosContasCaucionadas.MUNCLI_NumeroCliente AND 
                         dbo.GBCCC_ContasCaucionadas.CCNATR_Natureza = dbo.GBMVCC_MovimentosContasCaucionadas.MUNATR_Natureza AND 
                         dbo.GBCCC_ContasCaucionadas.CCNSEQ_NrSequencial = dbo.GBMVCC_MovimentosContasCaucionadas.MUNSEQ_NumeroSequencial INNER JOIN
                         dbo.GBLTIT_LigacaoClientesEntidades ON dbo.GBCCC_ContasCaucionadas.CCNCLI_NrCliente = dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente INNER JOIN
                         dbo.GBCLI_Clientes ON dbo.GBLTIT_LigacaoClientesEntidades.LTNCLI_NumeroCliente = dbo.GBCLI_Clientes.CLNCLI_NrCliente INNER JOIN
                         dbo.GBTIT_Entidade ON dbo.GBLTIT_LigacaoClientesEntidades.LTNTIT_NumeroEntidade = dbo.GBTIT_Entidade.TTNUMT_NrEntidade INNER JOIN
                         dbo.GBMORD_Moradas ON dbo.GBCCC_ContasCaucionadas.CCNSEQ_NrSequencial = dbo.GBMORD_Moradas.MONSEQ_NumeroSequencial AND 
                         dbo.GBCCC_ContasCaucionadas.CCNCLI_NrCliente = dbo.GBMORD_Moradas.MONCLI_NumeroCliente AND dbo.GBCCC_ContasCaucionadas.CCNATR_Natureza = dbo.GBMORD_Moradas.MONATR_Natureza INNER JOIN
                         dbo.GBNATR_NaturezasContas ON dbo.GBCCC_ContasCaucionadas.CCNATR_Natureza = dbo.GBNATR_NaturezasContas.NTNATR_Natureza
GO