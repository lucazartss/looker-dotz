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

  dimension: id_conta {
    type: number
    sql: ${TABLE}.id_conta ;;
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
      value: "TPNporcliente"
    }
    allowed_value: {
      label: "Dotz TPV"
      value: "DotzTPV"
    }
  }

  measure: dado_dinamico {
    sql:
      {% if Tipo_dado._parameter_value == "DotzTPV" %}
        sum(${TABLE}.QuantidadeDotzTroca)
      {% elsif Tipo_dado._parameter_value == "TPN" %}
        count(distinct(${TABLE}.ChaveFatoTroca))
      {% elsif Tipo_dado._parameter_value == "Clientes" %}
        count(distinct(${TABLE}.id_conta))
      {% elsif Tipo_dado._parameter_value == "Receita" %}
        null
      {% elsif Tipo_dado._parameter_value == "TPNporcliente" %}
        count(distinct(${TABLE}.ChaveFatoTroca))/count(distinct(${TABLE}.id_conta))
      {% else %}
        null
      {% endif %} ;;
    value_format: "#,##0"
  }

}
