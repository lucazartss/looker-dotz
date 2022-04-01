include: "/core/core_facts/vw_fato_extrato_estorno_fila.view"
include: "/core/core_dimensions/vw_dim_cliente_cubo.view"
include: "/core/core_dimensions/vw_dim_parceiro.view"
include: "/core/core_dimensions/vw_dim_filial_parceiro.view"
include: "/core/core_dimensions/vw_dim_fornecedor.view"
include: "/core/core_dimensions/vw_dim_origem_cadastro.view"
include: "/core/core_dimensions/vw_dim_tipo_transacao_credito.view"
include: "/core/core_dimensions/vw_dim_status_transacao_credito.view"
include: "/core/core_dimensions/vw_dim_produto_troca.view"
include: "/core/core_dimensions/vw_dim_promocao.view"
include: "/core/core_dimensions/vw_dim_hierarquia_regional.view"




explore: vw_fato_extrato_estorno_fila {
  label: "Análise de Parados"
  extension: required
  view_label: "Parados"


  join: vw_dim_cliente_cubo {
    view_label: "Cliente"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_extrato_estorno_fila.chave_cliente}=${vw_dim_cliente_cubo.chave_cliente} ;;
  }
            join: vw_dim_hierarquia_regional {
              view_label: "Hierarquia Regional Cliente"
              type: inner
              relationship: many_to_one
              sql_on: ${vw_dim_cliente_cubo.chave_hierarquia_regional}=${vw_dim_hierarquia_regional.chave_hierarquia_regional} ;;
            }
  join: vw_dim_filial_parceiro {
    view_label: "Parceiro"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_extrato_estorno_fila.chave_filial_parceiro}=${vw_dim_filial_parceiro.chave_filial_parceiro} and
            ${vw_fato_extrato_estorno_fila.chave_parceiro}=${vw_dim_filial_parceiro.chave_parceiro};;
  }
            join: vw_dim_parceiro {
              view_label: "Parceiro"
              type: inner
              relationship: many_to_one
              sql_on: ${vw_dim_filial_parceiro.chave_parceiro}=${vw_dim_parceiro.chave_parceiro} ;;
            }
            join: vw_dim_hierarquia_regional_filial {
              view_label: "Hierarquia Regional Filial"
              from: vw_dim_hierarquia_regional
              type: inner
              relationship: many_to_one
              sql_on: ${vw_dim_filial_parceiro.chave_hierarquia_regional}=${vw_dim_hierarquia_regional.chave_hierarquia_regional} ;;
            }
  join: vw_dim_promocao {
    view_label: "Promocao"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_extrato_estorno_fila.chave_promocao}=${vw_dim_promocao.chave_promocao} ;;
  }
  join: vw_dim_status_transacao_credito {
    view_label: "Status da Transação"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_extrato_estorno_fila.chave_status_transacao}=${vw_dim_status_transacao_credito.chave_status_transacao} ;;
  }
  join: vw_dim_tipo_transacao_credito {
    view_label: "Tipo de Transação"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_extrato_estorno_fila.chave_tipo_transacao_credito}=${vw_dim_tipo_transacao_credito.chave_tipo_transacao_credito} ;;
  }



}
