include: "/core/core_dimensions/vw_quality_assurance.view"
include: "/core/core_dimensions/vw_dim_cliente_cubo.view"
include: "/core/core_dimensions/vw_dim_parceiro.view"
include: "/core/core_dimensions/vw_dim_filial_parceiro.view"
include: "/core/core_dimensions/vw_dim_hierarquia_regional.view"



explore: vw_quality_assurance {
  label: "Análise de Quality Assurance"
  extension: required
  view_label: "Quality Assurance"


  join: vw_dim_filial_parceiro {
    view_label: "Filial Parceiro"
    type: inner
    relationship: many_to_one
    sql_on: ${vw_quality_assurance.chave_filial_parceiro}=${vw_dim_filial_parceiro.chave_filial_parceiro} and
            ${vw_quality_assurance.chave_parceiro}=${vw_dim_filial_parceiro.chave_parceiro};;
  }
          join: vw_dim_hierarquia_regional {
            view_label: "Hierarquia Regional"
            type: inner
            relationship: many_to_one
            sql_on: ${vw_dim_filial_parceiro.chave_hierarquia_regional}=${vw_dim_hierarquia_regional.chave_hierarquia_regional} ;;
          }
          join: vw_dim_parceiro {
            view_label: "Hierarquia Regional"
            type: inner
            relationship: many_to_one
            sql_on: ${vw_dim_filial_parceiro.chave_parceiro}=${vw_dim_parceiro.chave_parceiro} ;;
          }

  }
