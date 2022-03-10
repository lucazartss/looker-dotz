view: transacoes_dotzpay_nao_financeiras {
  derived_table: {
    sql: SELECT * FROM `dotzcloud-datalabs-analytics.ANALYTICS_PROD.TRANSACOES_DOTZPAY_NAO_FINANCEIRAS`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: data {
    type: date
    datatype: date
    sql: ${TABLE}.data ;;
  }

  dimension: modalidade {
    type: string
    sql: ${TABLE}.Modalidade ;;
  }

  dimension: id_conta {
    type: number
    sql: ${TABLE}.ID_CONTA ;;
  }

  dimension: nu_cpf {
    type: string
    sql: ${TABLE}.NuCpf ;;
  }

  dimension: sum_transacoes {
    type: number
    sql: ${TABLE}.SumTransacoes ;;
  }

  set: detail {
    fields: [data, modalidade, id_conta, nu_cpf, sum_transacoes]
  }
}
