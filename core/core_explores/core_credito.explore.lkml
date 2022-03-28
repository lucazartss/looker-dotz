include: "/core/core_facts/vw_fato_extrato_cubo.view"
include: "/core/core_dimensions/vw_dim_parceiro.view"
include: "/core/core_dimensions/vw_dim_filial_parceiro.view"
include: "/core/core_dimensions/vw_dim_hierarquia_regional.view"
include: "/core/core_dimensions/vw_dim_produto_credito.view"
include: "/core/core_dimensions/vw_dim_produto_credito_fornecedor.view"
include: "/core/core_dimensions/vw_dim_promocao.view"
include: "/core/core_dimensions/vw_dim_tipo_transacao_credito.view"



explore: vw_fato_extrato_cubo {
  label: "Análise de Crédito"
  extension: required
  view_label: "Crédito"
  fields: [
    ALL_FIELDS*,
    -vw_fato_extrato_cubo.set_chaves*,
    -vw_fato_extrato_cubo.set_codigos*,
    -vw_dim_filial_parceiro.set_chaves*
  ]


  join: vw_dim_filial_parceiro {
    view_label: "Filial Parceiro"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_extrato_cubo.chave_filial_parceiro}=${vw_dim_filial_parceiro.chave_filial_parceiro} and
      ${vw_fato_extrato_cubo.chave_parceiro}=${vw_dim_filial_parceiro.chave_parceiro};;
  }
          # join: vw_dim_hierarquia_regional {
          #   view_label: "Hierarquia regional"
          #   type: left_outer
          #   relationship: many_to_one
          #   sql_on: ${vw_dim_filial_parceiro.chave_parceiro}= ;;
          # }
          join: vw_dim_parceiro {
            view_label: "Parceiro"
            type: inner
            relationship: many_to_one
            sql_on: ${vw_dim_filial_parceiro.chave_parceiro}=${vw_dim_parceiro.chave_parceiro} ;;
          }
  join: vw_dim_hierarquia_regional {
    view_label: "Hierarquia Regional"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_extrato_cubo.chave_hierarquia_regional}=${vw_dim_hierarquia_regional.chave_hierarquia_regional} ;;
  }
  join: vw_dim_produto_credito {
    view_label: "Produto de Crédito"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_extrato_cubo.chave_produto_credito}=${vw_dim_produto_credito.chave_produto_credito} ;;
  }
            join: vw_dim_produto_credito_fornecedor {
              view_label: "Produto de Crédito"
              type: left_outer
              relationship: many_to_one
              sql_on: ${vw_dim_produto_credito.chave_fornecedor}=${vw_dim_produto_credito_fornecedor.chave_produto_credito_fornecedor} ;;
            }
  join: vw_dim_promocao {
    view_label: "Promocão"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_extrato_cubo.chave_promocao}=${vw_dim_promocao.chave_promocao} ;;
  }
  join: vw_dim_tipo_transacao_credito {
    view_label: "Tipo de Transação"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_extrato_cubo.chave_tipo_transacao_credito}=${vw_dim_tipo_transacao_credito.chave_tipo_transacao_credito} ;;
  }




}
