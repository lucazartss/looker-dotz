view: transacoes_dotzpay {
  derived_table: {
    sql: SELECT * FROM `dotzcloud-datalabs-analytics.ANALYTICS_PROD.TRANSACOES_DOTZPAY`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id_fatocontadotz {
    type: number
    sql: ${TABLE}.ID_FATOCONTADOTZ ;;
  }

  dimension: id_conta {
    type: number
    sql: ${TABLE}.ID_CONTA ;;
  }

  dimension: data {
    type: date
    datatype: date
    sql: ${TABLE}.DATA ;;
  }

  dimension: modalidade {
    type: string
    sql: ${TABLE}.Modalidade ;;
  }

  dimension: meio_pagamento {
    type: string
    sql: ${TABLE}.MeioPagamento ;;
  }

  dimension: ds_status {
    type: string
    sql: ${TABLE}.DS_STATUS ;;
  }

  dimension: natureza_transacao {
    type: string
    sql: ${TABLE}.natureza_transacao ;;
  }

  dimension: ds_origem {
    type: string
    sql: ${TABLE}.DS_ORIGEM ;;
  }

  dimension: descricao {
    type: string
    sql: ${TABLE}.descricao ;;
  }

  dimension: flag_tpv {
    type: number
    sql: ${TABLE}.flag_tpv ;;
  }

  dimension: valor {
    type: number
    sql: ${TABLE}.Valor ;;
  }

  dimension: contagem_reversao1 {
    type: number
    sql: ${TABLE}.ContagemReversao1 ;;
  }

  dimension: receita {
    type: number
    sql: ${TABLE}.Receita ;;
  }

  set: detail {
    fields: [
      id_fatocontadotz,
      id_conta,
      data,
      modalidade,
      meio_pagamento,
      ds_status,
      natureza_transacao,
      ds_origem,
      descricao,
      flag_tpv,
      valor,
      contagem_reversao1,
      receita
    ]
  }
}
