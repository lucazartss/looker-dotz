view: vw_dim_trecho {
  sql_table_name: `DOTZ_CUBO.VW_DimTrecho`
    ;;

  dimension: chave_trecho {
    type: number
    sql: ${TABLE}.ChaveTrecho ;;
  }

  dimension: codigo_aeroporto_destino {
    type: string
    sql: ${TABLE}.CodigoAeroportoDestino ;;
  }

  dimension: codigo_aeroporto_origem {
    type: string
    sql: ${TABLE}.CodigoAeroportoOrigem ;;
  }

  dimension: codigo_aeroporto_origem_destino {
    type: string
    sql: ${TABLE}.CodigoAeroportoOrigemDestino ;;
  }

  dimension: distancia {
    type: number
    sql: ${TABLE}.Distancia ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
