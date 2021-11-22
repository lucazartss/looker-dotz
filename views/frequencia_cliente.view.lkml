# If necessary, uncomment the line below to include explore_source.
include: "/varejo.model.lkml"

view: frequencia_cliente {
  derived_table: {
    explore_source: cte {
      column: chave_parceiro {}
      column: chave_cliente {}
      column: nomeparceiro { field: cat_filial_parceiros_base_completa.nomeparceiro }
      column: data_check_out_month {}
      column: qtd_tickets {}
      filters: {
        field: cte.codigo_sub_tipo_promocao
        value: "1"
      }
      filters: {
        field: cte.data_check_out_month
        value: "after 2021/10/01"
      }
      filters: {
        field: cat_filial_parceiros_base_completa.bu
        value: "Varejo"
      }
      filters: {
        field: cat_filial_parceiros_base_completa.ativo
        value: "S"
      }
    }
  }

  dimension: primary_key {
    primary_key: yes
    sql: concat(${chave_cliente}, ${chave_parceiro}, ${nomeparceiro}, ${data_check_out_month}) ;;
  }
  dimension: chave_parceiro {
    description: "Código do parceiro da compra, associado a DimParceiro"
    type: number
  }
  dimension: chave_cliente {
    description: "Código do cliente titular que efetuou a compra, associado a DimClienteBase"
    type: number
  }
  dimension: nomeparceiro {}
  dimension: data_check_out_month {
    description: "Data da saida (em casos como reservas) ou da compra da transação"
    type: date_month
  }
  dimension: frequencia {
    sql: ${TABLE}.qtd_tickets ;;
    type: number
  }

  dimension: classificacao {
    type: string
    sql: CASE
        WHEN ${frequencia} >= ${media.media_parceiro}  THEN 'FREQUENTE'
        ELSE 'RECORRENTE'
        END  ;;
  }
}
