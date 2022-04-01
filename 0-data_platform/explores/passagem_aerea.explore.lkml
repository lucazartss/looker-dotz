include: "/core/core_explores/core_passagem_aerea.explore"



explore: extended_passagem_aerea {
  from: vw_fato_passagem_aerea
  label: "Análise de Passagens Aereas"
  # fields: []
  extends: [vw_fato_passagem_aerea]
  view_name: vw_fato_passagem_aerea
}
