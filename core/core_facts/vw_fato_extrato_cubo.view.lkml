view: vw_fato_extrato_cubo {
  sql_table_name: `DOTZ_CUBO.VW_FatoExtratoCubo`
    ;;

  dimension: chave_aplicacao {
    type: number
    sql: ${TABLE}.ChaveAplicacao ;;
  }

  dimension: chave_arquivo_credito {
    type: number
    sql: ${TABLE}.ChaveArquivoCredito ;;
  }

  dimension: chave_canal_origem_parceiro {
    type: number
    sql: ${TABLE}.ChaveCanalOrigemParceiro ;;
  }

  dimension: chave_cidade {
    type: number
    sql: ${TABLE}.ChaveCidade ;;
  }

  dimension: chave_cliente {
    type: number
    sql: ${TABLE}.ChaveCliente ;;
  }

  dimension: chave_faixa_idade_cliente {
    type: number
    sql: ${TABLE}.ChaveFaixaIdadeCliente ;;
  }

  dimension: chave_faixa_saldo_cliente {
    type: number
    sql: ${TABLE}.ChaveFaixaSaldoCliente ;;
  }

  dimension: chave_filial_parceiro {
    type: number
    sql: ${TABLE}.ChaveFilialParceiro ;;
  }

  dimension: chave_filial_primeira_transacao {
    type: number
    sql: ${TABLE}.ChaveFilialPrimeiraTransacao ;;
  }

  dimension: chave_hierarquia_regional {
    type: number
    sql: ${TABLE}.ChaveHierarquiaRegional ;;
  }

  dimension: chave_origem_cadastro {
    type: number
    sql: ${TABLE}.ChaveOrigemCadastro ;;
  }

  dimension: chave_parceiro {
    type: number
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: chave_parceiro_primeira_transacao {
    type: number
    sql: ${TABLE}.ChaveParceiroPrimeiraTransacao ;;
  }

  dimension: chave_periodo_adesao_bb {
    type: number
    sql: ${TABLE}.ChavePeriodoAdesaoBB ;;
  }

  dimension: chave_periodo_cadastro {
    type: number
    sql: ${TABLE}.ChavePeriodoCadastro ;;
  }

  dimension: chave_periodo_clube_dotz {
    type: number
    sql: ${TABLE}.ChavePeriodoClubeDotz ;;
  }

  dimension: chave_periodo_completa_dotz {
    type: number
    sql: ${TABLE}.ChavePeriodoCompletaDotz ;;
  }

  dimension: chave_periodo_inicio_programa {
    type: number
    sql: ${TABLE}.ChavePeriodoInicioPrograma ;;
  }

  dimension: chave_periodo_login_mobile {
    type: number
    sql: ${TABLE}.ChavePeriodoLoginMobile ;;
  }

  dimension: chave_periodo_primeiro_efeito_rede {
    type: number
    sql: ${TABLE}.ChavePeriodoPrimeiroEfeitoRede ;;
  }

  dimension: chave_periodo_senha_mobile {
    type: number
    sql: ${TABLE}.ChavePeriodoSenhaMobile ;;
  }

  dimension: chave_pos {
    type: number
    sql: ${TABLE}.ChavePos ;;
  }

  dimension: chave_produto_credito {
    type: number
    sql: ${TABLE}.ChaveProdutoCredito ;;
  }

  dimension: chave_promocao {
    type: number
    sql: ${TABLE}.ChavePromocao ;;
  }

  dimension: chave_tipo_transacao_credito {
    type: number
    sql: ${TABLE}.ChaveTipoTransacaoCredito ;;
  }

  dimension: codigo_acesso_internet {
    type: number
    sql: ${TABLE}.CodigoAcessoInternet ;;
  }

  dimension: codigo_escolaridade {
    type: number
    sql: ${TABLE}.CodigoEscolaridade ;;
  }

  dimension: codigo_estado_civil {
    type: number
    sql: ${TABLE}.CodigoEstadoCivil ;;
  }

  dimension: codigo_faixa_renda {
    type: number
    sql: ${TABLE}.CodigoFaixaRenda ;;
  }

  dimension: codigo_gasto_web {
    type: number
    sql: ${TABLE}.CodigoGastoWeb ;;
  }

  dimension: codigo_ocupacao {
    type: number
    sql: ${TABLE}.CodigoOcupacao ;;
  }

  dimension: codigo_profissao {
    type: number
    sql: ${TABLE}.CodigoProfissao ;;
  }

  dimension: codigo_quantidade_filho {
    type: number
    sql: ${TABLE}.CodigoQuantidadeFilho ;;
  }

  dimension: codigo_sequencial {
    type: string
    sql: ${TABLE}.CodigoSequencial ;;
  }

  dimension: codigo_tipo_residencia {
    type: number
    sql: ${TABLE}.CodigoTipoResidencia ;;
  }

  dimension_group: data_check_in {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataCheckIn ;;
  }

  dimension_group: data_check_out {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataCheckOut ;;
  }

  dimension_group: data_processamento_transacao {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataProcessamentoTransacao ;;
  }

  dimension: descricao_acesso_internet {
    type: string
    sql: ${TABLE}.DescricaoAcessoInternet ;;
  }

  dimension: descricao_classe_social_perfil {
    type: string
    sql: ${TABLE}.DescricaoClasseSocialPerfil ;;
  }

  dimension: descricao_escolaridade {
    type: string
    sql: ${TABLE}.DescricaoEscolaridade ;;
  }

  dimension: descricao_estado_civil {
    type: string
    sql: ${TABLE}.DescricaoEstadoCivil ;;
  }

  dimension: descricao_faixa_renda {
    type: string
    sql: ${TABLE}.DescricaoFaixaRenda ;;
  }

  dimension: descricao_gasto_web {
    type: string
    sql: ${TABLE}.DescricaoGastoWeb ;;
  }

  dimension: descricao_ocupacao {
    type: string
    sql: ${TABLE}.DescricaoOcupacao ;;
  }

  dimension: descricao_profissao {
    type: string
    sql: ${TABLE}.DescricaoProfissao ;;
  }

  dimension: descricao_quantidade_filho {
    type: string
    sql: ${TABLE}.DescricaoQuantidadeFilho ;;
  }

  dimension: descricao_status_processamento_arquivo_credito {
    type: string
    sql: ${TABLE}.DescricaoStatusProcessamentoArquivoCredito ;;
  }

  dimension: descricao_tipo_residencia {
    type: string
    sql: ${TABLE}.DescricaoTipoResidencia ;;
  }

  dimension: flag_cartao_dotz {
    type: string
    sql: ${TABLE}.FlagCartaoDotz ;;
  }

  dimension: flag_celular_valido {
    type: string
    sql: ${TABLE}.FlagCelularValido ;;
  }

  dimension: flag_cliente_adesao_bb {
    type: string
    sql: ${TABLE}.FlagClienteAdesaoBB ;;
  }

  dimension: flag_cliente_bb {
    type: string
    sql: ${TABLE}.FlagClienteBB ;;
  }

  dimension: flag_cliente_cadastrado {
    type: string
    sql: ${TABLE}.FlagClienteCadastrado ;;
  }

  dimension: flag_cliente_elegivel {
    type: string
    sql: ${TABLE}.FlagClienteElegivel ;;
  }

  dimension: flag_cliente_piloto_vivo {
    type: string
    sql: ${TABLE}.FlagClientePilotoVivo ;;
  }

  dimension: flag_cliente_telecom {
    type: string
    sql: ${TABLE}.FlagClienteTelecom ;;
  }

  dimension: flag_cliente_titular {
    type: string
    sql: ${TABLE}.FlagClienteTitular ;;
  }

  dimension: flag_cliente_valido {
    type: string
    sql: ${TABLE}.FlagClienteValido ;;
  }

  dimension: flag_clube_dotz {
    type: string
    sql: ${TABLE}.FlagClubeDotz ;;
  }

  dimension: flag_completa_dotz {
    type: string
    sql: ${TABLE}.FlagCompletaDotz ;;
  }

  dimension: flag_efeito_rede {
    type: string
    sql: ${TABLE}.FlagEfeitoRede ;;
  }

  dimension: flag_endereco_valido {
    type: string
    sql: ${TABLE}.FlagEnderecoValido ;;
  }

  dimension: flag_login_mobile {
    type: string
    sql: ${TABLE}.FlagLoginMobile ;;
  }

  dimension: flag_movimentacao_fato_troca {
    type: string
    sql: ${TABLE}.FlagMovimentacaoFatoTroca ;;
  }

  dimension: flag_optin {
    type: string
    sql: ${TABLE}.FlagOptin ;;
  }

  dimension: flag_perfil_preenchido {
    type: string
    sql: ${TABLE}.FlagPerfilPreenchido ;;
  }

  dimension: flag_possui_senha {
    type: string
    sql: ${TABLE}.FlagPossuiSenha ;;
  }

  dimension: flag_senha_mobile {
    type: string
    sql: ${TABLE}.FlagSenhaMobile ;;
  }

  dimension: flag_telefone_valido {
    type: string
    sql: ${TABLE}.FlagTelefoneValido ;;
  }

  dimension: id_sexo {
    type: string
    sql: ${TABLE}.IdSexo ;;
  }

  dimension: nome_arquivo {
    type: string
    sql: ${TABLE}.NomeArquivo ;;
  }

  dimension: quantidade_dotz {
    type: number
    sql: ${TABLE}.QuantidadeDotz ;;
  }

  dimension: quantidade_ticket {
    type: number
    sql: ${TABLE}.QuantidadeTicket ;;
  }

  dimension: valor_ticket_total {
    type: number
    sql: ${TABLE}.ValorTicketTotal ;;
  }

  dimension: valor_ticket_total_base {
    type: number
    sql: ${TABLE}.ValorTicketTotalBase ;;
  }

  dimension: valor_ticket_unitario {
    type: number
    sql: ${TABLE}.ValorTicketUnitario ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  set: set_chaves {
    fields: [
              chave_aplicacao,
              chave_arquivo_credito,
              chave_canal_origem_parceiro,
              chave_cidade,
              chave_cliente,
              chave_faixa_idade_cliente,
              chave_faixa_saldo_cliente,
              chave_filial_parceiro,
              chave_filial_primeira_transacao,
              chave_hierarquia_regional,
              chave_origem_cadastro,
              chave_parceiro,
              chave_parceiro_primeira_transacao,
              chave_periodo_adesao_bb,
              chave_periodo_cadastro,
              chave_periodo_clube_dotz,
              chave_periodo_inicio_programa,
              chave_periodo_login_mobile,
              chave_periodo_primeiro_efeito_rede,
              chave_periodo_senha_mobile,
              chave_periodo_completa_dotz,
              chave_pos,
              chave_produto_credito,
              chave_promocao,
              chave_tipo_transacao_credito
    ]
  }

  set: set_codigos {
    fields: [
              codigo_acesso_internet,
              codigo_escolaridade,
              codigo_estado_civil,
              codigo_faixa_renda,
              codigo_gasto_web,
              codigo_ocupacao,
              codigo_profissao,
              codigo_quantidade_filho,
              codigo_sequencial,
              codigo_tipo_residencia

    ]
  }
}
