view: vw_dim_tipo_transacao_credito {
  sql_table_name: `DOTZ_CUBO.VW_DimTipoTransacaoCredito`
    ;;

  dimension: chave_tipo_transacao_credito {
    type: number
    sql: ${TABLE}.ChaveTipoTransacaoCredito ;;
  }

  dimension: codigo_tipo_transacao_credito {
    type: number
    sql: ${TABLE}.CodigoTipoTransacaoCredito ;;
  }

  dimension: flag_estorno {
    type: string
    sql: ${TABLE}.FlagEstorno ;;
  }

  dimension: flag_processo_acumulo {
    type: string
    sql: ${TABLE}.FlagProcessoAcumulo ;;
  }

  dimension: flag_processo_resgate {
    type: string
    sql: ${TABLE}.FlagProcessoResgate ;;
  }

  dimension: flag_transacional_parceiro {
    type: string
    sql: ${TABLE}.FlagTransacionalParceiro ;;
  }

  dimension: nome_tipo_transacao_credito {
    type: string
    sql: ${TABLE}.NomeTipoTransacaoCredito ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
