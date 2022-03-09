view: base_trocas_app {
  sql_table_name: `dotzcloud-datalabs-analytics.ANALYTICS_PROD.BASE_TROCAS_APP`
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

  dimension: chave_fato_troca {
    type: number
    sql: ${TABLE}.ChaveFatoTroca ;;
  }

  dimension: chavecliente {
    type: number
    sql: ${TABLE}.chavecliente ;;
  }

  dimension_group: data_troca {
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
    sql: ${TABLE}.DataTroca ;;
  }

  dimension: nome_categoria_produto_troca {
    type: string
    sql: ${TABLE}.NomeCategoriaProdutoTroca ;;
  }

  dimension: nome_fornecedor {
    type: string
    sql: ${TABLE}.NomeFornecedor ;;
  }

  dimension: nome_produto_troca {
    type: string
    sql: ${TABLE}.NomeProdutoTroca ;;
  }

  dimension: quantidade_dotz_troca {
    type: number
    sql: ${TABLE}.QuantidadeDotzTroca ;;
  }

  dimension: tipo_troca {
    type: string
    sql: ${TABLE}.TipoTroca ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sum_of_quantidade_dotz_troca {
    sql: sum(${TABLE}.QuantidadeDotzTroca) ;;
  }

  measure: qtd_troca {
    sql: count(distinct(${TABLE}.ChaveFatoTroca)) ;;
  }

  measure: qtd_clientes_troca {
    sql: count(distinct(${TABLE}.ChaveCliente)) ;;
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
        sum(${TABLE}.QuantidadeDotzTroca)
      {% elsif Tipo_dado._parameter_value == "Transacoes" %}
        count(distinct(${TABLE}.ChaveFatoTroca))
      {% elsif Tipo_dado._parameter_value == "Clientes" %}
        count(distinct(${TABLE}.ChaveCliente))
      {% elsif Tipo_dado._parameter_value == "Receita" %}
        0
      {% else %}
        sum(${TABLE}.QuantidadeDotzTroca)
      {% endif %} ;;
    value_format: "#,##0.00"
  }

}
