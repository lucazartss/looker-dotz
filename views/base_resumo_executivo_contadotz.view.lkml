view: base_resumo_executivo_contadotz {
  sql_table_name: `dotzcloud-datalabs-analytics.ANALYTICS_PROD.BASE_RESUMO_EXECUTIVO_CONTADOTZ`
    ;;

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

  dimension: id_conta {
    type: number
    sql: ${TABLE}.ID_CONTA ;;
  }

  dimension: modalidade {
    type: string
    sql: ${TABLE}.Modalidade ;;
  }

  dimension: natureza_transacao {
    type: string
    sql: ${TABLE}.natureza_transacao ;;
  }

  dimension: qtd_transacao {
    type: number
    sql: ${TABLE}.QtdTransacao ;;
  }

  dimension: receita {
    type: number
    sql: ${TABLE}.receita ;;
  }

  dimension: valor {
    type: number
    sql: ${TABLE}.Valor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  dimension: valor_ajustado {
    type: number
    sql: case when ${TABLE}.modalidade in ("Cartao Fisico","Cartao Virtual","QRcode","Compra Creditos","Recarga Celular","Pagamento de Contas",
                                                  "Saida Transferencia Bancaria","P2P Saida","PIX Enviado","Saque Cartao Elo")
              then (${TABLE}.Valor)*-1
              when ${TABLE}.modalidade in ("Conversao","P2P Entrada","PIX Recebido","Recarga Boleto","Recarga Transferencia Bancaria")
              then ${TABLE}.Valor
              else null END;;
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
      {% if Tipo_dado._parameter_value == "TPV" %}
        sum(${valor_ajustado})
      {% elsif Tipo_dado._parameter_value == "TPN" %}
        sum(${TABLE}.QtdTransacao)
      {% elsif Tipo_dado._parameter_value == "Clientes" %}
        count(distinct(${TABLE}.ID_CONTA))
      {% elsif Tipo_dado._parameter_value == "Receita" %}
        sum(${TABLE}.Receita)
      {% elsif Tipo_dado._parameter_value == "TPNporcliente" %}
        sum(case when ${TABLE}.natureza_transacao in ("Saldo") then null else ${TABLE}.QtdTransacao end)/
        count(distinct(case when ${TABLE}.natureza_transacao in ("Saldo") then null else ${TABLE}.ID_CONTA end))
        --sum(${TABLE}.QtdTransacao)/count(distinct(${TABLE}.ID_CONTA))
      {% elsif Tipo_dado._parameter_value == "DotzTPV" %}
        null
      {% else %}
        null
      {% endif %} ;;
    value_format: "#,##0"
  }

}
