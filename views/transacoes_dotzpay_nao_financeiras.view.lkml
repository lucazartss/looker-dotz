view: transacoes_dotzpay_nao_financeiras {
  derived_table: {
    sql: SELECT * FROM `dotzcloud-datalabs-analytics.ANALYTICS_PROD.TRANSACOES_DOTZPAY_NAO_FINANCEIRAS`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: data {
    type: date
    sql: ${TABLE}.data ;;
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

  dimension: modalidade {
    type: string
    sql: ${TABLE}.Modalidade ;;
  }

  dimension: id_conta {
    type: number
    sql: ${TABLE}.ID_CONTA ;;
  }

  dimension: nu_cpf {
    type: string
    sql: ${TABLE}.NuCpf ;;
  }

  dimension: sum_transacoes {
    type: number
    sql: ${TABLE}.SumTransacoes ;;
  }

  parameter: Tipo_dado {
    type: unquoted
    allowed_value: {
      label: "TPV"
      value: "TPV"
    }
    allowed_value: {
      label: "TPN"
      value: "TPN"
    }
    allowed_value: {
      label: "Clientes"
      value: "Clientes"
    }
    allowed_value: {
      label: "Receita"
      value: "Receita"
    }
    allowed_value: {
      label: "TPN por cliente"
      value: "TPN por cliente"
    }
    allowed_value: {
      label: "Dotz TPV"
      value: "Dotz TPV"
    }
  }

  measure: dado_dinamico {
    sql:
      {% if Tipo_dado._parameter_value == "TPV" %}
        null
      {% elsif Tipo_dado._parameter_value == "TPN" %}
        sum(${TABLE}.SumTransacoes)
      {% elsif Tipo_dado._parameter_value == "Clientes" %}
        count(distinct(${TABLE}.NuCpf))
      {% elsif Tipo_dado._parameter_value == "Receita" %}
        null
      {% elsif Tipo_dado._parameter_value == "TPN por cliente" %}
        sum(${TABLE}.SumTransacoes)/count(distinct(${TABLE}.NuCpf))
      {% elsif Tipo_dado._parameter_value == "Dotz TPV" %}
        null
      {% else %}
        null
      {% endif %} ;;
    value_format: "#,##0"
  }

  set: detail {
    fields: [data, modalidade, id_conta, nu_cpf, sum_transacoes]
  }
}
