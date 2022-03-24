view: vw_dim_produto_troca_cubo {
  sql_table_name: `DOTZ_CUBO.VW_DimProdutoTrocaCubo`
    ;;

  dimension: chave_fornecedor_preferencial {
    type: number
    sql: ${TABLE}.ChaveFornecedorPreferencial ;;
  }

  dimension: chave_produto_troca {
    type: number
    sql: ${TABLE}.ChaveProdutoTroca ;;
  }

  dimension: chave_produto_troca_pai {
    type: number
    sql: ${TABLE}.ChaveProdutoTrocaPai ;;
  }

  dimension: codigo_ean {
    type: string
    sql: ${TABLE}.CodigoEAN ;;
  }

  dimension: codigo_produto_troca {
    type: number
    sql: ${TABLE}.CodigoProdutoTroca ;;
  }

  dimension: codigo_status_produto_troca {
    type: number
    sql: ${TABLE}.CodigoStatusProdutoTroca ;;
  }

  dimension: codigo_tipo_produto_troca {
    type: number
    sql: ${TABLE}.CodigoTipoProdutoTroca ;;
  }

  dimension: codigo_tipo_troca {
    type: number
    sql: ${TABLE}.CodigoTipoTroca ;;
  }

  dimension: descricao_fornecedor_preferencial {
    type: string
    sql: ${TABLE}.DescricaoFornecedorPreferencial ;;
  }

  dimension: descricao_status_produto_troca {
    type: string
    sql: ${TABLE}.DescricaoStatusProdutoTroca ;;
  }

  dimension: descricao_tipo_produto_troca {
    type: string
    sql: ${TABLE}.DescricaoTipoProdutoTroca ;;
  }

  dimension: descricao_tipo_troca {
    type: string
    sql: ${TABLE}.DescricaoTipoTroca ;;
  }

  dimension: flag_grupo_produto_troca {
    type: string
    sql: ${TABLE}.FlagGrupoProdutoTroca ;;
  }

  dimension: flag_produto_trocado {
    type: string
    sql: ${TABLE}.FlagProdutoTrocado ;;
  }

  dimension: nome_grupo_produto_troca {
    type: number
    sql: ${TABLE}.NomeGrupoProdutoTroca ;;
  }

  dimension: nome_produto_troca {
    type: string
    sql: ${TABLE}.NomeProdutoTroca ;;
  }

  dimension: quantidade_dotz {
    type: number
    sql: ${TABLE}.QuantidadeDotz ;;
  }

  dimension: valor_frete_produto_troca {
    type: number
    sql: ${TABLE}.ValorFreteProdutoTroca ;;
  }

  dimension: valor_produto_troca {
    type: number
    sql: ${TABLE}.ValorProdutoTroca ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
