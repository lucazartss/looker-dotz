view: vw_dim_status_transacao_credito {
  sql_table_name: `DOTZ_CUBO.VW_DimStatusTransacaoCredito`
    ;;

  dimension: chave_status_transacao {
    type: number
    sql: ${TABLE}.ChaveStatusTransacao ;;
  }

  dimension: codigo_status_transacao {
    type: number
    sql: ${TABLE}.CodigoStatusTransacao ;;
  }

  dimension: nome_status_transacao {
    type: string
    sql: ${TABLE}.NomeStatusTransacao ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
