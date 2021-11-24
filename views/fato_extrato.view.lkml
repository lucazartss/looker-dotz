view: fato_extrato {
  sql_table_name: `dotzcloud-datalabs-analytics.DW_VIEWS.FatoExtrato`
    ;;

  dimension: chave_aplicacao {
    type: number
    description: "FK - Relacionamento com a tabela DimAplicacao, campo ChaveAplicacao"
    sql: ${TABLE}.ChaveAplicacao ;;
  }

  dimension: chave_arquivo_credito {
    type: number
    description: "Código do arquivo de onde a transação se originou, associado a DimArquivoCredito"
    sql: ${TABLE}.ChaveArquivoCredito ;;
  }

  dimension: chave_canal_origem_parceiro {
    type: number
    description: "FK - Relacionamento com a tabela DimCanalOrigemParceiro, campo ChaveCanalOrigemParceiro"
    sql: ${TABLE}.ChaveCanalOrigemParceiro ;;
  }

  dimension: chave_cliente {
    type: number
    description: "Código do cliente titular que efetuou a compra, associado a DimClienteBase"
    sql: ${TABLE}.ChaveCliente ;;
  }

  dimension: chave_cliente_comprador {
    type: number
    description: "Código do cliente que efetuou a compra, associado a DimClienteBase"
    sql: ${TABLE}.ChaveClienteComprador ;;
  }

  dimension: chave_cliente_telecom {
    type: number
    description: "Código do celular do cliente Vivo, associado a DimClienteTelecom"
    sql: ${TABLE}.ChaveClienteTelecom ;;
  }

  dimension: chave_fato_extrato {
    type: number
    description: "Surrogate key da tabela"
    primary_key: yes
    sql: ${TABLE}.ChaveFatoExtrato ;;
  }

  dimension: chave_fatura {
    type: number
    description: "Código da fatura ao qual a transação foi associada, ligado a DimFatura"
    sql: ${TABLE}.ChaveFatura ;;
  }

  dimension: chave_filial_parceiro {
    type: number
    description: "Código da filial da compra, associado a DimFilialParceiro (usar ChaveFilialParceiro e ChaveParceiro)"
    sql: ${TABLE}.ChaveFilialParceiro ;;
  }

  dimension: chave_multiplicador {
    type: number
    sql: ${TABLE}.ChaveMultiplicador ;;
  }

  dimension: chave_parceiro {
    type: number
    description: "Código do parceiro da compra, associado a DimParceiro"
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: chave_pos {
    type: number
    description: "Código do POS onde a transação foi efetuada, associado a DimPos"
    sql: ${TABLE}.ChavePos ;;
  }

  dimension: chave_produto_credito {
    type: number
    description: "Código do produto associado a transação, associado a DimProdutoCredito"
    sql: ${TABLE}.ChaveProdutoCredito ;;
  }

  dimension: chave_promocao {
    type: number
    description: "Código da promoção da compra, associado a DimPromoção"
    sql: ${TABLE}.ChavePromocao ;;
  }

  dimension: chave_status_transacao {
    type: number
    description: "Código do status da transação, associada a DimStatusTransacaoCredito (ex: 40000 - transação realizada)"
    sql: ${TABLE}.ChaveStatusTransacao ;;
  }

  dimension: chave_tipo_moeda {
    type: number
    description: "Código que indica qual é a moeda de troca para o pedido de troca gerado."
    sql: ${TABLE}.ChaveTipoMoeda ;;
  }

  dimension: chave_tipo_transacao_credito {
    type: number
    description: "Código do tipo da transação (baseado na CodigoTipoTransacao), associado a DimTipoTransacaoCredito"
    sql: ${TABLE}.ChaveTipoTransacaoCredito ;;
  }

  dimension: codigo_sub_tipo_promocao {
    type: number
    description: "Código do tipo da promoção (replicado a partir da DimPromocao), ex: Indústria, Base, Bônus"
    sql: ${TABLE}.CodigoSubTipoPromocao ;;
  }

  dimension: codigo_ticket {
    type: string
    description: "Código com o ticket da transação (presente em compras de supermercado por exemplo)"
    sql: ${TABLE}.CodigoTicket ;;
  }

  dimension: codigo_tipo_transacao {
    type: number
    description: "Código (vindo da origem) que identifica o tipo da transação (ex: Troca, Crédito, Estorno de Crédito)"
    sql: ${TABLE}.CodigoTipoTransacao ;;
  }

  dimension: codigo_transacao_fila {
    type: string
    description: "Código identificador da transação (em conjunto com o CodigoTipoTransacao)"
    sql: ${TABLE}.CodigoTransacaoFila ;;
  }

  dimension_group: data_atualizacao {
    type: time
    description: "Campo preenchido com um GETDATE() toda vez que a transação é atualizada/inserida"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataAtualizacao ;;
  }

  dimension_group: data_check_in {
    type: time
    description: "Data da entrada do cliente (checkin) - utilizado por exemplo em reservas de hotel"
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
    description: "Data da saida (em casos como reservas) ou da compra da transação"
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
    description: "Data em que a transação foi inserida para processamento"
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

  dimension_group: data_deposito {
    type: time
    description: "Data em que a transação foi depositada em conta"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataDeposito ;;
  }

  dimension_group: data_expiracao {
    type: time
    description: "Data em que esses pontos expirarão"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataExpiracao ;;
  }

  dimension_group: data_processamento_transacao {
    type: time
    description: "Data em que a transação foi processada"
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
    description: "Indica se o cliente é cadastrado ou não"
    sql: ${TABLE}.FlagClienteCadastrado ;;
  }

  dimension: flag_deposito_direto {
    type: string
    description: "Flag que identifica se a transação foi depositada diretamente, sem passar por intervenções manuais ou do sistema"
    sql: ${TABLE}.FlagDepositoDireto ;;
  }

  dimension: flag_transacao_credito_fila {
    type: string
    sql: ${TABLE}.FlagTransacaoCreditoFila ;;
  }

  dimension: flag_transacao_estornada {
    type: string
    description: "Flag que indica que a transação foi estronda"
    sql: ${TABLE}.FlagTransacaoEstornada ;;
  }

  dimension_group: metadata__data_atualizacao {
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
    sql: ${TABLE}.METADATA.DataAtualizacao ;;
    group_label: "Metadata"
    group_item_label: "Data Atualizacao"
  }

  dimension: metadata__flag_delete {
    type: yesno
    sql: ${TABLE}.METADATA.FlagDelete ;;
    group_label: "Metadata"
    group_item_label: "Flag Delete"
  }

  dimension: metadata__last_sent_row_hash {
    type: string
    sql: ${TABLE}.METADATA.LastSentRowHash ;;
    group_label: "Metadata"
    group_item_label: "Last Sent Row Hash"
  }

  dimension: metadata__row_hash {
    type: string
    sql: ${TABLE}.METADATA.RowHash ;;
    group_label: "Metadata"
    group_item_label: "Row Hash"
  }

  dimension: numero_documento_funcionario {
    type: string
    description: "CPF do funcionário da transação"
    sql: ${TABLE}.NumeroDocumentoFuncionario ;;
  }

  dimension: numero_identificador {
    type: string
    description: "Código do identificador sob o qual o cliente ganhou os Dotz (pode ser o CPF ou o número do cartão por exemplo)"
    sql: ${TABLE}.NumeroIdentificador ;;
  }

  dimension: numero_identificador_telecom {
    type: string
    description: "Número do celular do cliente Vivo"
    sql: ${TABLE}.NumeroIdentificadorTelecom ;;
  }

  dimension: quantidade_dotz {
    type: number
    description: "Quantidade de Dotz da transação"
    sql: ${TABLE}.QuantidadeDotz ;;
  }

  dimension: quantidade_dotz_expirados {
    type: number
    description: "Quantidade de pontos que foram expirados"
    sql: ${TABLE}.QuantidadeDotzExpirados ;;
  }

  dimension: quantidade_dotz_resgatado {
    type: number
    description: "Quantidade de pontos que já foram trocados"
    sql: ${TABLE}.QuantidadeDotzResgatado ;;
  }

  dimension: quantidade_horas_processamento {
    type: number
    sql: ${TABLE}.QuantidadeHorasProcessamento ;;
  }

  dimension: quantidade_horas_uteis_check_out {
    type: number
    sql: ${TABLE}.QuantidadeHorasUteisCheckOut ;;
  }

  dimension: quantidade_ticket {
    type: number
    description: "Quantidade de produtos na transação"
    sql: ${TABLE}.QuantidadeTicket ;;
  }

  dimension: valor_custo_mecanica {
    type: number
    description: "Fator de conversão de Dotz da mecânica da transação"
    sql: ${TABLE}.ValorCustoMecanica ;;
  }

  dimension: valor_promocao_emissao {
    type: number
    description: "Fator de conversão de Dotz da mecânica da transação"
    sql: ${TABLE}.ValorPromocaoEmissao ;;
  }

  dimension: valor_promocao_resgate {
    type: number
    description: "Fator de conversão de Dotz na troca"
    sql: ${TABLE}.ValorPromocaoResgate ;;
  }

  dimension: valor_ticket_total {
    type: number
    description: "Valor total da transação"
    sql: ${TABLE}.ValorTicketTotal ;;
  }

  dimension: valor_ticket_total_base {
    type: number
    description: "Armazena o ValorTicketTotal apenas onde o CodigoSubTipoPromocao = 1 (base)"
    sql: ${TABLE}.ValorTicketTotalBase ;;
  }

  dimension: valor_ticket_unitario {
    type: number
    description: "Valor de cada unidade do produto"
    sql: ${TABLE}.ValorTicketUnitario ;;
  }

  dimension: DataTransacao {
    type: date
    description: "DataCheckOut em formato DATE com fuso corrigido "
    sql: DATE(${TABLE}.DataCheckOut,"America/Santiago");;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: qtd_cliente {
    type: count_distinct
    sql: ${chave_cliente} ;;
  }

  measure: qtd_tickets  {
    type: count_distinct
    sql: ${chave_fato_extrato} ;;
  }

  measure: media_parceiro {
    type: number
    sql: ${qtd_tickets}/${qtd_cliente} ;;
  }

  measure: faturamento {
    type: sum
    sql: ${valor_ticket_total} ;;
  }


}
