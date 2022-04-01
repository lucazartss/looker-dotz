view: vw_dim_arquivo_credito {
  sql_table_name: `DOTZ_CUBO.VW_DimArquivoCredito`
    ;;
  # extension: required
  dimension: chave_arquivo_credito {
    type: number
    sql: ${TABLE}.ChaveArquivoCredito ;;
  }

  dimension: chave_parceiro {
    type: number
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: chave_periodo_arquivo_credito {
    type: number
    sql: ${TABLE}.ChavePeriodoArquivoCredito ;;
  }

  dimension: codigo_arquivo_credito {
    type: number
    sql: ${TABLE}.CodigoArquivoCredito ;;
  }

  dimension: codigo_formato_arquivo_credito {
    type: number
    sql: ${TABLE}.CodigoFormatoArquivoCredito ;;
  }

  dimension: codigo_grupo_nome_arquivo {
    type: number
    sql: ${TABLE}.CodigoGrupoNomeArquivo ;;
  }

  dimension: codigo_motivo_arquivo_credito {
    type: number
    sql: ${TABLE}.CodigoMotivoArquivoCredito ;;
  }

  dimension: codigo_sequencial {
    type: string
    sql: ${TABLE}.CodigoSequencial ;;
  }

  dimension: codigo_sigla_loja {
    type: string
    sql: ${TABLE}.CodigoSiglaLoja ;;
  }

  dimension: codigo_status_processamento_arquivo_credito {
    type: number
    sql: ${TABLE}.CodigoStatusProcessamentoArquivoCredito ;;
  }

  dimension_group: data_arquivo {
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
    sql: ${TABLE}.DataArquivo ;;
  }

  dimension_group: data_processamento {
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
    sql: ${TABLE}.DataProcessamento ;;
  }

  dimension: descricao_formato_arquivo_credito {
    type: string
    sql: ${TABLE}.DescricaoFormatoArquivoCredito ;;
  }

  dimension: descricao_motivo_arquivo_credito {
    type: string
    sql: ${TABLE}.DescricaoMotivoArquivoCredito ;;
  }

  dimension: descricao_status_processamento_arquivo_credito {
    type: string
    sql: ${TABLE}.DescricaoStatusProcessamentoArquivoCredito ;;
  }

  dimension: identificador_formato_arquivo_credito {
    type: string
    sql: ${TABLE}.IdentificadorFormatoArquivoCredito ;;
  }

  dimension: nome_arquivo {
    type: string
    sql: ${TABLE}.NomeArquivo ;;
  }

  dimension: quantidade_registro {
    type: number
    sql: ${TABLE}.QuantidadeRegistro ;;
  }

  dimension: quantidade_registro_rejeitado {
    type: number
    sql: ${TABLE}.QuantidadeRegistroRejeitado ;;
  }

  dimension: quantidade_registro_valido {
    type: number
    sql: ${TABLE}.QuantidadeRegistroValido ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  set: set_chaves {
    fields: [chave_arquivo_credito,chave_parceiro,chave_periodo_arquivo_credito]
  }
}
