view: dim_origem_troca {
  sql_table_name: `dotzcloud-datalabs-analytics.DW_VIEWS.DimOrigemTroca`
    ;;

  dimension: chave_origem_troca {
    type: number
    sql: ${TABLE}.ChaveOrigemTroca ;;
  }

  dimension: codigo_origem_troca {
    type: number
    sql: ${TABLE}.CodigoOrigemTroca ;;
  }

  dimension: descricao_origem_troca {
    type: string
    sql: ${TABLE}.DescricaoOrigemTroca ;;
  }

  dimension_group: metadata__data_atualizacao {
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
    sql: ${TABLE}.METADATA.DataAtualizacao ;;
    group_label: "Metadata"
    group_item_label: "Data Atualizacao"
  }

  dimension: metadata__flag_delete {
    type: yesno
    sql: ${TABLE}.METADATA.FlagDelete ;;
    group_label: "Metadata"
    group_item_label: "Flag Delete"
  }

  dimension: metadata__last_sent_row_hash {
    type: string
    sql: ${TABLE}.METADATA.LastSentRowHash ;;
    group_label: "Metadata"
    group_item_label: "Last Sent Row Hash"
  }

  dimension: metadata__row_hash {
    type: string
    sql: ${TABLE}.METADATA.RowHash ;;
    group_label: "Metadata"
    group_item_label: "Row Hash"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
