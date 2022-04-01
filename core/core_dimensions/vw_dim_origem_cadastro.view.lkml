view: vw_dim_origem_cadastro {
  sql_table_name: `DOTZ_CUBO.VW_DimOrigemCadastro`
    ;;

  dimension: chave_filial_parceiro {
    type: number
    sql: ${TABLE}.ChaveFilialParceiro ;;
  }

  dimension: chave_origem_cadastro {
    type: number
    sql: ${TABLE}.ChaveOrigemCadastro ;;
  }

  dimension: chave_parceiro {
    type: number
    sql: ${TABLE}.ChaveParceiro ;;
  }

  dimension: codigo_origem_cadastro {
    type: number
    sql: ${TABLE}.CodigoOrigemCadastro ;;
  }

  dimension: descricao_origem_cadastro {
    type: string
    sql: ${TABLE}.DescricaoOrigemCadastro ;;
  }

  dimension: descricao_origem_cadastro_pai {
    type: string
    sql: ${TABLE}.DescricaoOrigemCadastroPai ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
