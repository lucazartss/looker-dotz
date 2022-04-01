view: vw_dim_pos {
  sql_table_name: `DOTZ_CUBO.VW_DimPos`
    ;;

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

  dimension: codigo_pos {
    type: number
    sql: ${TABLE}.CodigoPos ;;
  }

  dimension: codigo_pos_modelo {
    type: number
    sql: ${TABLE}.CodigoPosModelo ;;
  }

  dimension: codigo_serial_pos {
    type: string
    sql: ${TABLE}.CodigoSerialPos ;;
  }

  dimension: descricao_pos_modelo {
    type: string
    sql: ${TABLE}.DescricaoPosModelo ;;
  }

  dimension: flag_ativo {
    type: string
    sql: ${TABLE}.FlagAtivo ;;
  }

  dimension: flag_permite_consulta_extrato {
    type: string
    sql: ${TABLE}.FlagPermiteConsultaExtrato ;;
  }

  dimension: flag_permite_consulta_saldo {
    type: string
    sql: ${TABLE}.FlagPermiteConsultaSaldo ;;
  }

  dimension: flag_permite_credito {
    type: string
    sql: ${TABLE}.FlagPermiteCredito ;;
  }

  dimension: flag_permite_debito {
    type: string
    sql: ${TABLE}.FlagPermiteDebito ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
