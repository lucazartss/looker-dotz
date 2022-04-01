view: vw_dim_origem_troca {
  sql_table_name: `DOTZ_CUBO.VW_DimOrigemTroca`
    ;;

  dimension: chave_origem_troca {
    type: number
    sql: ${TABLE}.ChaveOrigemTroca ;;
  }

  dimension: codigo_origem_troca {
    type: number
    sql: ${TABLE}.CodigoOrigemTroca ;;
  }

  dimension: descricao_origem_troca {
    type: string
    sql: ${TABLE}.DescricaoOrigemTroca ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
