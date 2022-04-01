view: vw_dim_fornecedor {
  sql_table_name: `DOTZ_CUBO.VW_DimFornecedor`
    ;;

  dimension: chave_fornecedor {
    type: number
    sql: ${TABLE}.ChaveFornecedor ;;
  }

  dimension: codigo_cnpjfornecedor {
    type: string
    sql: ${TABLE}.CodigoCNPJFornecedor ;;
  }

  dimension: codigo_fornecedor {
    type: string
    sql: ${TABLE}.CodigoFornecedor ;;
  }

  dimension: flag_fornecedor_ativo {
    type: string
    sql: ${TABLE}.FlagFornecedorAtivo ;;
  }

  dimension: nome_fornecedor {
    type: string
    sql: ${TABLE}.NomeFornecedor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  set: set_chaves {
    fields: [chave_fornecedor]
  }
}
