view: vw_fato_troca {
  sql_table_name: `DOTZ_CUBO.VW_FatoTroca`
    ;;

  dimension: chave_categoria_produto_troca {
    type: number
    description: "Código que identifica qual é a categoria do produto para a troca."
    sql: ${TABLE}.ChaveCategoriaProdutoTroca ;;
  }

  dimension: chave_cliente {
    type: number
    description: "Código surrogate key que identifica qual o cliente solicitou o pedido de troca."
    sql: ${TABLE}.ChaveCliente ;;
  }

  dimension: chave_dias_entrega {
    type: number
    sql: ${TABLE}.ChaveDiasEntrega ;;
  }

  dimension: chave_fato_troca {
    type: number
    description: "Surrogate Key."
    sql: ${TABLE}.ChaveFatoTroca ;;
  }

  dimension: chave_filial_parceiro {
    type: number
    description: "Código que identifica qual é a filial do parceiro que efetuou a troca."
    sql: ${TABLE}.ChaveFilialParceiro ;;
  }

  dimension: chave_fornecedor {
    type: number
    description: "Código que identifica qual é o fornecedor será responsável pelo troca do produto."
    sql: ${TABLE}.ChaveFornecedor ;;
  }

  dimension: chave_origem {
    type: number
    description: "Codigo que identifica a origem de cadastro. Este campo é movido pela tabela DimOrigemCadastro."
    sql: ${TABLE}.ChaveOrigem ;;
  }

  dimension: chave_origem_troca {
    type: number
    description: "Código que identifica de qual programa foi efetuado a troca. Este campo é movido da tabela."
    sql: ${TABLE}.ChaveOrigemTroca ;;
  }

  dimension: chave_parceiro {
    type: number
    description: "Código que informa o parceiro responsável pela troca."
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: chave_pos {
    type: number
    description: "Código que informa o número do aparelho no parceiro. Este campo é movido da tabela DimPos."
    sql: ${TABLE}.ChavePos ;;
  }

  dimension: chave_produto_troca {
    type: number
    description: "Código que identifica qual será o produto troca, este campo é movido da tabela DimProdutoTroca."
    sql: ${TABLE}.ChaveProdutoTroca ;;
  }

  dimension: chave_status_troca {
    type: number
    description: "Código que identifica em que status a troca está. Este campo é movido da tabela DimStatusTroca."
    sql: ${TABLE}.ChaveStatusTroca ;;
  }

  dimension: chave_tipo_moeda {
    type: number
    description: "Código que indica qual é a moeda de troca para o pedido de troca gerado."
    sql: ${TABLE}.ChaveTipoMoeda ;;
  }

  dimension_group: data_solicitacao_troca {
    type: time
    description: "Informa a data da solicitação do pedido de troca."
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
    sql: ${TABLE}.DataSolicitacaoTroca ;;
  }

  dimension: fator_conversao_previsto {
    type: number
    sql: ${TABLE}.FatorConversaoPrevisto ;;
  }

  dimension: flag_cliente_cadastrado {
    type: string
    sql: ${TABLE}.FlagClienteCadastrado ;;
  }

  dimension: flag_origem_troca_ativo {
    type: string
    description: "Flag que identifica se a origem da troca está ativa."
    sql: ${TABLE}.FlagOrigemTrocaAtivo ;;
  }

  dimension: flag_primeira_troca {
    type: string
    sql: ${TABLE}.FlagPrimeiraTroca ;;
  }

  dimension: flag_status_troca_ativo {
    type: string
    description: "Flag que identifica se o status da troca está ativo."
    sql: ${TABLE}.FlagStatusTrocaAtivo ;;
  }

  dimension: flag_troca_valida {
    type: string
    description: "Flag que identifica se o status da troca está ativo."
    sql: ${TABLE}.FlagTrocaValida ;;
  }

  dimension: flag_ultima_troca {
    type: string
    description: "Flag que identifica se o pedido de troca que foi gerado foi a últma troca."
    sql: ${TABLE}.FlagUltimaTroca ;;
  }

  dimension: flag_valor_preco_maximo {
    type: string
    sql: ${TABLE}.FlagValorPrecoMaximo ;;
  }

  dimension: flag_valor_preco_medio {
    type: string
    sql: ${TABLE}.FlagValorPrecoMedio ;;
  }

  dimension: flag_valor_preco_minimo {
    type: string
    sql: ${TABLE}.FlagValorPrecoMinimo ;;
  }

  dimension: numero_documento_funcionario {
    type: string
    sql: ${TABLE}.NumeroDocumentoFuncionario ;;
  }

  dimension: quantidade_dias_entrega {
    type: number
    sql: ${TABLE}.QuantidadeDiasEntrega ;;
  }

  dimension: quantidade_dotz_troca {
    type: number
    description: "Quantidade que informa quantos Dotz o cliente possui para a troca."
    sql: ${TABLE}.QuantidadeDotzTroca ;;
  }

  dimension: valor_dotz {
    type: number
    description: "Valor pago em Dotz."
    sql: ${TABLE}.ValorDotz ;;
  }

  dimension: valor_frete_estimado {
    type: number
    description: "Valor de frete estimado lançado no momento do cadastro do produto no site."
    sql: ${TABLE}.ValorFreteEstimado ;;
  }

  dimension: valor_frete_real {
    type: number
    description: "Valor de frete real lançado após a confirmação do pedido do fornecedor."
    sql: ${TABLE}.ValorFreteReal ;;
  }

  dimension: valor_preco_estimado {
    type: number
    description: "Valor de preço estimado lançado no momento do cadastro do produto no site."
    sql: ${TABLE}.ValorPrecoEstimado ;;
  }

  dimension: valor_preco_maximo {
    type: number
    sql: ${TABLE}.ValorPrecoMaximo ;;
  }

  dimension: valor_preco_medio {
    type: number
    sql: ${TABLE}.ValorPrecoMedio ;;
  }

  dimension: valor_preco_minimo {
    type: number
    sql: ${TABLE}.ValorPrecoMinimo ;;
  }

  dimension: valor_preco_real {
    type: number
    description: "Valor de preço real lançado após a confirmação do pedido do fornecedor."
    sql: ${TABLE}.ValorPrecoReal ;;
  }

  dimension: valor_range_custo {
    type: number
    description: "Range de custo da troca."
    sql: ${TABLE}.ValorRangeCusto ;;
  }

  dimension: valor_range_reais {
    type: number
    description: "Range de reais da troca."
    sql: ${TABLE}.ValorRangeReais ;;
  }

  dimension: valor_site {
    type: number
    sql: ${TABLE}.ValorSite ;;
  }

  dimension: valor_tarifa {
    type: number
    sql: ${TABLE}.ValorTarifa ;;
  }

  dimension: valor_tarifa_total {
    type: number
    sql: ${TABLE}.ValorTarifaTotal ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  set: set_chaves {
    fields: [
              chave_categoria_produto_troca,
              chave_cliente,
              chave_dias_entrega,
              chave_fato_troca,
              chave_filial_parceiro,
              chave_fornecedor,
              chave_origem,
              chave_origem_troca,
              chave_parceiro,
              chave_pos,
              chave_produto_troca,
              chave_status_troca,
              chave_tipo_moeda
    ]
  }
}
