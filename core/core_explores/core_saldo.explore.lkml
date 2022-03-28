include: "/core/core_facts/vw_fato_cliente.view"
include: "/core/core_dimensions/vw_dim_cliente_cubo.view"
include: "/core/core_dimensions/vw_dim_hierarquia_regional.view"


explore: vw_fato_cliente {
  label: "Análise de Saldo"
  extension: required
  view_label: "Saldo"

  join: vw_dim_cliente_cubo {
    view_label: "Cliente"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_fato_cliente.chave_cliente}=${vw_dim_cliente_cubo.chave_cliente} ;;
  }
          join: vw_dim_hierarquia_regional {
            view_label: "Hierarquia Regional"
            type: inner
            relationship: many_to_one
            sql_on: ${vw_dim_cliente_cubo.chave_hierarquia_regional}=${vw_dim_hierarquia_regional.chave_hierarquia_regional} ;;
          }
}
