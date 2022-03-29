include: "/core/core_explores/core_troca.explore"



# explore: extended_troca {
#   from: vw_fato_troca
#   label: "Análise de Troca"
#   # fields: []
#   extends: [vw_fato_troca]
#   view_name: vw_fato_troca
# }

explore: extended_troca {
  from: vw_fato_troca
  label: "Análise de Troca"
  extends: [vw_fato_troca]
  view_name: vw_fato_troca
}
