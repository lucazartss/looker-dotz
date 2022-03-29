include: "/core/core_explores/core_credito.explore"



explore: extended_credito {
  from: vw_fato_extrato_cubo
  label: "Análise de Crédito"
  # fields: []
  extends: [vw_fato_extrato_cubo]
  view_name: vw_fato_extrato_cubo
}
