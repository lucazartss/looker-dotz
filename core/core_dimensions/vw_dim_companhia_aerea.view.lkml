view: vw_dim_companhia_aerea {
  sql_table_name: `DOTZ_CUBO.VW_DimCompanhiaAerea`
    ;;
  # extension: required
  dimension: chave_companhia_aerea {
    type: number
    sql: ${TABLE}.ChaveCompanhiaAerea ;;
  }

  dimension: codigo_companhia_aerea {
    type: string
    sql: ${TABLE}.CodigoCompanhiaAerea ;;
  }

  dimension: descricao_companhia_aerea {
    type: string
    sql: ${TABLE}.DescricaoCompanhiaAerea ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  set: set_chaves {
    fields: [chave_companhia_aerea]
  }
}
