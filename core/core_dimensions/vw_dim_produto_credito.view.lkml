view: vw_dim_produto_credito {
  sql_table_name: `DOTZ_CUBO.VW_DimProdutoCredito`
    ;;

  dimension: chave_fornecedor {
    type: number
    sql: ${TABLE}.ChaveFornecedor ;;
  }

  dimension: chave_parceiro {
    type: number
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: chave_produto_credito {
    type: number
    sql: ${TABLE}.ChaveProdutoCredito ;;
  }

  dimension: codigo_cnpjfornecedor {
    type: string
    sql: ${TABLE}.CodigoCNPJFornecedor ;;
  }

  dimension: codigo_ean {
    type: string
    sql: ${TABLE}.CodigoEAN ;;
  }

  dimension: codigo_produto_credito {
    type: number
    sql: ${TABLE}.CodigoProdutoCredito ;;
  }

  dimension: codigo_produto_parceiro {
    type: string
    sql: ${TABLE}.CodigoProdutoParceiro ;;
  }

  dimension: flag_nao_pontua {
    type: string
    sql: ${TABLE}.FlagNaoPontua ;;
  }

  dimension: flag_produto_credito_ativo {
    type: string
    sql: ${TABLE}.FlagProdutoCreditoAtivo ;;
  }

  dimension: nome_produto_credito {
    type: string
    sql: ${TABLE}.NomeProdutoCredito ;;
  }

  dimension: valor_unitario {
    type: number
    sql: ${TABLE}.ValorUnitario ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
