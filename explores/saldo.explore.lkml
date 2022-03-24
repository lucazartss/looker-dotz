include: "/core/core_explores/core_saldo.explore"



explore: extended_saldo {
  from: vw_fato_cliente
  label: "Análise de Saldo"
  # fields: []
  extends: [vw_fato_cliente]
  view_name: vw_fato_cliente
}
