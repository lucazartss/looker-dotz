view: transacoes_dotzpay {
  derived_table: {
    sql: SELECT * FROM `dotzcloud-datalabs-analytics.ANALYTICS_PROD.TRANSACOES_DOTZPAY`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id_fatocontadotz {
    type: number
    sql: ${TABLE}.ID_FATOCONTADOTZ ;;
  }

  dimension: id_conta {
    type: number
    sql: ${TABLE}.ID_CONTA ;;
  }

  dimension: data {
    type: date
    datatype: date
    sql: ${TABLE}.DATA ;;
  }

  dimension: modalidade {
    type: string
    sql: ${TABLE}.Modalidade ;;
  }

  dimension: meio_pagamento {
    type: string
    sql: ${TABLE}.MeioPagamento ;;
  }

  dimension: ds_status {
    type: string
    sql: ${TABLE}.DS_STATUS ;;
  }

  dimension: natureza_transacao {
    type: string
    sql: ${TABLE}.natureza_transacao ;;
  }

  dimension: ds_origem {
    type: string
    sql: ${TABLE}.DS_ORIGEM ;;
  }

  dimension: descricao {
    type: string
    sql: ${TABLE}.descricao ;;
  }

  dimension: flag_tpv {
    type: number
    sql: ${TABLE}.flag_tpv ;;
  }

  dimension: valor {
    type: number
    sql: ${TABLE}.Valor ;;
  }

  dimension: contagem_reversao1 {
    type: number
    sql: ${TABLE}.ContagemReversao1 ;;
  }

  dimension: receita {
    type: number
    sql: ${TABLE}.Receita ;;
  }

  set: detail {
    fields: [
      id_fatocontadotz,
      id_conta,
      data,
      modalidade,
      meio_pagamento,
      ds_status,
      natureza_transacao,
      ds_origem,
      descricao,
      flag_tpv,
      valor,
      contagem_reversao1,
      receita
    ]
  }

  measure: vl_faturamento {
    sql: sum(${TABLE}.Valor) ;;
  }

  measure: qtd_transacoes {
    sql: sum(${TABLE}.ContagemReversao1) ;;
  }

  measure: qtd_clientes {
    sql: count(distinct(${TABLE}.ID_CONTA)) ;;
  }

  measure: ticket_medio_transacao {
    sql: sum(${TABLE}.Valor)/sum(${TABLE}.ContagemReversao1) ;;
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

  dimension_group: Data_month {
    type: time
    timeframes:  [month]
    datatype: date
    sql: ${TABLE}.Data ;;
  }

  #measure: dado_dinamico{
  #  type: sum
  #  sql: ${TABLE}.{% parameter Tipo_dado %} ;;
  #}

  measure: dado_dinamico {
    sql:
      {% if Tipo_dado._parameter_value == "Faturamento" %}
        sum(${TABLE}.Valor)
      {% elsif Tipo_dado._parameter_value == "Transacoes" %}
        sum(${TABLE}.ContagemReversao1)
      {% elsif Tipo_dado._parameter_value == "Clientes" %}
        count(distinct(${TABLE}.ID_CONTA))
      {% elsif Tipo_dado._parameter_value == "Receita" %}
        sum(${TABLE}.Receita)
      {% else %}
        sum(${TABLE}.Valor)
      {% endif %} ;;
    value_format: "#,##0.00"
  }

  parameter: Teste_data {
    type: unquoted
    allowed_value: {
      label: "Mes atual"
      value: "MesAtual"
    }
    allowed_value: {
      label: "Mes anterior"
      value: "MesAnterior"
    }
  }

  dimension: teste_parametro_data {
    type: date
    sql: {% if Teste_data._parameter_value == "MesAtual" %}
        date_trunc(${TABLE}.data, month)
        {% elsif Teste_data._parameter_value == "MesAnterior" %}
        --${TABLE}.data
        date_sub(date_trunc(${TABLE}.data, month), INTERVAL 1 MONTH)
        {% else %}
        date_trunc(${TABLE}.data, month)
        {% endif %}
        ;;
  }

  }
