# If necessary, uncomment the line below to include explore_source.
# include: "varejo.model.lkml"

view: base_final {
  derived_table: {
    explore_source: frequencia_cliente {
      column: chave_cliente {}
      column: data_check_out_month {}
      column: nomeparceiro {}
      column: frequencia {}
      column: media_parceiro { field: media.media_parceiro }
      column: classificacao {}
    }
    # datagroup_trigger: test_datagroup
  }
  dimension: chave_cliente {
    description: "Código do cliente titular que efetuou a compra, associado a DimClienteBase"
    type: string
  }
  dimension: data_check_out_month {
    description: "Data da saida (em casos como reservas) ou da compra da transação"
    type: date_month
  }
  dimension: nome_parceiro {}
  dimension: frequencia {
    type: number
  }
  dimension: media_parceiro {
    type: number
  }
  dimension: classificacao {}

  measure: chavecliente {
    sql: ${TABLE}.chave_cliente ;;
    type: count_distinct
  }
}