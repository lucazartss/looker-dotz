view: vw_fato_cliente {
  sql_table_name: `DOTZ_CUBO.VW_FatoCliente`
    ;;

  dimension: chave_cliente {
    type: number
    description: "Chave única da tabela."
    sql: ${TABLE}.ChaveCliente ;;
  }

  dimension: chave_fato_cliente {
    type: number
    description: "Surrogate Key da tabela."
    sql: ${TABLE}.ChaveFatoCliente ;;
  }

  dimension: flag_cliente_cadastrado {
    type: string
    description: "Indica se o cliente é cadastrado ou não."
    sql: ${TABLE}.FlagClienteCadastrado ;;
  }

  dimension: flag_pronto_troca250 {
    type: string
    description: "Saldo de pontos maior ou igual a 250."
    sql: ${TABLE}.FlagProntoTroca250 ;;
  }

  dimension: flag_pronto_troca500 {
    type: string
    description: "Saldo de pontos maior ou igual a 500."
    sql: ${TABLE}.FlagProntoTroca500 ;;
  }

  dimension: quantidade_pontos_creditados {
    type: number
    description: "Quantidade de pontos do último. acumulo"
    sql: ${TABLE}.QuantidadePontosCreditados ;;
  }

  dimension: quantidade_pontos_debitados {
    type: number
    description: "Quantidade de pontos que foram trocados na última transação."
    sql: ${TABLE}.QuantidadePontosDebitados ;;
  }

  dimension: quantidade_saldo {
    type: number
    description: "Saldo total de pontos."
    sql: ${TABLE}.QuantidadeSaldo ;;
  }

  dimension: quantidade_total_debito {
    type: number
    description: "Quantidade total de pontos desde o primeiro acumulo sem subtrair até a data atual."
    sql: ${TABLE}.QuantidadeTotalDebito ;;
  }

  dimension: quantitade_total_credito {
    type: number
    description: "Quantidade total dos pontos que foram utilizados desde a primeira troca até a data atual."
    sql: ${TABLE}.QuantitadeTotalCredito ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  set: set_chaves {
    fields: [
              chave_cliente,
              chave_fato_cliente
    ]
  }
}
