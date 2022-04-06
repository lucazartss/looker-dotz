# The name of this view in Looker is "Dash Varejo Sku4a"
view: dash_varejo_sku4a {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dotzcloud-datalabs-analytics.ANALYTICS_PROD.DASH_VAREJO_SKU4a`
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

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_clientes {
    type: sum
    sql: ${clientes} ;;
  }

  measure: average_clientes {
    type: average
    sql: ${clientes} ;;
  }

  dimension: clientes_total {
    type: number
    sql: ${TABLE}.ClientesTotal ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: data_atual {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataAtual ;;
  }

  dimension: faturamento2 {
    type: number
    sql: ${TABLE}.Faturamento2 ;;
  }

  dimension: faturamento_atual {
    type: number
    sql: ${TABLE}.FaturamentoAtual ;;
  }

  dimension: nome_parceiro {
    type: string
    sql: ${TABLE}.NomeParceiro ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.Periodo ;;
  }

  dimension: produtos_atual {
    type: number
    sql: ${TABLE}.ProdutosAtual ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: tickets {
    type: number
    sql: ${TABLE}.Tickets ;;
  }

  dimension: tickets_atual {
    type: number
    sql: ${TABLE}.TicketsAtual ;;
  }

  dimension: tipo_atual {
    type: string
    sql: ${TABLE}.TipoAtual ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  set: detail{
    fields:[
     faturamento2,
    faturamento_atual,
    nome_parceiro,
    periodo,
    produtos_atual,
    sku,
    tickets,
    tickets_atual,
    tipo_atual
    ]
  }
}
