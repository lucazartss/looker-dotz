view: vw_dim_produto_troca {
  sql_table_name: `DOTZ_CUBO.VW_DimProdutoTroca`
    ;;

  dimension: chave_fornecedor_preferencial {
    type: number
    description: "Código associado ao fornecedor preferencial para considerar a troca. Ex: 1006739."
    sql: ${TABLE}.ChaveFornecedorPreferencial ;;
  }

  dimension: chave_produto_troca {
    type: number
    description: "Surrogate Key."
    sql: ${TABLE}.ChaveProdutoTroca ;;
  }

  dimension: chave_produto_troca_pai {
    type: number
    description: "Utilizada para construção da hierarquia."
    sql: ${TABLE}.ChaveProdutoTrocaPai ;;
  }

  dimension: codigo_ean {
    type: string
    description: "Código de barras."
    sql: ${TABLE}.CodigoEAN ;;
  }

  dimension: codigo_produto_troca {
    type: number
    description: "Código associado ao produto troca."
    sql: ${TABLE}.CodigoProdutoTroca ;;
  }

  dimension: codigo_status_produto_troca {
    type: number
    description: "Código associado ao status do produto troca."
    sql: ${TABLE}.CodigoStatusProdutoTroca ;;
  }

  dimension: codigo_tipo_produto_troca {
    type: number
    description: "Código associado ao tipo do produto troca."
    sql: ${TABLE}.CodigoTipoProdutoTroca ;;
  }

  dimension: codigo_tipo_troca {
    type: number
    description: "Código associado ao tipo da troca."
    sql: ${TABLE}.CodigoTipoTroca ;;
  }

  dimension: descricao_fornecedor_preferencial {
    type: string
    sql: ${TABLE}.DescricaoFornecedorPreferencial ;;
  }

  dimension: descricao_status_produto_troca {
    type: string
    description: "Descrição do código do status do produto troca. Sendo que para 0 eu tenho Inativo, 1 Ativo, 2 Arquivado e arquivo e 3 Auditoria."
    sql: ${TABLE}.DescricaoStatusProdutoTroca ;;
  }

  dimension: descricao_tipo_produto_troca {
    type: string
    description: "Descrição associada ao tipo da troca."
    sql: ${TABLE}.DescricaoTipoProdutoTroca ;;
  }

  dimension: descricao_tipo_troca {
    type: string
    sql: ${TABLE}.DescricaoTipoTroca ;;
  }

  dimension: flag_grupo_produto_troca {
    type: string
    description: "Identifica se o produto troca pertence à um grupo. Ex: S, N e I S para Sim, N para Não e I para Indefinido. Construção do campo: SELECT top 100 CASE p.agrupador WHEN 1 THEN 'S' WHEN 0 THEN 'N' ELSE 'I' END AS FlagGrupoProdutoTroca FROM dotzdw_stage.dbo.produto p with ( nolock )."
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
    description: "Nome do produto troca, o mesmo que título."
    sql: ${TABLE}.NomeProdutoTroca ;;
  }

  dimension: quantidade_dotz {
    type: number
    description: "Informação da quantidade de Dotz acumulados."
    sql: ${TABLE}.QuantidadeDotz ;;
  }

  dimension: valor_frete_produto_troca {
    type: number
    description: "Valor de frete para o produto troca."
    sql: ${TABLE}.ValorFreteProdutoTroca ;;
  }

  dimension: valor_produto_troca {
    type: number
    description: "Valor do produto troca."
    sql: ${TABLE}.ValorProdutoTroca ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
