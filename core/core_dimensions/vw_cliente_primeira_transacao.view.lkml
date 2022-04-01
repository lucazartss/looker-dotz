view: vw_cliente_primeira_transacao {
  sql_table_name: `DOTZ_CUBO.VW_ClientePrimeiraTransacao`
    ;;
  # extension: required
  dimension: chave_cliente {
    type: number
    sql: ${TABLE}.ChaveCliente ;;
  }

  dimension: chave_filial_parceiro {
    type: number
    sql: ${TABLE}.ChaveFilialParceiro ;;
  }

  dimension: chave_parceiro {
    type: number
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: codigo_agrupamento_regional {
    type: number
    sql: ${TABLE}.CodigoAgrupamentoRegional ;;
  }

  dimension_group: data_primeira_transacao {
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
    sql: ${TABLE}.DataPrimeiraTransacao ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  set: set_chaves {
    fields: [chave_cliente,chave_filial_parceiro,chave_parceiro]
  }
}
