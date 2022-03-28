view: painel_kpi_tree_faturamento_macro {
  sql_table_name: `dotzcloud-datalabs-analytics.ANALYTICS_PROD.PAINEL_KPI_TREE_FATURAMENTO_MACRO`
    ;;

  dimension: clientes {
    type: number
    sql: ${TABLE}.clientes ;;
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
    sql: ${TABLE}.DATA ;;
  }

  dimension: faturamento {
    type: number
    sql: ${TABLE}.Faturamento ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}
