view: dim_cliente_base {
  sql_table_name: `dotzcloud-datalabs-analytics.DW_VIEWS.DimClienteBase`
    ;;

  dimension: chave_cliente {
    type: number
    description: "Chave única da tabela"
    sql: ${TABLE}.ChaveCliente ;;
  }

  dimension: chave_faixa_saldo_cliente {
    type: number
    description: "Divide o Cliente em Faixa de Saldo"
    sql: ${TABLE}.ChaveFaixaSaldoCliente ;;
  }

  dimension: chave_filial_primeira_transacao {
    type: number
    description: "FK - Relacionamento com a tabela DimFilialParceiro, campo ChaveFilialParceiro (filial onde o cliente fez sua primeira transação). A regra é baseada na primeira transação do cliente (o tipo da promoção não influencia), ou na data de cadastro no caso dos clientes Angeloni."
    sql: ${TABLE}.ChaveFilialPrimeiraTransacao ;;
  }

  dimension: chave_hierarquia_regional {
    type: number
    description: "Regional do cliente, cujas faixas são definidas por BI e carregadas na tabela DimHierarquiaRegional. O cálculo de regional é realizado da seguinte forma: - Para clientes não cadastrados ou que possuem CEP inválido, utilizamos a regional da filial da última compra do cliente - Para clientes cadastrados com CEP válido, utilizamos o CEP de acordo com as faixas presentes na tabela DimHierarquiaRegional"
    sql: ${TABLE}.ChaveHierarquiaRegional ;;
  }

  dimension: chave_parceiro_primeira_transacao {
    type: number
    description: "FK - Relacionamento com a tabela DimFilialParceiro, campo ChaveParceiro (filial onde o cliente fez sua primeira transação). A regra é baseada na primeira transação do cliente (o tipo da promoção não influencia), ou na data de cadastro no caso dos clientes Angeloni."
    sql: ${TABLE}.ChaveParceiroPrimeiraTransacao ;;
  }

  dimension: chave_periodo_adesao_cartao_dotz {
    type: number
    description: "Data (código inteiro) em que o cliente adquiriu o cartão Dotz"
    sql: ${TABLE}.ChavePeriodoAdesaoCartaoDotz ;;
  }

  dimension: chave_periodo_cadastro {
    type: number
    description: "Data (código inteiro) em que o cliente se cadastrou no site (no caso de clientes cadastrados) ou em que o cliente foi inserido na base de identificadores (no caso de clientes não cadastrados)"
    sql: ${TABLE}.ChavePeriodoCadastro ;;
  }

  dimension: chave_periodo_inicio_programa {
    type: number
    description: "Data (código inteiro) da primeira interação do cliente com o programa. É a menor data entre a data de cadastro e a data da primeira transação."
    sql: ${TABLE}.ChavePeriodoInicioPrograma ;;
  }

  dimension: chave_periodo_primeira_transacao {
    type: number
    description: "FK - Relacionamento com a tabela Periodo, campo ChavePeriodo (data em que o cliente fez sua primeira transação). A regra é baseada na primeira transação do cliente (o tipo da promoção não influencia), ou na data de cadastro no caso dos clientes Angeloni."
    sql: ${TABLE}.ChavePeriodoPrimeiraTransacao ;;
  }

  dimension: chave_periodo_primeiro_efeito_rede {
    type: number
    description: "Data (código inteiro) do primeiro efeito de rede do cliente. Considera-se para efeito de rede apenas promoções base e excluindo os parceiros Dotz e DotzPromo."
    sql: ${TABLE}.ChavePeriodoPrimeiroEfeitoRede ;;
  }

  dimension: codigo_cliente {
    type: number
    description: "Código identificador do cliente vindo do ambiente transacional"
    sql: ${TABLE}.CodigoCliente ;;
  }

  dimension: codigo_cliente_nao_cadastrado {
    type: string
    description: "Código identificador de clientes não cadastrados (um CPF por exemplo)"
    sql: ${TABLE}.CodigoClienteNaoCadastrado ;;
  }

  dimension: codigo_status_conta {
    type: number
    description: "Status da conta do cliente (ex: 2, 7). O status 7 - Virtual, possui regras especiais no DW: - Clientes com origem de cadastro vinda do tombamento da Angeloni, mas que não tenham uma transação de migração de pontos são virtuais - Clientes não cadastrados, que só tenham transações na fila (não possuem pontos depositados em conta), são virtuais"
    sql: ${TABLE}.CodigoStatusConta ;;
  }

  dimension_group: data_atualizacao {
    type: time
    description: "Data em que o registro foi atualizado pela última vez"
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

  dimension_group: data_cadastro {
    type: time
    description: "Data em que o cliente se cadastrou no site (no caso de clientes cadastrados) ou em que o cliente foi inserido na base de identificadores (no caso de clientes não cadastrados)"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataCadastro ;;
  }

  dimension_group: data_compra_primeiro_efeito_rede {
    type: time
    description: "Data do primeiro efeito de rede do cliente. Considera-se para efeito de rede apenas promoções base e excluindo os parceiros Dotz e DotzPromo."
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
    sql: ${TABLE}.DataCompraPrimeiroEfeitoRede ;;
  }

  dimension_group: data_inicio_programa {
    type: time
    description: "Data da primeira interação do cliente com o programa. É a menor data entre a data de cadastro e a data da primeira transação."
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
    sql: ${TABLE}.DataInicioPrograma ;;
  }

  dimension_group: data_primeira_transacao {
    type: time
    description: "FK - Relacionamento com a tabela Periodo, campo ChavePeriodo (data em que o cliente fez sua primeira transação). A regra é baseada na primeira transação do cliente (o tipo da promoção não influencia), ou na data de cadastro no caso dos clientes Angeloni."
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
    sql: ${TABLE}.DataPrimeiraTransacao ;;
  }

  dimension: descricao_email {
    type: string
    description: "E-mail de cadastro do cliente (pode ser utilizado como login no site)"
    sql: ${TABLE}.DescricaoEmail ;;
  }

  dimension: descricao_status_conta {
    type: string
    description: "Status da conta do cliente (ex: Virtual, Ativado). O status 7 - Virtual, possui regras especiais no DW: - Clientes com origem de cadastro vinda do tombamento da Angeloni, mas que não tenham uma transação de migração de pontos são virtuais - Clientes não cadastrados, que só tenham transações na fila (não possuem pontos depositados em conta), são virtuais"
    sql: ${TABLE}.DescricaoStatusConta ;;
  }

  dimension: descricao_status_email {
    type: string
    description: "Status do e-mail do cliente (ex: U, P, FA, etc) - campo depreciado"
    sql: ${TABLE}.DescricaoStatusEmail ;;
  }

  dimension: flag_cartao_dotz {
    type: string
    description: "Flag que identifica se o cliente possui o cartão Dotz"
    sql: ${TABLE}.FlagCartaoDotz ;;
  }

  dimension: flag_cliente_cadastrado {
    type: string
    description: "Flag que identifica se o cliente é cadastrado ou não no site Dotz"
    sql: ${TABLE}.FlagClienteCadastrado ;;
  }

  dimension: flag_cliente_congelado {
    type: string
    description: "Flag que indica se o cliente não tem participação no programa Dotz. A regra parte do principio que todos os clientes são congelados e os retira de acordo com as seguintes cláusulas: - Clientes cadastrados após 2013-08-05 na origem de cadastro Angeloni não são congelados. - Clientes que tenham sido enviados em arquivos de cadastro 603 da Angeloni não são congelados. - Clientes cadastrados após 2009-10-01, desde que não seja na origem Angeloni ou em Sorteio de Crédito Consignado não são congelados. - Clientes com troca válida na Dotz após 2009-10-01 não são congelados. - Clientes com transação válida após 2009-10-01. exceto na mecânica de tombamento da Angeloni não são cadastrados. - Clientes cadastrados pelo programa Vivo não são congelados."
    sql: ${TABLE}.FlagClienteCongelado ;;
  }

  dimension: flag_cliente_piloto_vivo {
    type: string
    description: "Flag que indica se o cliente se cadastrou durante o projeto piloto da Vivo."
    sql: ${TABLE}.FlagClientePilotoVivo ;;
  }

  dimension: flag_cliente_telecom {
    type: string
    description: "Flag que indica se o cliente participa do programa Vivo (independente de ter sido na época do piloto ou não."
    sql: ${TABLE}.FlagClienteTelecom ;;
  }

  dimension: flag_cliente_valido {
    type: string
    description: "Flag que indica se o cliente é válido para ser abordado pela Dotz. A regra exclui clientes com status de conta 6 e 7 (excluído e virtual)."
    sql: ${TABLE}.FlagClienteValido ;;
  }

  dimension: flag_efeito_rede {
    type: string
    description: "Flag que identifica se o cliente já teve compras em mais de 1 parceiro Dotz (métrica PTD - não é considerado uma faixa de tempo)"
    sql: ${TABLE}.FlagEfeitoRede ;;
  }

  dimension: flag_lancamento_praca {
    type: string
    description: "Flag que indica se o cliente se cadastrou na praça antes ou após o lançamento físico da mesma."
    sql: ${TABLE}.FlagLancamentoPraca ;;
  }

  dimension: flag_pronto_troca250 {
    type: string
    description: "Flag que indica se o cliente possui pelo menos 250 Dotz de saldo"
    sql: ${TABLE}.FlagProntoTroca250 ;;
  }

  dimension: flag_pronto_troca500 {
    type: string
    description: "Flag que indica se o cliente possui pelo menos 500 Dotz de saldo"
    sql: ${TABLE}.FlagProntoTroca500 ;;
  }

  dimension: id_status_email {
    type: string
    description: "Status do e-mail do cliente (ex: U, P, FA, etc) - campo depreciado"
    sql: ${TABLE}.IdStatusEmail ;;
  }

  dimension: metadata__has_issues {
    type: yesno
    sql: ${TABLE}.METADATA.HAS_ISSUES ;;
    group_label: "Metadata"
    group_item_label: "Has Issues"
  }

  dimension: metadata__object_uri {
    type: string
    sql: ${TABLE}.METADATA.OBJECT_URI ;;
    group_label: "Metadata"
    group_item_label: "Object URI"
  }

  dimension: metadata__version {
    type: number
    sql: ${TABLE}.METADATA.VERSION ;;
    group_label: "Metadata"
    group_item_label: "Version"
  }

  dimension: numero_cartao_dotz {
    type: string
    description: "Número do cartão Dotz"
    sql: ${TABLE}.NumeroCartaoDotz ;;
  }

  dimension: numero_documento {
    type: string
    description: "CPF/CNPJ do cliente"
    sql: ${TABLE}.NumeroDocumento ;;
  }

  dimension: numero_identificador_telecom {
    type: string
    description: "Número do celular que o cliente cadastrou no programa da Vivo"
    sql: ${TABLE}.NumeroIdentificadorTelecom ;;
  }

  dimension: rowstamp {
    type: string
    sql: ${TABLE}.Rowstamp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
