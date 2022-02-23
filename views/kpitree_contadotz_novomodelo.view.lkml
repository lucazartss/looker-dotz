view: kpitree_contadotz_novomodelo {
  sql_table_name: `dotzcloud-datalabs-analytics.ANALYTICS_PROD.KPITREE_CONTADOTZ_NOVOMODELO`
    ;;

  dimension: bu {
    type: string
    sql: ${TABLE}.BU ;;
  }

  dimension_group: data {
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
    sql: ${TABLE}.data ;;
  }

  dimension_group: data_atualizacao {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataAtualizacao ;;
  }

  dimension: indicador {
    type: string
    sql: ${TABLE}.Indicador ;;
  }

  dimension: kr {
    type: string
    sql: ${TABLE}.KR ;;
  }

  dimension: metrica {
    type: string
    sql: ${TABLE}.Metrica ;;
  }

  dimension: objetivo {
    type: string
    sql: ${TABLE}.Objetivo ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: valor {
    type: number
    sql: ${TABLE}.Valor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
