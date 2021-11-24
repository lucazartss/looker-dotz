view: cat_filial_parceiros_base_completa {
  sql_table_name: `dotzcloud-datalabs-analytics.ANALYTICS_PROD.CAT_FILIAL_PARCEIROS_BASE_COMPLETA`
    ;;

  dimension: ativo {
    type: string
    sql: ${TABLE}.Ativo ;;
  }

  dimension: bu {
    type: string
    sql: ${TABLE}.BU ;;
  }

  dimension: categoria_parceiro {
    type: string
    sql: ${TABLE}.Categoria_parceiro ;;
  }

  dimension: chavefilialparceiro {
    type: number
    sql: ${TABLE}.chavefilialparceiro ;;
  }

  dimension: chaveparceiro {
    type: number
    sql: ${TABLE}.chaveparceiro ;;
  }

  dimension: primary_key {
    primary_key: yes
    sql: CONCAT(${chavefilialparceiro}, ${chaveparceiro}) ;;
  }

  dimension: cidade {
    type: string
    sql: ${TABLE}.Cidade ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension: nomefilialparceiro {
    type: string
    sql: ${TABLE}.nomefilialparceiro ;;
  }

  dimension: nomeparceiro {
    type: string
    sql: ${TABLE}.nomeparceiro ;;
  }

  dimension_group: primeira_transacao {
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
    sql: ${TABLE}.Primeira_Transacao ;;
  }

  dimension_group: ultima_transacao {
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
    sql: ${TABLE}.Ultima_Transacao ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
