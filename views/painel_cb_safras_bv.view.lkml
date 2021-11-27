view: painel_cb_safras_bv {
  sql_table_name: `dotzcloud-datalabs-analytics.ANALYTICS_PROD.PAINEL_CB_SAFRAS_BV`
    ;;

  dimension: ativado {
    type: number
    sql: ${TABLE}.Ativado ;;
  }

  dimension: canal_venda {
    type: string
    sql: ${TABLE}.CanalVenda ;;
  }

  dimension_group: data_atuzalizacao {
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
    sql: ${TABLE}.data_atuzalizacao ;;
  }

  dimension: mes_ativacao {
    type: number
    sql: ${TABLE}.mes_ativacao ;;
  }

  dimension: mes_venda {
    type: number
    sql: ${TABLE}.mes_venda ;;
  }

  dimension: vendas {
    type: number
    sql: ${TABLE}.Vendas ;;
  }

  dimension: vendas_sum {
    type: number
    sql: ${TABLE}.vendas_sum ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: vendas_calculo {
    type: sum
    sql:  ${TABLE}.vendas ;;

  }
}
