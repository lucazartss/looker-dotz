include: "/core/core_explores/core_faturamento.explore"



explore: extended_faturamento {
  from: vw_fato_faturamento_parceiro_dia
  label: "Análise de Faturamento"
  # fields: []
  extends: [vw_fato_faturamento_parceiro_dia]
  view_name: vw_fato_faturamento_parceiro_dia
}
