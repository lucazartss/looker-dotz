view: vw_dim_promocao {
  sql_table_name: `DOTZ_CUBO.VW_DimPromocao`
    ;;

  dimension: chave_parceiro {
    type: number
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: chave_programa {
    type: number
    sql: ${TABLE}.ChavePrograma ;;
  }

  dimension: chave_promocao {
    type: number
    sql: ${TABLE}.ChavePromocao ;;
  }

  dimension: chave_tipo_moeda {
    type: number
    sql: ${TABLE}.ChaveTipoMoeda ;;
  }

  dimension: codigo_bipromocao {
    type: number
    sql: ${TABLE}.CodigoBIPromocao ;;
  }

  dimension: codigo_bitipo_promocao {
    type: number
    sql: ${TABLE}.CodigoBITipoPromocao ;;
  }

  dimension: codigo_bitipo_promocao_agrupada {
    type: number
    sql: ${TABLE}.CodigoBITipoPromocaoAgrupada ;;
  }

  dimension: codigo_parceiro {
    type: number
    sql: ${TABLE}.CodigoParceiro ;;
  }

  dimension: codigo_promocao {
    type: number
    sql: ${TABLE}.CodigoPromocao ;;
  }

  dimension: codigo_status_promocao {
    type: number
    sql: ${TABLE}.CodigoStatusPromocao ;;
  }

  dimension: codigo_subtipo_promocao {
    type: number
    sql: ${TABLE}.CodigoSubtipoPromocao ;;
  }

  dimension: codigo_tipo_promocao {
    type: number
    sql: ${TABLE}.CodigoTipoPromocao ;;
  }

  dimension_group: data_fim_promocao {
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
    sql: ${TABLE}.DataFimPromocao ;;
  }

  dimension_group: data_inicio_promocao {
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
    sql: ${TABLE}.DataInicioPromocao ;;
  }

  dimension: descricao_bipromocao {
    type: string
    sql: ${TABLE}.DescricaoBIPromocao ;;
  }

  dimension: descricao_bitipo_promocao {
    type: string
    sql: ${TABLE}.DescricaoBITipoPromocao ;;
  }

  dimension: descricao_bitipo_promocao_agrupada {
    type: string
    sql: ${TABLE}.DescricaoBITipoPromocaoAgrupada ;;
  }

  dimension: descricao_status_promocao {
    type: string
    sql: ${TABLE}.DescricaoStatusPromocao ;;
  }

  dimension: descricao_subtipo_promocao {
    type: string
    sql: ${TABLE}.DescricaoSubtipoPromocao ;;
  }

  dimension: descricao_tipo_promocao {
    type: string
    sql: ${TABLE}.DescricaoTipoPromocao ;;
  }

  dimension: flag_promocao_pos_paga {
    type: string
    sql: ${TABLE}.FlagPromocaoPosPaga ;;
  }

  dimension: flag_promocao_recursiva {
    type: string
    sql: ${TABLE}.FlagPromocaoRecursiva ;;
  }

  dimension: nome_promocao {
    type: string
    sql: ${TABLE}.NomePromocao ;;
  }

  dimension: valor_custo_promocao {
    type: number
    sql: ${TABLE}.ValorCustoPromocao ;;
  }

  dimension: valor_custo_promocao_emissao {
    type: number
    sql: ${TABLE}.ValorCustoPromocaoEmissao ;;
  }

  dimension: valor_custo_promocao_resgate {
    type: number
    sql: ${TABLE}.ValorCustoPromocaoResgate ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
