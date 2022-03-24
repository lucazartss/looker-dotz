view: vw_dim_categoria_produto_troca {
  sql_table_name: `DOTZ_CUBO.VW_DimCategoriaProdutoTroca`
    ;;
  # extension: required
  dimension: chave_categoria_produto_troca {
    type: number
    sql: ${TABLE}.ChaveCategoriaProdutoTroca ;;
  }

  dimension: chave_categoria_produto_troca_pai {
    type: number
    sql: ${TABLE}.ChaveCategoriaProdutoTrocaPai ;;
  }

  dimension: codigo_categoria_produto_troca {
    type: number
    sql: ${TABLE}.CodigoCategoriaProdutoTroca ;;
  }

  dimension: descricao_categoria_produto_troca {
    type: string
    sql: ${TABLE}.DescricaoCategoriaProdutoTroca ;;
  }

  dimension: nome_categoria_produto_troca {
    type: string
    sql: ${TABLE}.NomeCategoriaProdutoTroca ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  set: set_chaves {
    fields: [chave_categoria_produto_troca,chave_categoria_produto_troca_pai]
  }
}
