view: fatocontadotz {
  sql_table_name: `dotzcloud-datalabs-analytics.ANALYTICS_PROD.FATOCONTADOTZ`
    ;;

  dimension: ds_evento {
    type: string
    sql: ${TABLE}.DS_EVENTO ;;
  }

  dimension: ds_status {
    type: string
    sql: ${TABLE}.DS_STATUS ;;
  }

  dimension_group: dt_transacao {
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
    sql: ${TABLE}.DT_TRANSACAO ;;
  }

  dimension_group: dt_transacao_timestamp {
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
    sql: ${TABLE}.DT_TRANSACAO_TIMESTAMP ;;
  }

  dimension: flag_funcionario {
    type: string
    sql: ${TABLE}.FlagFuncionario ;;
  }

  dimension: id_conta {
    type: number
    sql: ${TABLE}.ID_CONTA ;;
  }

  dimension: id_doc {
    type: string
    sql: ${TABLE}.ID_DOC ;;
  }

  dimension: id_evento {
    type: number
    sql: ${TABLE}.ID_EVENTO ;;
  }

  dimension: id_fatocontadotz {
    type: number
    sql: ${TABLE}.ID_FATOCONTADOTZ ;;
  }

  dimension: id_operacao {
    type: number
    sql: ${TABLE}.ID_OPERACAO ;;
  }

  dimension: id_tipoajuste {
    type: number
    sql: ${TABLE}.ID_TIPOAJUSTE ;;
  }

  dimension: id_tipoevento {
    type: number
    sql: ${TABLE}.ID_TIPOEVENTO ;;
  }

  dimension: vl_transacao {
    type: number
    sql: ${TABLE}.VL_TRANSACAO ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
