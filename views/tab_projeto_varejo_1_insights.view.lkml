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

    <div>
      <nav style="font-size: 12px; padding: 5px 10px 0 10px; height: 20px;width:100%;position:relative;">

      <a style="padding: 5px 15px; border-top: solid 1px #c8c8c8; border-left: solid 1px #c8c8c8; border-right: solid 1px #c8c8c8; border-radius: 10px 10px 0 0; float: left; line-height: 40px; font-weight: bold; color: #3d3d3d; background-color: #f4f4f4;" href="/embed/dashboards/21?Periodo={{_filters['tab_projeto_varejo_1_insights.periodo']}}&Parceiro={{_filters['tab_projeto_varejo_1_insights.nome_parceiro']}}" target="_self"/>Faturamento visão clientes DZ

      <a style="padding: 5px 15px; border-top: solid 1px #c8c8c8; border-left: solid 1px #c8c8c8; border-right: solid 1px #c8c8c8; border-radius: 10px 10px 0 0; float: left; line-height: 40px; font-weight: bold; color: #3d3d3d; background-color: #f4f4f4;" href="/embed/dashboards/30?Periodo={{_filters['tab_projeto_varejo_1_insights.periodo']}}&Parceiro={{_filters['tab_projeto_varejo_1_insights.nome_parceiro']}}" target="_self"/>Frequência compra/ticket

      <a style="padding: 5px 15px; border-top: solid 1px #c8c8c8; border-left: solid 1px #c8c8c8; border-right: solid 1px #c8c8c8; border-radius: 10px 10px 0 0; float: left; line-height: 40px; font-weight: bold; color: #3d3d3d; background-color: #f4f4f4;" href="https://dotz.com"/>Gasto médio

      <a style="padding: 5px 15px; border-top: solid 1px #c8c8c8; border-left: solid 1px #c8c8c8; border-right: solid 1px #c8c8c8; border-radius: 10px 10px 0 0; float: left; line-height: 40px; font-weight: bold; color: #3d3d3d; background-color: #f4f4f4;" href="https://dotz.com"/>Clientes inativos

      <a style="padding: 5px 15px; border-top: solid 1px #c8c8c8; border-left: solid 1px #c8c8c8; border-right: solid 1px #c8c8c8; border-radius: 10px 10px 0 0; float: left; line-height: 40px; font-weight: bold; color: #3d3d3d; background-color: #f4f4f4;" href="https://dotz.com"/>Potencial novos clientes

      <a style="padding: 5px 15px; border-top: solid 1px #c8c8c8; border-left: solid 1px #c8c8c8; border-right: solid 1px #c8c8c8; border-radius: 10px 10px 0 0; float: left; line-height: 40px; font-weight: bold; color: #3d3d3d; background-color: #f4f4f4;" href="https://dotz.com"/>Categorias
      </nav>
    <div>

    ;;

    }

  measure: navigation_bar2 {

    type: count

    html:

    <html>

      <head>
          <style>
              nav {
                  border: 1px;
                  background-color: green;
                  color: white;
                  padding: 6px;
              }

              a {
                  text-decoration: none;
                  color: white;
                  font-size: 20px;
              }
          </style>
      </head>

      <body>
          <h1>GeeksforGeeks</h1>
          <h2>HTML nav Tag</h2>
          <!-- nav tag starts -->
          <nav style="nav">
              <a href=
      "https://www.geeksforgeeks.org/">
                      Home</a> |
              <a href=
      "https://www.geeksforgeeks.org/company-interview-corner/">
                      Interview</a> |
              <a href=
      "https://www.geeksforgeeks.org/gate-cs-notes-gq/">
                      Gate</a> |
              <a href=
      "https://www.geeksforgeeks.org/data-structures/">
                      Data Structure</a> |
              <a href=
      "https://www.geeksforgeeks.org/fundamentals-of-algorithms/">
                      Algorithm</a>
          </nav>
          <!-- nav tag ends -->
      </body>

      </html>

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
