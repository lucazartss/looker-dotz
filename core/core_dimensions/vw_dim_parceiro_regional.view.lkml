view: vw_dim_parceiro_regional {
  sql_table_name: `DOTZ_CUBO.VW_DimParceiroRegional`
    ;;

  dimension: chave_parceiro {
    type: number
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: codigo_agrupamento_regional {
    type: number
    sql: ${TABLE}.CodigoAgrupamentoRegional ;;
  }

  dimension: descricao_agrupamento_regional {
    type: string
    sql: ${TABLE}.DescricaoAgrupamentoRegional ;;
  }

  dimension: nome_parceiro {
    type: string
    sql: ${TABLE}.NomeParceiro ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
