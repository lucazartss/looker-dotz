view: base_saldo_conta_dotz {
  sql_table_name: `dotzcloud-datalabs-analytics.ANALYTICS_PROD.BASE_SALDO_CONTA_DOTZ`
    ;;

  dimension_group: ano_mes {
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
    sql: ${TABLE}.AnoMes ;;
  }

  dimension: chave_cliente {
    type: number
    sql: ${TABLE}.ChaveCliente ;;
  }

  dimension_group: data_fechamento_mes {
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
    sql: ${TABLE}.DataFechamentoMes ;;
  }

  dimension: nu_cpf {
    type: string
    sql: ${TABLE}.NuCPF ;;
  }

  dimension: saldo {
    type: number
    sql: ${TABLE}.Saldo ;;
  }

  dimension: tipo_saldo {
    type: string
    sql: ${TABLE}.TipoSaldo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  parameter: Tipo_dado {
    type: unquoted
    allowed_value: {
      label: "Faturamento"
      value: "Faturamento"
    }
    allowed_value: {
      label: "Transações"
      value: "Transacoes"
    }
    allowed_value: {
      label: "Clientes"
      value: "Clientes"
    }
    allowed_value: {
      label: "Receita"
      value: "Receita"
    }
  }

  measure: dado_dinamico {
    sql:
      {% if Tipo_dado._parameter_value == "Faturamento" %}
        sum(${TABLE}.Saldo)
      {% elsif Tipo_dado._parameter_value == "Transacoes" %}
        0
      {% elsif Tipo_dado._parameter_value == "Clientes" %}
        count(distinct(case when ${TABLE}.Saldo > 0 then ${TABLE}.NuCPF else null end))
      {% elsif Tipo_dado._parameter_value == "Receita" %}
        0
      {% else %}
        sum(${TABLE}.QuantidadeDotzTroca)
      {% endif %} ;;
    value_format: "#,##0.00"
  }

}
