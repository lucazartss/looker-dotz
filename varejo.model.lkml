connection: "dotzcloud-datalabs-analytics"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

datagroup: test_datagroup {
  sql_trigger: SELECT max(id) FROM my_tablename ;;
  max_cache_age: "24 hours"
  label: "ETL ID added"
  description: "Triggered when new ID is added to ETL log"
}

explore: base_final {
}

explore: cte {
  from: fato_extrato
  join: cat_filial_parceiros_base_completa {
    # relationship: many_to_one
    sql_on: ${cte.chave_parceiro} = ${cat_filial_parceiros_base_completa.chaveparceiro}
    AND ${cte.chave_filial_parceiro} = ${cat_filial_parceiros_base_completa.chavefilialparceiro};;
  }
}

explore: frequencia_cliente {
  join: media {
    type: inner
    sql_on: ${frequencia_cliente.chave_parceiro} = ${media.chave_parceiro} and ${frequencia_cliente.data_check_out_month}
    = ${media.data_check_out_month};;
  }
}

explore: fato_extrato {}

# explore: media {}

# explore: frequencia_cliente {}

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
