include: "/core/core_explores/core_parados.explore"



explore: extended_parados {
  from: vw_fato_extrato_estorno_fila
  label: "Análise de Parados"
  # fields: []
  extends: [vw_fato_extrato_estorno_fila]
  view_name: vw_fato_extrato_estorno_fila
}
