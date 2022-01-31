view: tabela_dash_varejo {
  derived_table: {
    sql: SELECT * FROM `dotzcloud-datalabs-analytics.ANALYTICS_PROD.TABELA_DASH_VAREJO` LIMIT 10
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: nome_parceiro {
    type: string
    sql: ${TABLE}.NomeParceiro ;;
  }

  dimension: clientes {
    type: number
    sql: ${TABLE}.Clientes ;;
  }

  dimension: mes_atual_abc {
    type: date
    datatype: date
    sql: ${TABLE}.MesAtualABC ;;
  }

  dimension: compras_atual {
    type: number
    sql: ${TABLE}.ComprasAtual ;;
  }

  dimension: faturamento_atual {
    type: number
    sql: ${TABLE}.FaturamentoAtual ;;
  }

  dimension: tipo_atual {
    type: string
    sql: ${TABLE}.TipoAtual ;;
  }

  dimension: abcatual {
    type: string
    sql: ${TABLE}.ABCatual ;;
  }

  dimension: mes_anterior_abc {
    type: date
    datatype: date
    sql: ${TABLE}.MesAnteriorABC ;;
  }

  dimension: compras_anterior {
    type: number
    sql: ${TABLE}.ComprasAnterior ;;
  }

  dimension: faturamento_anterior {
    type: number
    sql: ${TABLE}.FaturamentoAnterior ;;
  }

  dimension: tipo_anterior {
    type: string
    sql: ${TABLE}.TipoAnterior ;;
  }

  dimension: abcanterior {
    type: string
    sql: ${TABLE}.ABCanterior ;;
  }

  dimension: sexo {
    type: string
    sql: ${TABLE}.Sexo ;;
  }

  dimension: escolaridade {
    type: string
    sql: ${TABLE}.Escolaridade ;;
  }

  dimension: faixa_etaria {
    type: string
    sql: ${TABLE}.FaixaEtaria ;;
  }

  dimension: faixa_renda {
    type: string
    sql: ${TABLE}.FaixaRenda ;;
  }

  dimension: clientes_atual {
    type: number
    sql: ${TABLE}.ClientesAtual ;;
  }

  dimension: clientes_anterior {
    type: number
    sql: ${TABLE}.ClientesAnterior ;;
  }

  dimension: chave_filial_parceiro {
    type: number
    sql: ${TABLE}.ChaveFilialParceiro ;;
  }

  dimension: class_distancia {
    type: string
    sql: ${TABLE}.Class_Distancia ;;
  }

  dimension: distancia {
    type: number
    sql: ${TABLE}.Distancia ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.Periodo ;;
  }

  set: detail {
    fields: [
      nome_parceiro,
      clientes,
      mes_atual_abc,
      compras_atual,
      faturamento_atual,
      tipo_atual,
      abcatual,
      mes_anterior_abc,
      compras_anterior,
      faturamento_anterior,
      tipo_anterior,
      abcanterior,
      sexo,
      escolaridade,
      faixa_etaria,
      faixa_renda,
      clientes_atual,
      clientes_anterior,
      chave_filial_parceiro,
      class_distancia,
      distancia,
      periodo
    ]
  }
}
