view: base_resumo_executivo_contadotz {
  sql_table_name: `dotzcloud-datalabs-analytics.ANALYTICS_PROD.BASE_RESUMO_EXECUTIVO_CONTADOTZ`
    ;;

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

  dimension: id_conta {
    type: number
    sql: ${TABLE}.ID_CONTA ;;
  }

  dimension: modalidade {
    type: string
    sql: ${TABLE}.Modalidade ;;
  }

  dimension: natureza_transacao {
    type: string
    sql: ${TABLE}.natureza_transacao ;;
  }

  dimension: qtd_transacao {
    type: number
    sql: ${TABLE}.QtdTransacao ;;
  }

  dimension: receita {
    type: number
    sql: ${TABLE}.receita ;;
  }

  dimension: valor {
    type: number
    sql: ${TABLE}.Valor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
