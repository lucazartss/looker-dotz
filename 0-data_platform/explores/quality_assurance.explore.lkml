include: "/core/core_explores/core_quality_assurance.explore"



explore: extended_quality_assurance {
  from: vw_quality_assurance
  label: "Análise de Quality Assurance"
  # fields: []
  extends: [vw_quality_assurance]
  view_name: vw_quality_assurance
}
