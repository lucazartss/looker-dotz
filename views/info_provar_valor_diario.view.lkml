view: info_provar_valor_diario {
  derived_table: {
    sql: SELECT * FROM `dotzcloud-datalabs-analytics.ANALYTICS_PROD.INFO_PROVAR_VALOR_DIARIO`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: nomeparceiro {
    type: string
    sql: ${TABLE}.Nomeparceiro ;;
  }

  dimension: chaveparceiro {
    type: number
    sql: ${TABLE}.chaveparceiro ;;
  }

  dimension: data {
    type: date
    datatype: date
    sql: ${TABLE}.DATA ;;
  }

  dimension: clientes_acumulo {
    type: number
    sql: ${TABLE}.Clientes_acumulo ;;
  }

  dimension: dotz_acumulado {
    type: number
    sql: ${TABLE}.Dotz_Acumulado ;;
  }

  dimension: fat_dotz_parceiro {
    type: number
    sql: ${TABLE}.Fat_Dotz_Parceiro ;;
  }

  dimension: tickets_acumulo {
    type: number
    sql: ${TABLE}.Tickets_acumulo ;;
  }

  dimension: fat_parcial {
    type: number
    sql: ${TABLE}.Fat_Parcial ;;
  }

  dimension: clientes_trocas {
    type: number
    sql: ${TABLE}.Clientes_trocas ;;
  }

  dimension: dotz_trocado {
    type: number
    sql: ${TABLE}.Dotz_Trocado ;;
  }

  dimension: valor_produto {
    type: number
    sql: ${TABLE}.Valor_produto ;;
  }

  dimension: tickets_troca {
    type: number
    sql: ${TABLE}.Tickets_Troca ;;
  }

  dimension: faturamento_total {
    type: number
    sql: ${TABLE}.Faturamento_total ;;
  }

  set: detail {
    fields: [
      nomeparceiro,
      chaveparceiro,
      data,
      clientes_acumulo,
      dotz_acumulado,
      fat_dotz_parceiro,
      tickets_acumulo,
      fat_parcial,
      clientes_trocas,
      dotz_trocado,
      valor_produto,
      tickets_troca,
      faturamento_total
    ]
  }
}
