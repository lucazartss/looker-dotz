view: vw_fato_extrato_estorno_fila {
  sql_table_name: `DOTZ_CUBO.VW_FatoExtratoEstornoFila`
    ;;

  dimension: chave_arquivo_credito {
    type: number
    sql: ${TABLE}.ChaveArquivoCredito ;;
  }

  dimension: chave_cliente {
    type: number
    sql: ${TABLE}.ChaveCliente ;;
  }

  dimension: chave_cliente_comprador {
    type: number
    sql: ${TABLE}.ChaveClienteComprador ;;
  }

  dimension: chave_cliente_telecom {
    type: number
    sql: ${TABLE}.ChaveClienteTelecom ;;
  }

  dimension: chave_fato_extrato_estorno_fila {
    type: number
    sql: ${TABLE}.ChaveFatoExtratoEstornoFila ;;
  }

  dimension: chave_fatura {
    type: number
    sql: ${TABLE}.ChaveFatura ;;
  }

  dimension: chave_filial_parceiro {
    type: number
    sql: ${TABLE}.ChaveFilialParceiro ;;
  }

  dimension: chave_parceiro {
    type: number
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: chave_pos {
    type: number
    sql: ${TABLE}.ChavePos ;;
  }

  dimension: chave_produto_credito {
    type: number
    sql: ${TABLE}.ChaveProdutoCredito ;;
  }

  dimension: chave_promocao {
    type: number
    sql: ${TABLE}.ChavePromocao ;;
  }

  dimension: chave_status_transacao {
    type: number
    sql: ${TABLE}.ChaveStatusTransacao ;;
  }

  dimension: chave_tipo_moeda {
    type: number
    sql: ${TABLE}.ChaveTipoMoeda ;;
  }

  dimension: chave_tipo_transacao_credito {
    type: number
    sql: ${TABLE}.ChaveTipoTransacaoCredito ;;
  }

  dimension: codigo_sub_tipo_promocao {
    type: number
    sql: ${TABLE}.CodigoSubTipoPromocao ;;
  }

  dimension: codigo_ticket {
    type: string
    sql: ${TABLE}.CodigoTicket ;;
  }

  dimension: codigo_tipo_transacao {
    type: number
    sql: ${TABLE}.CodigoTipoTransacao ;;
  }

  dimension: codigo_transacao_fila {
    type: string
    sql: ${TABLE}.CodigoTransacaoFila ;;
  }

  dimension_group: data_check_in {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataCheckIn ;;
  }

  dimension_group: data_check_out {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataCheckOut ;;
  }

  dimension_group: data_criacao_transacao {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataCriacaoTransacao ;;
  }

  dimension: data_deposito {
    type: number
    sql: ${TABLE}.DataDeposito ;;
  }

  dimension: data_expiracao {
    type: number
    sql: ${TABLE}.DataExpiracao ;;
  }

  dimension_group: data_processamento_transacao {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataProcessamentoTransacao ;;
  }

  dimension: flag_cliente_cadastrado {
    type: string
    sql: ${TABLE}.FlagClienteCadastrado ;;
  }

  dimension: flag_deposito_direto {
    type: string
    sql: ${TABLE}.FlagDepositoDireto ;;
  }

  dimension: flag_transacao_credito_fila {
    type: string
    sql: ${TABLE}.FlagTransacaoCreditoFila ;;
  }

  dimension: quantidade_dotz {
    type: number
    sql: ${TABLE}.QuantidadeDotz ;;
  }

  dimension: quantidade_dotz_expirados {
    type: number
    sql: ${TABLE}.QuantidadeDotzExpirados ;;
  }

  dimension: quantidade_dotz_resgatado {
    type: number
    sql: ${TABLE}.QuantidadeDotzResgatado ;;
  }

  dimension: quantidade_ticket {
    type: number
    sql: ${TABLE}.QuantidadeTicket ;;
  }

  dimension: valor_custo_mecanica {
    type: number
    sql: ${TABLE}.ValorCustoMecanica ;;
  }

  dimension: valor_promocao_emissao {
    type: number
    sql: ${TABLE}.ValorPromocaoEmissao ;;
  }

  dimension: valor_promocao_resgate {
    type: number
    sql: ${TABLE}.ValorPromocaoResgate ;;
  }

  dimension: valor_ticket_total {
    type: number
    sql: ${TABLE}.ValorTicketTotal ;;
  }

  dimension: valor_ticket_unitario {
    type: number
    sql: ${TABLE}.ValorTicketUnitario ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  set: set_chaves {
    fields: [
              chave_arquivo_credito,
              chave_cliente,
              chave_cliente_comprador,
              chave_cliente_telecom,
              chave_fato_extrato_estorno_fila,
              chave_fatura,
              chave_filial_parceiro,
              chave_parceiro,
              chave_pos,
              chave_produto_credito,
              chave_promocao,
              chave_status_transacao,
              chave_tipo_moeda,
              chave_tipo_transacao_credito
    ]
  }

  set: set_codigos {
    fields: [
              codigo_sub_tipo_promocao,
              codigo_ticket,
              codigo_tipo_transacao,
              codigo_transacao_fila
    ]
  }
}
