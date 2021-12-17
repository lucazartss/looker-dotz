view: tab_projeto_varejo_2_insights {
  derived_table: {
    sql: SELECT * FROM `dotzcloud-datalabs-analytics.ANALYTICS_PROD.TAB_PROJETO_VAREJO_2_INSIGHTS`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: nome_parceiro {
    type: string
    sql: ${TABLE}.NomeParceiro ;;
  }

  dimension: migracao {
    type: string
    sql: ${TABLE}.Migracao ;;
  }

  dimension: clientes {
    type: number
    sql: ${TABLE}.clientes ;;
  }

  dimension: cliente_atual {
    type: number
    sql: ${TABLE}.Cliente_Atual ;;
  }

  dimension: faturamento_atual {
    type: number
    sql: ${TABLE}.FATURAMENTO_ATUAL ;;
  }

  set: detail {
    fields: [nome_parceiro, migracao, clientes, cliente_atual, faturamento_atual]
  }
}
