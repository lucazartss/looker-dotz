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

  parameter: Tipo_dado {
    type: unquoted
    allowed_value: {
      label: "Faturamento"
      value: "vl_faturamento"
    }
    allowed_value: {
      label: "Transações"
      value: "qtd_transacoes"
    }
    allowed_value: {
      label: "Clientes"
      value: "qtd_clientes"
    }
  }

  measure: dado_dinamico{
    type: sum
    sql: ${TABLE}.{% parameter Tipo_dado %} ;;
  }

  #measure: dado_dinamico {
    #sql:
      #{% if Tipo_dado._parameter_value == "Faturamento"}
        #${vl_faturamento}
      #{% else if Tipo_dado._parameter_value == "Transações"}
        #${qtd_transacoes}
      #{% else if Tipo_dado._parameter_value == "Clientes"}
        #${qtd_clientes}
      #{% else %}
      #{% endif %} ;;
  #}


  }
