view: vw_dim_cliente_detalhe {
  sql_table_name: `DOTZ_CUBO.VW_DimClienteDetalhe`
    ;;
  # extension: required
  dimension: chave_cidade {
    type: number
    sql: ${TABLE}.ChaveCidade ;;
  }

  dimension: chave_cliente {
    type: number
    sql: ${TABLE}.ChaveCliente ;;
  }

  dimension: chave_cliente_cadastrante {
    type: number
    sql: ${TABLE}.ChaveClienteCadastrante ;;
  }

  dimension: chave_cliente_titular {
    type: number
    sql: ${TABLE}.ChaveClienteTitular ;;
  }

  dimension: chave_faixa_idade_cliente {
    type: number
    sql: ${TABLE}.ChaveFaixaIdadeCliente ;;
  }

  dimension: chave_filial_parceiro_origem_cadastro {
    type: number
    sql: ${TABLE}.ChaveFilialParceiroOrigemCadastro ;;
  }

  dimension: chave_lote_origem_cadastro {
    type: number
    sql: ${TABLE}.ChaveLoteOrigemCadastro ;;
  }

  dimension: chave_origem_cadastro {
    type: number
    sql: ${TABLE}.ChaveOrigemCadastro ;;
  }

  dimension: chave_parceiro_origem_cadastro {
    type: number
    sql: ${TABLE}.ChaveParceiroOrigemCadastro ;;
  }

  dimension: chave_periodo_adesao_bb {
    type: number
    sql: ${TABLE}.ChavePeriodoAdesaoBB ;;
  }

  dimension: chave_periodo_adesao_origem {
    type: number
    sql: ${TABLE}.ChavePeriodoAdesaoOrigem ;;
  }

  dimension: chave_periodo_clube_dotz {
    type: number
    sql: ${TABLE}.ChavePeriodoClubeDotz ;;
  }

  dimension: chave_periodo_completa_dotz {
    type: number
    sql: ${TABLE}.ChavePeriodoCompletaDotz ;;
  }

  dimension: chave_periodo_login_mobile {
    type: number
    sql: ${TABLE}.ChavePeriodoLoginMobile ;;
  }

  dimension: chave_periodo_senha_mobile {
    type: number
    sql: ${TABLE}.ChavePeriodoSenhaMobile ;;
  }

  dimension_group: data_envio_senha {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataEnvioSenha ;;
  }

  dimension_group: data_nascimento {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataNascimento ;;
  }

  dimension: descricao_tipo_pessoa {
    type: string
    sql: ${TABLE}.DescricaoTipoPessoa ;;
  }

  dimension: flag_adesao_origem {
    type: string
    sql: ${TABLE}.FlagAdesaoOrigem ;;
  }

  dimension: flag_cartao_ibi {
    type: string
    sql: ${TABLE}.FlagCartaoIbi ;;
  }

  dimension: flag_cliente_adesao_bb {
    type: string
    sql: ${TABLE}.FlagClienteAdesaoBB ;;
  }

  dimension: flag_cliente_titular {
    type: string
    sql: ${TABLE}.FlagClienteTitular ;;
  }

  dimension: flag_clube_dotz {
    type: string
    sql: ${TABLE}.FlagClubeDotz ;;
  }

  dimension: flag_completa_dotz {
    type: string
    sql: ${TABLE}.FlagCompletaDotz ;;
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

  dimension: flag_possui_senha {
    type: string
    sql: ${TABLE}.FlagPossuiSenha ;;
  }

  dimension: flag_senha_mobile {
    type: string
    sql: ${TABLE}.FlagSenhaMobile ;;
  }

  dimension: grupo_nome {
    type: string
    sql: ${TABLE}.GrupoNome ;;
  }

  dimension: id_estado {
    type: string
    sql: ${TABLE}.IdEstado ;;
  }

  dimension: id_sexo {
    type: string
    sql: ${TABLE}.IdSexo ;;
  }

  dimension: id_tipo_pessoa {
    type: string
    sql: ${TABLE}.IdTipoPessoa ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  set: set_chaves {
    fields: [
      chave_cidade,
      chave_cliente,
      chave_cliente_cadastrante,
      chave_cliente_titular,
      chave_faixa_idade_cliente,
      chave_filial_parceiro_origem_cadastro,
      chave_lote_origem_cadastro,
      chave_origem_cadastro,
      chave_parceiro_origem_cadastro,
      chave_periodo_adesao_bb,
      chave_periodo_adesao_origem,
      chave_periodo_clube_dotz,
      chave_periodo_completa_dotz,
      chave_periodo_login_mobile,
      chave_periodo_senha_mobile]
  }
}
