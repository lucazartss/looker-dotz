include: "/core/core_facts/vw_fato_passagem_aerea.view"
include: "/core/core_dimensions/vw_dim_cliente_cubo.view"
include: "/core/core_dimensions/vw_dim_companhia_aerea.view"
include: "/core/core_dimensions/vw_dim_trecho.view"


explore: vw_fato_passagem_aerea {
  label: "Análise de Passagens Aereas"
  extension: required
  view_label: "Passagens Aereas"
  fields: [ALL_FIELDS*,
                      -vw_dim_cliente_cubo.set_chaves*,
                      -vw_fato_passagem_aerea.set_chaves*,
          ]


  join: vw_dim_cliente_cubo {
    view_label: "Cliente"
    type: left_outer
    relationship: many_to_one
    sql_on: ${vw_fato_passagem_aerea.chave_cliente}=${vw_dim_cliente_cubo.chave_cliente} ;;
  }
  join: vw_dim_companhia_aerea {
    view_label: "Companhia Aerea"
    type: left_outer
    relationship: many_to_one
    sql_on: ${vw_fato_passagem_aerea.chave_companhia_aerea}=${vw_dim_companhia_aerea.chave_companhia_aerea} ;;
  }
  join: vw_dim_trecho {
    view_label: "Trecho"
    type: left_outer
    relationship: many_to_one
    sql_on: ${vw_fato_passagem_aerea.chave_trecho}=${vw_dim_trecho.chave_trecho} ;;
  }

  }
