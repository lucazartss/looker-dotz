view: base_saldo_conta_dotz {
  sql_table_name: `dotzcloud-datalabs-analytics.ANALYTICS_PROD.BASE_SALDO_CONTA_DOTZ`
    ;;

  dimension_group: ano_mes {
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
    sql: ${TABLE}.AnoMes ;;
  }

  dimension: chave_cliente {
    type: number
    sql: ${TABLE}.ChaveCliente ;;
  }

  dimension_group: data_fechamento_mes {
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
    sql: ${TABLE}.DataFechamentoMes ;;
  }

  dimension: nu_cpf {
    type: string
    sql: ${TABLE}.NuCPF ;;
  }

  dimension: saldo_dz {
    type: number
    sql: ${TABLE}.SaldoDz ;;
  }

  dimension: saldo_reais {
    type: number
    sql: ${TABLE}.SaldoReais ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
