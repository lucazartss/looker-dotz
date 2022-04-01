view: vw_fato_passagem_aerea {
  sql_table_name: `DOTZ_CUBO.VW_FatoPassagemAerea`
    ;;

  dimension: chave_aeroporto_destino {
    type: number
    sql: ${TABLE}.ChaveAeroportoDestino ;;
  }

  dimension: chave_aeroporto_origem {
    type: number
    sql: ${TABLE}.ChaveAeroportoOrigem ;;
  }

  dimension: chave_cliente {
    type: number
    sql: ${TABLE}.ChaveCliente ;;
  }

  dimension: chave_companhia_aerea {
    type: number
    sql: ${TABLE}.ChaveCompanhiaAerea ;;
  }

  dimension: chave_faixa_horario_chegada {
    type: number
    sql: ${TABLE}.ChaveFaixaHorarioChegada ;;
  }

  dimension: chave_faixa_horario_reserva {
    type: number
    sql: ${TABLE}.ChaveFaixaHorarioReserva ;;
  }

  dimension: chave_faixa_horario_saida {
    type: number
    sql: ${TABLE}.ChaveFaixaHorarioSaida ;;
  }

  dimension: chave_faixa_horario_troca {
    type: number
    sql: ${TABLE}.ChaveFaixaHorarioTroca ;;
  }

  dimension: chave_fato_passagem_aerea {
    type: number
    sql: ${TABLE}.ChaveFatoPassagemAerea ;;
  }

  dimension: chave_flag_fato_passagem_aerea {
    type: number
    sql: ${TABLE}.ChaveFlagFatoPassagemAerea ;;
  }

  dimension: chave_passageiro {
    type: number
    sql: ${TABLE}.ChavePassageiro ;;
  }

  dimension: chave_periodo_chegada {
    type: number
    sql: ${TABLE}.ChavePeriodoChegada ;;
  }

  dimension: chave_periodo_reserva {
    type: number
    sql: ${TABLE}.ChavePeriodoReserva ;;
  }

  dimension: chave_periodo_saida {
    type: number
    sql: ${TABLE}.ChavePeriodoSaida ;;
  }

  dimension: chave_periodo_troca {
    type: number
    sql: ${TABLE}.ChavePeriodoTroca ;;
  }

  dimension: chave_trecho {
    type: number
    sql: ${TABLE}.ChaveTrecho ;;
  }

  dimension: codigo_solicitacao_troca {
    type: number
    sql: ${TABLE}.CodigoSolicitacaoTroca ;;
  }

  dimension: flag_troca_valida {
    type: string
    sql: ${TABLE}.FlagTrocaValida ;;
  }

  dimension: nome_passageiro {
    type: string
    sql: ${TABLE}.NomePassageiro ;;
  }

  dimension: quantidade_dotz {
    type: number
    sql: ${TABLE}.QuantidadeDotz ;;
  }

  dimension: valor_tarifa {
    type: number
    sql: ${TABLE}.ValorTarifa ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  set: set_chaves {
    fields: [
              chave_aeroporto_destino,
              chave_aeroporto_origem,
              chave_cliente,
              chave_companhia_aerea,
              chave_faixa_horario_chegada,
              chave_faixa_horario_reserva,
              chave_faixa_horario_saida,
              chave_faixa_horario_troca,
              chave_fato_passagem_aerea,
              chave_flag_fato_passagem_aerea,
              chave_passageiro,
              chave_periodo_chegada,
              chave_periodo_reserva,
              chave_periodo_saida,
              chave_periodo_troca,
              chave_trecho
    ]
  }

  set: set_codigos {
    fields: [
              codigo_solicitacao_troca
    ]
  }
}
