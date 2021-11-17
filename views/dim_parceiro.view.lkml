view: dim_parceiro {
  sql_table_name: `dotzcloud-datalabs-analytics.DW_VIEWS.DimParceiro`
    ;;

  dimension: chave_parceiro {
    type: number
    description: "Chave única da tabela"
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: codigo_categoria_parceiro {
    type: number
    description: "Código da categoria do parceiro"
    sql: ${TABLE}.CodigoCategoriaParceiro ;;
  }

  dimension: codigo_identificacao {
    type: string
    description: "Tag identificador do parceiro (ex: CINEMARK, VIVO)"
    sql: ${TABLE}.CodigoIdentificacao ;;
  }

  dimension: codigo_parceiro {
    type: number
    description: "Código identificador do parceiro gerado pelo ambiente transacional"
    sql: ${TABLE}.CodigoParceiro ;;
  }

  dimension: codigo_tipo_negocio {
    type: number
    description: "Código do tipo de empresa do parceiro"
    sql: ${TABLE}.CodigoTipoNegocio ;;
  }

  dimension: complemento_endereco {
    type: string
    description: "Complemento do endereço do parceiro (cadastrado no Analyzer)"
    sql: ${TABLE}.ComplementoEndereco ;;
  }

  dimension: descricao_bairro {
    type: string
    description: "Bairro do parceiro (cadastrado no Analyzer)"
    sql: ${TABLE}.DescricaoBairro ;;
  }

  dimension: descricao_categoria_parceiro {
    type: string
    description: "Nome da categoria do parceiro (ex: E-commerce, Supermercados)"
    sql: ${TABLE}.DescricaoCategoriaParceiro ;;
  }

  dimension: descricao_cidade {
    type: string
    description: "Nome da cidade do parceiro (cadastrado no Analyzer)"
    sql: ${TABLE}.DescricaoCidade ;;
  }

  dimension: descricao_endereco {
    type: string
    description: "Endereço do parceiro (cadastrado no Analyzer)"
    sql: ${TABLE}.DescricaoEndereco ;;
  }

  dimension: descricao_tipo_negocio {
    type: string
    description: "Nome do tipo de empresa do parceiro (ex: Shopping, BH, Serv. Financ.)"
    sql: ${TABLE}.DescricaoTipoNegocio ;;
  }

  dimension: flag_parceiro_ativo {
    type: string
    description: "Flag que indica se o parceiro está marcado como ativo no Analyzer"
    sql: ${TABLE}.FlagParceiroAtivo ;;
  }

  dimension: id_estado {
    type: string
    description: "Nome do estado do parceiro (cadastrado no Analyzer)"
    sql: ${TABLE}.IdEstado ;;
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

  dimension: nome_parceiro {
    type: string
    description: "Nome do parceiro"
    sql: ${TABLE}.NomeParceiro ;;
  }

  dimension: numero_cep {
    type: string
    description: "CEP do parceiro (cadastrado no Analyzer)"
    sql: ${TABLE}.NumeroCEP ;;
  }

  dimension: numero_endereco {
    type: number
    description: "Número do endereço do parceiro (cadastrado no Analyzer)"
    sql: ${TABLE}.NumeroEndereco ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
