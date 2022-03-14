view: base_metas_payments_2022s1 {
  derived_table: {
    sql: SELECT * FROM ANALYTICS_PROD.TB_METAS_PAYMENTS_2022S1
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
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
    sql: ${TABLE}.Data ;;
  }

  dimension: indicador {
    type: string
    sql: ${TABLE}.Indicador ;;
  }

  dimension: visao {
    type: string
    sql: ${TABLE}.Visao ;;
  }

  dimension: valor_atual {
    type: number
    sql: ${TABLE}.Valor_atual ;;
  }

  dimension: valor_anterior {
    type: number
    sql: ${TABLE}.valor_anterior ;;
  }

  dimension: variacao {
    type: number
    sql: ${TABLE}.Variacao ;;
  }

  set: detail {
    fields: [
      data_date,
      indicador,
      visao,
      valor_atual,
      valor_anterior,
      variacao
    ]
  }

  parameter: Tipo_dado {
    type: unquoted
    allowed_value: {
      label: "Mensal"
      value: "Mensal"
    }
    allowed_value: {
      label: "Semanal"
      value: "Semanal"
    }
  }

  measure: dado_dinamico {
    sql:
      {% if Tipo_dado._parameter_value == "Mensal" %}
        DATE_TRUNC(${TABLE}.Data, month)
      {% elsif Tipo_dado._parameter_value == "Semanal" %}
        DATE_TRUNC(${TABLE}.Data, week)
      {% else %}
        0
      {% endif %} ;;
    value_format: "YYYY-MM-DD"
  }

}
