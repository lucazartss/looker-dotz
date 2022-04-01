view: vw_dim_hierarquia_regional {
  sql_table_name: `DOTZ_CUBO.VW_DimHierarquiaRegional`
    ;;

  dimension: chave_hierarquia_regional {
    type: number
    sql: ${TABLE}.ChaveHierarquiaRegional ;;
  }

  dimension: codigo_agrupamento_regional {
    type: number
    sql: ${TABLE}.CodigoAgrupamentoRegional ;;
  }

  dimension: codigo_hierarquia_regional {
    type: number
    sql: ${TABLE}.CodigoHierarquiaRegional ;;
  }

  dimension: codigo_praca {
    type: number
    sql: ${TABLE}.CodigoPraca ;;
  }

  dimension_group: data_lancamento {
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
    sql: ${TABLE}.DataLancamento ;;
  }

  dimension: descricao_agrupamento_cidade {
    type: string
    sql: ${TABLE}.DescricaoAgrupamentoCidade ;;
  }

  dimension: descricao_agrupamento_regional {
    type: string
    sql: ${TABLE}.DescricaoAgrupamentoRegional ;;
  }

  dimension: descricao_cidade {
    type: string
    sql: ${TABLE}.DescricaoCidade ;;
  }

  dimension: descricao_diretoria {
    type: string
    sql: ${TABLE}.DescricaoDiretoria ;;
  }

  dimension: descricao_estado {
    type: string
    sql: ${TABLE}.DescricaoEstado ;;
  }

  dimension: descricao_macro_regiao {
    type: string
    sql: ${TABLE}.DescricaoMacroRegiao ;;
  }

  dimension: descricao_regional {
    type: string
    sql: ${TABLE}.DescricaoRegional ;;
  }

  dimension: descricao_sub_regional {
    type: string
    sql: ${TABLE}.DescricaoSubRegional ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
