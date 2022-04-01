view: vw_dim_produto_credito_fornecedor {
  sql_table_name: `DOTZ_CUBO.VW_DimProdutoCreditoFornecedor`
    ;;

  dimension: chave_produto_credito_fornecedor {
    type: number
    sql: ${TABLE}.ChaveProdutoCreditoFornecedor ;;
  }

  dimension: codigo_cnpjfornecedor {
    type: string
    sql: ${TABLE}.CodigoCNPJFornecedor ;;
  }

  dimension: nome_fantasia_fornecedor {
    type: string
    sql: ${TABLE}.NomeFantasiaFornecedor ;;
  }

  dimension: nome_fornecedor {
    type: string
    sql: ${TABLE}.NomeFornecedor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
