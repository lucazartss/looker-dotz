view: base_sku_final5 {
  sql_table_name: `dotzcloud-datalabs-analytics.ANALYTICS_PROD.BASE_SKU_FINAL5`
    ;;

  dimension: category_1_sku {
    type: string
    sql: ${TABLE}.CATEGORY_1_SKU ;;
  }

  dimension: category_2_sku {
    type: string
    sql: ${TABLE}.CATEGORY_2_SKU ;;
  }

  dimension: chave_cliente {
    type: number
    sql: ${TABLE}.ChaveCliente ;;
  }

  dimension: chave_parceiro {
    type: number
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: class_distancia {
    type: string
    sql: ${TABLE}.CLASS_DISTANCIA ;;
  }

  dimension: classificacao_anterior {
    type: string
    sql: ${TABLE}.CLASSIFICACAO_ANTERIOR ;;
  }

  dimension: classificacao_atual {
    type: string
    sql: ${TABLE}.CLASSIFICACAO_ATUAL ;;
  }

  dimension: curva_anterior {
    type: string
    sql: ${TABLE}.CURVA_ANTERIOR ;;
  }

  dimension: curva_atual {
    type: string
    sql: ${TABLE}.CURVA_ATUAL ;;
  }

  dimension_group: data_cat_anterior {
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
    sql: ${TABLE}.DATA_CAT_ANTERIOR ;;
  }

  dimension_group: data_cat_atual {
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
    sql: ${TABLE}.DATA_CAT_ATUAL ;;
  }

  dimension: distancia {
    type: number
    sql: ${TABLE}.DISTANCIA ;;
  }

  dimension: faturamento_anterior {
    type: number
    sql: ${TABLE}.FATURAMENTO_ANTERIOR ;;
  }

  dimension: faturamento_atual {
    type: number
    sql: ${TABLE}.FATURAMENTO_ATUAL ;;
  }

  dimension: nome_parceiro {
    type: string
    sql: ${TABLE}.NomeParceiro ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.PERIODO ;;
  }

  dimension: qtd_itens_anterior {
    type: number
    sql: ${TABLE}.QTD_ITENS_ANTERIOR ;;
  }

  dimension: qtd_itens_atual {
    type: number
    sql: ${TABLE}.QTD_ITENS_ATUAL ;;
  }

  dimension: qtd_produto_anterior {
    type: number
    sql: ${TABLE}.QTD_PRODUTO_ANTERIOR ;;
  }

  dimension: qtd_produto_atual {
    type: number
    sql: ${TABLE}.QTD_PRODUTO_ATUAL ;;
  }

  dimension: qtd_ticket_anterior {
    type: number
    sql: ${TABLE}.QTD_TICKET_ANTERIOR ;;
  }

  dimension: qtd_ticket_atual {
    type: number
    sql: ${TABLE}.QTD_TICKET_ATUAL ;;
  }

  dimension: ticket_id_anterior {
    type: string
    sql: ${TABLE}.TICKET_ID_ANTERIOR ;;
  }

  dimension: ticket_id_atual {
    type: string
    sql: ${TABLE}.TICKET_ID_ATUAL ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
