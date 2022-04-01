view: vw_fato_faturamento_parceiro_dia {
  sql_table_name: `DOTZ_CUBO.VW_FatoFaturamentoParceiroDia`
    ;;

  dimension: chave_fato_faturamento_parceiro_dia {
    type: number
    sql: ${TABLE}.ChaveFatoFaturamentoParceiroDia ;;
  }

  dimension: chave_filial_parceiro {
    type: number
    sql: ${TABLE}.ChaveFilialParceiro ;;
  }

  dimension: chave_parceiro {
    type: number
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: chave_produto_credito {
    type: number
    sql: ${TABLE}.ChaveProdutoCredito ;;
  }

  dimension: codigo_arquivo {
    type: number
    sql: ${TABLE}.CodigoArquivo ;;
  }

  dimension_group: data {
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
    sql: ${TABLE}.Data ;;
  }

  dimension: litragem {
    type: number
    sql: ${TABLE}.Litragem ;;
  }

  dimension: origem_faturamento {
    type: string
    sql: ${TABLE}.OrigemFaturamento ;;
  }

  dimension: percentual_faturamento {
    type: number
    sql: ${TABLE}.PercentualFaturamento ;;
  }

  dimension: percentual_transacoes {
    type: number
    sql: ${TABLE}.PercentualTransacoes ;;
  }

  dimension: preco_medio_combustivel {
    type: number
    sql: ${TABLE}.PrecoMedioCombustivel ;;
  }

  dimension: quantidade_transacao_parceiro {
    type: number
    sql: ${TABLE}.QuantidadeTransacaoParceiro ;;
  }

  dimension: tipo_combustivel {
    type: string
    sql: ${TABLE}.TipoCombustivel ;;
  }

  dimension: valor_faturamento_parceiro {
    type: number
    sql: ${TABLE}.ValorFaturamentoParceiro ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  set: set_chaves {
    fields: [
              chave_fato_faturamento_parceiro_dia,
              chave_filial_parceiro,
              chave_parceiro,
              chave_produto_credito
    ]
  }

  set: set_codigos {
    fields: [
              codigo_arquivo
              ]
  }
}
