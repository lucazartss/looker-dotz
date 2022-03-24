view: vw_quality_assurance {
  sql_table_name: `DOTZ_CUBO.VW_QualityAssurance`
    ;;

  dimension: chave_filial_parceiro {
    type: number
    sql: ${TABLE}.ChaveFilialParceiro ;;
  }

  dimension: chave_parceiro {
    type: number
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: codigo_tipo_promocao {
    type: number
    sql: ${TABLE}.CodigoTipoPromocao ;;
  }

  dimension: descricao_tipo_promocao {
    type: string
    sql: ${TABLE}.DescricaoTipoPromocao ;;
  }

  dimension: diff_dias {
    type: number
    sql: ${TABLE}.DiffDias ;;
  }

  dimension: quantidade_dotz {
    type: number
    sql: ${TABLE}.QuantidadeDotz ;;
  }

  dimension_group: ultimo_credito {
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
    sql: ${TABLE}.UltimoCredito ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
