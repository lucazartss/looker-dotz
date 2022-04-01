view: vw_fato_extrato {
  sql_table_name: `DOTZ_CUBO.VW_FatoExtrato`
    ;;

  dimension: chave_aplicacao {
    type: number
    description: "FK - Relacionamento com a tabela DimAplicacao, campo ChaveAplicacao."
    sql: ${TABLE}.ChaveAplicacao ;;
  }

  dimension: chave_arquivo_credito {
    type: number
    description: "Código do arquivo de onde a transação se originou, associado a DimArquivoCredito."
    sql: ${TABLE}.ChaveArquivoCredito ;;
  }

  dimension: chave_canal_origem_parceiro {
    type: number
    description: "FK - Relacionamento com a tabela DimCanalOrigemParceiro, campo ChaveCanalOrigemParceiro."
    sql: ${TABLE}.ChaveCanalOrigemParceiro ;;
  }

  dimension: chave_cliente {
    type: number
    description: "Código do cliente titular que efetuou a compra, associado a DimClienteBase."
    sql: ${TABLE}.ChaveCliente ;;
  }

  dimension: chave_cliente_comprador {
    type: number
    description: "Código do cliente que efetuou a compra, associado a DimClienteBase."
    sql: ${TABLE}.ChaveClienteComprador ;;
  }

  dimension: chave_cliente_telecom {
    type: number
    description: "Código do celular do cliente Vivo, associado a DimClienteTelecom."
    sql: ${TABLE}.ChaveClienteTelecom ;;
  }

  dimension: chave_fato_extrato {
    type: string
    description: "Surrogate key da tabela."
    sql: ${TABLE}.ChaveFatoExtrato ;;
  }

  dimension: chave_filial_parceiro {
    type: number
    description: "Código da filial da compra, associado a DimFilialParceiro (usar ChaveFilialParceiro e ChaveParceiro)."
    sql: ${TABLE}.ChaveFilialParceiro ;;
  }

  dimension: chave_multiplicador {
    type: number
    sql: ${TABLE}.ChaveMultiplicador ;;
  }

  dimension: chave_parceiro {
    type: number
    description: "Código do parceiro da compra, associado a DimParceiro."
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: chave_pos {
    type: number
    description: "Código do POS onde a transação foi efetuada, associado a DimPos."
    sql: ${TABLE}.ChavePos ;;
  }

  dimension: chave_produto_credito {
    type: number
    description: "Código do produto associado a transação, associado a DimProdutoCredito."
    sql: ${TABLE}.ChaveProdutoCredito ;;
  }

  dimension: chave_promocao {
    type: number
    description: "Código da promoção da compra, associado a DimPromoção."
    sql: ${TABLE}.ChavePromocao ;;
  }

  dimension: chave_tipo_transacao_credito {
    type: number
    description: "Código do tipo da transação (baseado na CodigoTipoTransacao), associado a DimTipoTransacaoCredito."
    sql: ${TABLE}.ChaveTipoTransacaoCredito ;;
  }

  dimension: codigo_sub_tipo_promocao {
    type: number
    description: "Código do tipo da promoção (replicado a partir da DimPromocao), ex: Indústria, Base, Bônus."
    sql: ${TABLE}.CodigoSubTipoPromocao ;;
  }

  dimension: codigo_tipo_transacao {
    type: number
    description: "Código (vindo da origem) que identifica o tipo da transação (ex: Troca, Crédito, Estorno de Crédito)."
    sql: ${TABLE}.CodigoTipoTransacao ;;
  }

  dimension: codigo_transacao_fila {
    type: string
    description: "Código identificador da transação (em conjunto com o CodigoTipoTransacao)."
    sql: ${TABLE}.CodigoTransacaoFila ;;
  }

  dimension_group: data_check_in {
    type: time
    description: "Data da entrada do cliente (checkin) - utilizado por exemplo em reservas de hotel."
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
    sql: ${TABLE}.DataCheckIn ;;
  }

  dimension_group: data_check_out {
    type: time
    description: "Data da saida (em casos como reservas) ou da compra da transação."
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
    sql: ${TABLE}.DataCheckOut ;;
  }

  dimension_group: data_processamento_transacao {
    type: time
    description: "Data em que a transação foi processada."
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
    sql: ${TABLE}.DataProcessamentoTransacao ;;
  }

  dimension: flag_cliente_cadastrado {
    type: string
    description: "Indica se o cliente é cadastrado ou não."
    sql: ${TABLE}.FlagClienteCadastrado ;;
  }

  dimension: quantidade_dotz {
    type: number
    description: "Quantidade de Dotz da transação."
    sql: ${TABLE}.QuantidadeDotz ;;
  }

  dimension: quantidade_ticket {
    type: number
    description: "Quantidade de produtos na transação."
    sql: ${TABLE}.QuantidadeTicket ;;
  }

  dimension: valor_custo_mecanica {
    type: number
    description: "Fator de conversão de Dotz da mecânica da transação."
    sql: ${TABLE}.ValorCustoMecanica ;;
  }

  dimension: valor_promocao_emissao {
    type: number
    description: "Fator de conversão de Dotz da mecânica da transação."
    sql: ${TABLE}.ValorPromocaoEmissao ;;
  }

  dimension: valor_promocao_resgate {
    type: number
    description: "Fator de conversão de Dotz na troca."
    sql: ${TABLE}.ValorPromocaoResgate ;;
  }

  dimension: valor_ticket_total {
    type: number
    description: "Valor total da transação."
    sql: ${TABLE}.ValorTicketTotal ;;
  }

  dimension: valor_ticket_unitario {
    type: number
    description: "Valor de cada unidade do produto."
    sql: ${TABLE}.ValorTicketUnitario ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  set: set_chaves {
    fields: [
              chave_aplicacao,
              chave_arquivo_credito,
              chave_canal_origem_parceiro,
              chave_cliente,
              chave_cliente_comprador,
              chave_cliente_telecom,
              chave_filial_parceiro,
              chave_fato_extrato,
              chave_multiplicador,
              chave_parceiro,
              chave_pos,
              chave_produto_credito,
              chave_promocao,
              chave_tipo_transacao_credito
    ]
  }

  set: set_codigos {
    fields: [
              codigo_sub_tipo_promocao,
              codigo_tipo_transacao,
              codigo_transacao_fila
    ]
  }
}
