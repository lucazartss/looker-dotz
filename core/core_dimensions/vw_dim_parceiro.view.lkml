view: vw_dim_parceiro {
  sql_table_name: `DOTZ_CUBO.VW_DimParceiro`
    ;;

  dimension: chave_parceiro {
    type: number
    description: "Chave única da tabela."
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: codigo_categoria_parceiro {
    type: number
    description: "Código da categoria do parceiro."
    sql: ${TABLE}.CodigoCategoriaParceiro ;;
  }

  dimension: codigo_identificacao {
    type: string
    description: "Tag identificador do parceiro (ex: CINEMARK, VIVO)."
    sql: ${TABLE}.CodigoIdentificacao ;;
  }

  dimension: codigo_parceiro {
    type: number
    description: "Código identificador do parceiro gerado pelo ambiente transacional."
    sql: ${TABLE}.CodigoParceiro ;;
  }

  dimension: codigo_tipo_negocio {
    type: number
    description: "Código do tipo de empresa do parceiro."
    sql: ${TABLE}.CodigoTipoNegocio ;;
  }

  dimension: descricao_categoria_parceiro {
    type: string
    description: "Nome da categoria do parceiro (ex: E-commerce, Supermercados)."
    sql: ${TABLE}.DescricaoCategoriaParceiro ;;
  }

  dimension: descricao_tipo_negocio {
    type: string
    description: "Nome do tipo de empresa do parceiro (ex: Shopping, BH, Serv. Financ.)."
    sql: ${TABLE}.DescricaoTipoNegocio ;;
  }

  dimension: flag_parceiro_ativo {
    type: string
    description: "Flag que indica se o parceiro está marcado como ativo no Analyzer."
    sql: ${TABLE}.FlagParceiroAtivo ;;
  }

  dimension: id_estado {
    type: string
    description: "Nome do estado do parceiro (cadastrado no Analyzer)."
    sql: ${TABLE}.IdEstado ;;
  }

  dimension: nome_parceiro {
    type: string
    description: "Nome do parceiro."
    sql: ${TABLE}.NomeParceiro ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
