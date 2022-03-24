include: "/core/core_facts/vw_fato_faturamento_parceiro_dia.view"
include: "/core/core_dimensions/vw_dim_parceiro.view"
include: "/core/core_dimensions/vw_dim_filial_parceiro.view"
include: "/core/core_dimensions/vw_dim_hierarquia_regional.view"
include: "/core/core_dimensions/vw_dim_produto_credito.view"
include: "/core/core_dimensions/vw_dim_produto_credito_fornecedor.view"


explore: vw_fato_faturamento_parceiro_dia {
  label: "Análise de Faturamento"
  extension: required
  view_label: "Faturamento"
  fields: [
            ALL_FIELDS*,
            -vw_fato_faturamento_parceiro_dia.set_chaves*,
            -vw_dim_filial_parceiro.set_chaves*
  ]

  join: vw_dim_filial_parceiro {
    view_label: "Parceiro"
    type: left_outer
    relationship: many_to_one
    sql_on: ${vw_fato_faturamento_parceiro_dia.chave_filial_parceiro}=${vw_dim_filial_parceiro.chave_filial_parceiro} and
            ${vw_fato_faturamento_parceiro_dia.chave_parceiro}=${vw_dim_filial_parceiro.chave_parceiro};;
  }
        join: vw_dim_parceiro {
          view_label: "Parceiro"
          type: left_outer
          relationship: many_to_one
          sql_on: ${vw_dim_filial_parceiro.chave_parceiro}=${vw_dim_parceiro.chave_parceiro} ;;
        }
        join: vw_dim_hierarquia_regional {
          view_label: "Hierarquia Regional"
          type: left_outer
          relationship: many_to_one
          sql_on: ${vw_dim_filial_parceiro.chave_hierarquia_regional}=${vw_dim_hierarquia_regional.chave_hierarquia_regional} ;;
        }
  join: vw_dim_produto_credito {
    view_label: "Produto de Crédito"
    type: left_outer
    relationship: many_to_one
    sql_on: ${vw_fato_faturamento_parceiro_dia.chave_produto_credito}=${vw_dim_produto_credito.chave_produto_credito} ;;
  }
        join: vw_dim_produto_credito_fornecedor {
          view_label: "Produto de Crédito"
          type: left_outer
          relationship: many_to_one
          sql_on: ${vw_dim_produto_credito.chave_fornecedor}=${vw_dim_produto_credito_fornecedor.chave_produto_credito_fornecedor} ;;
        }


}
