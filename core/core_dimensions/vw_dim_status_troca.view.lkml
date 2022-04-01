view: vw_dim_status_troca {
  sql_table_name: `DOTZ_CUBO.VW_DimStatusTroca`
    ;;

  dimension: chave_status_troca {
    type: number
    sql: ${TABLE}.ChaveStatusTroca ;;
  }

  dimension: codigo_status_troca {
    type: number
    sql: ${TABLE}.CodigoStatusTroca ;;
  }

  dimension: nome_status_troca {
    type: string
    sql: ${TABLE}.NomeStatusTroca ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
