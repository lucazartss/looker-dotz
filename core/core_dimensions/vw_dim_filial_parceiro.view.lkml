view: vw_dim_filial_parceiro {
  sql_table_name: `DOTZ_CUBO.VW_DimFilialParceiro`
    ;;

  dimension: chave_alternativa_filial {
    type: number
    sql: ${TABLE}.ChaveAlternativaFilial ;;
  }

  dimension: chave_cidade {
    type: number
    description: "FK - tabela DimCidadeFilialParceiro, campo ChaveCidade (baseado no CEP cadastrado da filial)."
    sql: ${TABLE}.ChaveCidade ;;
  }

  dimension: chave_filial_parceiro {
    type: number
    description: "Chave composta única da tabela (é obrigatório usar o ChaveParceiro nas operações de join, do contrário resultados incorretos podem acontecer)."
    sql: ${TABLE}.ChaveFilialParceiro ;;
  }

  dimension: chave_hierarquia_regional {
    type: number
    description: "FK - tabela DimHierarquiaRegional, campo ChaveHierarquiaRegional (baseado no range de CEPs cadastrado por BI)."
    sql: ${TABLE}.ChaveHierarquiaRegional ;;
  }

  dimension: chave_parceiro {
    type: number
    description: "Chave composta única da tabela (é obrigatório usar o ChaveFilialParceiro nas operações de join, do contrário resultados incorretos podem acontecer)."
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: codigo_agrupamento_nivel_relacionamento {
    type: number
    sql: ${TABLE}.CodigoAgrupamentoNivelRelacionamento ;;
  }

  dimension: codigo_cnpjfilial_parceiro {
    type: string
    description: "CNPJ da filial (cadastrado no Analyzer)."
    sql: ${TABLE}.CodigoCNPJFilialParceiro ;;
  }

  dimension: codigo_filial_parceiro {
    type: number
    description: "Código identificador da filial gerado pelo ambiente transacional."
    sql: ${TABLE}.CodigoFilialParceiro ;;
  }

  dimension: codigo_franqueado {
    type: number
    sql: ${TABLE}.CodigoFranqueado ;;
  }

  dimension: codigo_sigla_loja {
    type: string
    description: "Código identificador da loja fornecido pelo parceiro."
    sql: ${TABLE}.CodigoSiglaLoja ;;
  }

  dimension: codigo_sigla_uf {
    type: string
    description: "Nome do estado da filial (cadastrado no Analyzer)."
    sql: ${TABLE}.CodigoSiglaUF ;;
  }

  dimension: codigo_tipo_filial {
    type: number
    description: "Código inteiro do tipo da filial (ex: 4)."
    sql: ${TABLE}.CodigoTipoFilial ;;
  }

  dimension: codigo_tipo_segmento {
    type: number
    sql: ${TABLE}.CodigoTipoSegmento ;;
  }

  dimension_group: data_cadastro_filial {
    type: time
    description: "Data em que a filial foi aberta (cadastrado no Analyzer)."
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
    sql: ${TABLE}.DataCadastroFilial ;;
  }

  dimension_group: data_criacao {
    type: time
    description: "Data em que a filial foi cadastrada no Analyzer."
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
    sql: ${TABLE}.DataCriacao ;;
  }

  dimension: descricao_agrupamento_nivel_relacionamento {
    type: string
    sql: ${TABLE}.DescricaoAgrupamentoNivelRelacionamento ;;
  }

  dimension: descricao_franqueado {
    type: string
    sql: ${TABLE}.DescricaoFranqueado ;;
  }

  dimension: descricao_tipo_filial {
    type: string
    description: "Tipo da filial (ex: GERAL, FARMA, SUPER)."
    sql: ${TABLE}.DescricaoTipoFilial ;;
  }

  dimension: descricao_tipo_segmento {
    type: string
    sql: ${TABLE}.DescricaoTipoSegmento ;;
  }

  dimension: flag_ativo {
    type: string
    description: "Flag que indica se a filial está marcada como ativa no Analyzer."
    sql: ${TABLE}.FlagAtivo ;;
  }

  dimension: nome_cidade {
    type: string
    description: "Nome da cidade da filial (cadastrado no Analyzer)."
    sql: ${TABLE}.NomeCidade ;;
  }

  dimension: nome_filial_parceiro {
    type: string
    description: "Nome da filial."
    sql: ${TABLE}.NomeFilialParceiro ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  set: set_chaves {
    fields: [
              chave_alternativa_filial,
              chave_cidade,
              chave_filial_parceiro,
              chave_hierarquia_regional,
              chave_parceiro
    ]
  }

  set: set_codigos {
    fields: [
              codigo_agrupamento_nivel_relacionamento,
              codigo_cnpjfilial_parceiro,
              codigo_filial_parceiro,
              codigo_franqueado,
              codigo_sigla_loja,
              codigo_sigla_uf,
              codigo_tipo_filial,
              codigo_tipo_segmento
    ]
  }
}
