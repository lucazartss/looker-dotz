include: "/core/core_facts/vw_fato_troca.view"
include: "/core/core_dimensions/vw_dim_cliente_cubo.view"
include: "/core/core_dimensions/vw_dim_parceiro.view"
include: "/core/core_dimensions/vw_dim_filial_parceiro.view"
include: "/core/core_dimensions/vw_dim_fornecedor.view"
include: "/core/core_dimensions/vw_dim_origem_cadastro.view"
include: "/core/core_dimensions/vw_dim_origem_troca.view"
include: "/core/core_dimensions/vw_dim_pos.view"
include: "/core/core_dimensions/vw_dim_produto_troca.view"
include: "/core/core_dimensions/vw_dim_status_troca.view"
include: "/core/core_dimensions/vw_dim_hierarquia_regional.view"


explore: vw_fato_troca {
  label: "Análise de Trocas"
  extension: required
  view_label: "Trocas"
  fields: [ALL_FIELDS*,
    -vw_dim_cliente_cubo.set_chaves*,
    -vw_dim_fornecedor.set_chaves*,
    -vw_fato_troca.set_chaves*,
    -vw_dim_filial_parceiro.set_chaves*,
    -vw_dim_cliente_cubo.set_codigos*,
    -vw_dim_filial_parceiro.set_codigos*]


  join: vw_dim_cliente_cubo {
    view_label: "Cliente"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_troca.chave_cliente}=${vw_dim_cliente_cubo.chave_cliente} ;;
  }
  join: vw_dim_filial_parceiro {
    view_label: "Parceiro"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_troca.chave_filial_parceiro}=${vw_dim_filial_parceiro.chave_filial_parceiro} and
            ${vw_fato_troca.chave_parceiro}=${vw_dim_filial_parceiro.chave_parceiro};;
  }
        join: vw_dim_hierarquia_regional {
          view_label: "Hierarquia Regional"
          type: inner
          relationship: many_to_one
          sql_on: ${vw_dim_filial_parceiro.chave_hierarquia_regional}=${vw_dim_hierarquia_regional.chave_hierarquia_regional} ;;
        }
        join: vw_dim_parceiro {
        # fields: []
        type: inner
        relationship: many_to_one
        sql_on: ${vw_dim_filial_parceiro.chave_parceiro}=${vw_dim_parceiro.chave_parceiro} ;;
  }
  join: vw_dim_fornecedor {
    view_label: "Fornecedor"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_troca.chave_fornecedor}=${vw_dim_fornecedor.chave_fornecedor} ;;
  }
  join: vw_dim_origem_cadastro {
    view_label: "Origem Cadastro"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_troca.chave_origem}=${vw_dim_cliente_cubo.chave_origem_cadastro} ;;
  }
  join: vw_dim_origem_troca {
    view_label: "Origem Troca"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_troca.chave_origem_troca}=${vw_dim_origem_troca.chave_origem_troca} ;;
  }
  join: vw_dim_pos {
    view_label: "Pos"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_troca.chave_pos}=${vw_dim_pos.chave_pos} ;;
  }
  join: vw_dim_produto_troca {
    view_label: "Produto Troca"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_troca.chave_produto_troca}=${vw_dim_produto_troca.chave_produto_troca} ;;
  }
  join: vw_dim_status_troca {
    view_label: "Status Troca"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_troca.chave_status_troca}=${vw_dim_status_troca.chave_status_troca} ;;
  }


}
