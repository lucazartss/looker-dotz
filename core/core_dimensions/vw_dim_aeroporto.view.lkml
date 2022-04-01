view: vw_dim_aeroporto {
  sql_table_name: `DOTZ_CUBO.VW_DimAeroporto`
    ;;
  # extension: required
  dimension: chave_aeroporto_destino {
    type: number
    sql: ${TABLE}.ChaveAeroportoDestino ;;
  }

  dimension: codigo_aeroporto_destino {
    type: string
    sql: ${TABLE}.CodigoAeroportoDestino ;;
  }

  dimension: descricao_aeroporto_destino {
    type: string
    sql: ${TABLE}.DescricaoAeroportoDestino ;;
  }

  dimension: descricao_cidade {
    type: string
    sql: ${TABLE}.DescricaoCidade ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  set: set_chaves {
    fields: [chave_aeroporto_destino]
  }
}
