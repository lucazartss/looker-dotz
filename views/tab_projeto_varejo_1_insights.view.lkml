view: tab_projeto_varejo_1_insights {
  derived_table: {
    sql: SELECT * FROM `dotzcloud-datalabs-analytics.ANALYTICS_PROD.TAB_PROJETO_VAREJO_1_INSIGHTS`
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

  dimension: cli_total {
    type: number
    sql: ${TABLE}.cli_total ;;
  }

  dimension: data_cat_atual {
    type: date
    datatype: date
    sql: ${TABLE}.DATA_CAT_ATUAL ;;
  }

  dimension: classificacao_atual {
    type: string
    sql: ${TABLE}.CLASSIFICACAO_ATUAL ;;
  }

  dimension: curva_atual {
    type: string
    sql: ${TABLE}.CURVA_ATUAL ;;
  }

  dimension: fat_atual {
    type: number
    sql: ${TABLE}.fat_atual ;;
  }

  dimension: cli_atual {
    type: number
    sql: ${TABLE}.cli_atual ;;
  }

  dimension: tickets_atual {
    type: number
    sql: ${TABLE}.TICKETS_ATUAL ;;
  }

  dimension: data_cat_anterior {
    type: date
    datatype: date
    sql: ${TABLE}.DATA_CAT_ANTERIOR ;;
  }

  dimension: classificacao_anterior {
    type: string
    sql: ${TABLE}.CLASSIFICACAO_ANTERIOR ;;
  }

  dimension: curva_anterior {
    type: string
    sql: ${TABLE}.CURVA_ANTERIOR ;;
  }

  dimension: fat_anterior {
    type: number
    sql: ${TABLE}.fat_anterior ;;
  }

  dimension: cli_anterior {
    type: number
    sql: ${TABLE}.cli_anterior ;;
  }

  dimension: tickets_anterior {
    type: number
    sql: ${TABLE}.TICKETS_ANTERIOR ;;
  }

  dimension: media_freq_total {
    type: number
    sql: ${TABLE}.MEDIA_FREQ_TOTAL ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.PERIODO ;;
  }

  measure: navigation_bar {

    type: count

    html:

    <nav style="font-size: 12px; padding: 5px 10px 0 10px; height: 20px;">

     <a style="padding: 5px 15px; border-top: solid 1px #c8c8c8; border-left: solid 1px #c8c8c8; border-right: solid 1px #c8c8c8; border-radius: 10px 10px 0 0; float: left; line-height: 40px; font-weight: bold; color: #3d3d3d; background-color: #c8c8c8;" href="/dashboards/22?Periodo={{_filters['tab_projeto_varejo_1_insights.periodo']}}&Parceiro={{_filters['tab_projeto_varejo_1_insights.nome_parceiro']}}" target="_self"/>Faturamento visão clientes DZ


    <a style="padding: 5px 15px; border-top: solid 1px #c8c8c8; border-left: solid 1px #c8c8c8; border-right: solid 1px #c8c8c8; border-radius: 10px 10px 0 0; float: left; line-height: 40px; font-weight: bold; color: #3d3d3d; background-color: #f4f4f4;" href="https://dotz.com"/>Frequência compra/ticket

    <a style="padding: 5px 15px; border-top: solid 1px #c8c8c8; border-left: solid 1px #c8c8c8; border-right: solid 1px #c8c8c8; border-radius: 10px 10px 0 0; float: left; line-height: 40px; font-weight: bold; color: #3d3d3d; background-color: #f4f4f4;" href="https://dotz.com"/>Gasto médio

    <a style="padding: 5px 15px; border-top: solid 1px #c8c8c8; border-left: solid 1px #c8c8c8; border-right: solid 1px #c8c8c8; border-radius: 10px 10px 0 0; float: left; line-height: 40px; font-weight: bold; color: #3d3d3d; background-color: #f4f4f4;" href="https://dotz.com"/>Clientes inativos

    <a style="padding: 5px 15px; border-top: solid 1px #c8c8c8; border-left: solid 1px #c8c8c8; border-right: solid 1px #c8c8c8; border-radius: 10px 10px 0 0; float: left; line-height: 40px; font-weight: bold; color: #3d3d3d; background-color: #f4f4f4;" href="https://dotz.com"/>Potencial novos clientes

    <a style="padding: 5px 15px; border-top: solid 1px #c8c8c8; border-left: solid 1px #c8c8c8; border-right: solid 1px #c8c8c8; border-radius: 10px 10px 0 0; float: left; line-height: 40px; font-weight: bold; color: #3d3d3d; background-color: #f4f4f4;" href="https://dotz.com"/>Categorias
    </nav>

    ;;

    }

  set: detail {
    fields: [
      nome_parceiro,
      cli_total,
      data_cat_atual,
      classificacao_atual,
      curva_atual,
      fat_atual,
      cli_atual,
      tickets_atual,
      data_cat_anterior,
      classificacao_anterior,
      curva_anterior,
      fat_anterior,
      cli_anterior,
      tickets_anterior,
      media_freq_total
    ]
  }
}
