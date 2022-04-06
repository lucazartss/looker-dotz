# The name of this view in Looker is "Dash Varejo Sku3"
view: dash_varejo_sku3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dotzcloud-datalabs-analytics.ANALYTICS_PROD.DASH_VAREJO_SKU3`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Abcatual" in Explore.

  dimension: abcatual {
    type: string
    sql: ${TABLE}.ABCatual ;;
  }

  dimension: clientes {
    type: number
    sql: ${TABLE}.Clientes ;;
  }

  dimension: compras_total {
    type: number
    sql: ${TABLE}.ComprasTotal ;;
  }

  dimension: faturamento {
    type: number
    sql: ${TABLE}.Faturamento ;;
  }

  dimension: nome_parceiro {
    type: string
    sql: ${TABLE}.NomeParceiro ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.Periodo ;;
  }

  dimension: produtos {
    type: number
    sql: ${TABLE}.Produtos ;;
  }

  dimension: tipo_atual {
    type: string
    sql: ${TABLE}.TipoAtual ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_clientes {
    type: sum
    sql: ${clientes} ;;
  }

  measure: total_produtos {
    type: sum
    sql: ${produtos} ;;
  }

  measure: total_faturamento {
    type: sum
    sql: ${faturamento} ;;
  }

  measure: total_compras {
    type: sum
    sql: ${compras_total} ;;
  }

  set: detail {
    fields: [
      abcatual,
      clientes,
      compras_total,
      faturamento,
      nome_parceiro,
      periodo,
      produtos,
      tipo_atual
    ]
  }

}
