# If necessary, uncomment the line below to include explore_source.
include: "/varejo.model.lkml"

view: media {
  derived_table: {
    explore_source: fato_extrato {
      column: chave_parceiro {}
      column: data_check_out_month {}
      column: media_parceiro {}
      filters: {
        field: fato_extrato.data_check_out_month
        value: "after 2021/10/01"
      }
      filters: {
        field: fato_extrato.codigo_sub_tipo_promocao
        value: "1"
      }
    }
  }

  dimension: primary_key {
    primary_key: yes
    sql: concat(${chave_parceiro}, ${data_check_out_month}) ;;
  }
  dimension: chave_parceiro {
    description: "Código do parceiro da compra, associado a DimParceiro"
    type: number
  }
  dimension: data_check_out_month {
    description: "Data da saida (em casos como reservas) ou da compra da transação"
    type: date_month
  }
  dimension: media_parceiro {
    type: number
  }

}
