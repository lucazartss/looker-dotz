view: analise_clientes_produto_consolidado {
  sql_table_name: `dotzcloud-datalabs-analytics.ANALYTICS_TEMP.ANALISE_CLIENTES_PRODUTO_CONSOLIDADO`
    ;;

  dimension: celular_cadastro {
    type: string
    sql: ${TABLE}.Celular_Cadastro ;;
  }

  dimension: celular_dotz_quente {
    type: string
    sql: ${TABLE}.Celular_dotz_quente ;;
  }

  dimension: chavecliente {
    type: number
    sql: ${TABLE}.chavecliente ;;
  }

  dimension: cnt_produto {
    type: number
    sql: ${TABLE}.cntProduto ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}.CPF ;;
  }

  dimension_group: data_ativacao01 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataAtivacao01 ;;
  }

  dimension_group: data_ativacao02 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataAtivacao02 ;;
  }

  dimension_group: data_ativacao03 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataAtivacao03 ;;
  }

  dimension_group: data_ativacao04 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataAtivacao04 ;;
  }

  dimension_group: data_ativacao05 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataAtivacao05 ;;
  }

  dimension_group: data_ativacao06 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataAtivacao06 ;;
  }

  dimension_group: data_ativacao07 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataAtivacao07 ;;
  }

  dimension_group: data_ativacao08 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataAtivacao08 ;;
  }

  dimension_group: data_ativacao09 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataAtivacao09 ;;
  }

  dimension_group: data_ativacao10 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataAtivacao10 ;;
  }

  dimension_group: data_ativacao11 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataAtivacao11 ;;
  }

  dimension_group: data_ativacao12 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataAtivacao12 ;;
  }

  dimension_group: data_primeira_ativacao {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataPrimeiraAtivacao ;;
  }

  dimension_group: data_ultima_ativacao {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DataUltimaAtivacao ;;
  }

  dimension: descricao_classe_social_perfil {
    type: string
    sql: ${TABLE}.DescricaoClasseSocialPerfil ;;
  }

  dimension: descricao_escolaridade {
    type: string
    sql: ${TABLE}.DescricaoEscolaridade ;;
  }

  dimension_group: dt_cadastro {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DtCadastro ;;
  }

  dimension: email_dotz {
    type: string
    sql: ${TABLE}.Email_Dotz ;;
  }

  dimension: email_dotz_quente {
    type: string
    sql: ${TABLE}.EMAIL_DOTZ_QUENTE ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension: fx_idade {
    type: string
    sql: ${TABLE}.Fx_Idade ;;
  }

  dimension: fx_tempo_dotz {
    type: string
    sql: ${TABLE}.Fx_TempoDotz ;;
  }

  dimension: produto01 {
    type: string
    sql: ${TABLE}.Produto01 ;;
  }

  dimension: produto02 {
    type: string
    sql: ${TABLE}.Produto02 ;;
  }

  dimension: produto03 {
    type: string
    sql: ${TABLE}.Produto03 ;;
  }

  dimension: produto04 {
    type: string
    sql: ${TABLE}.Produto04 ;;
  }

  dimension: produto05 {
    type: string
    sql: ${TABLE}.Produto05 ;;
  }

  dimension: produto06 {
    type: string
    sql: ${TABLE}.Produto06 ;;
  }

  dimension: produto07 {
    type: string
    sql: ${TABLE}.Produto07 ;;
  }

  dimension: produto08 {
    type: string
    sql: ${TABLE}.Produto08 ;;
  }

  dimension: produto09 {
    type: string
    sql: ${TABLE}.Produto09 ;;
  }

  dimension: produto10 {
    type: string
    sql: ${TABLE}.Produto10 ;;
  }

  dimension: produto11 {
    type: string
    sql: ${TABLE}.Produto11 ;;
  }

  dimension: produto12 {
    type: string
    sql: ${TABLE}.Produto12 ;;
  }

  dimension: qtd_acoes_produto01 {
    type: number
    sql: ${TABLE}.qtdAcoes_Produto01 ;;
  }

  dimension: qtd_acoes_produto02 {
    type: number
    sql: ${TABLE}.qtdAcoes_Produto02 ;;
  }

  dimension: qtd_acoes_produto03 {
    type: number
    sql: ${TABLE}.qtdAcoes_Produto03 ;;
  }

  dimension: qtd_acoes_produto04 {
    type: number
    sql: ${TABLE}.qtdAcoes_Produto04 ;;
  }

  dimension: qtd_acoes_produto05 {
    type: number
    sql: ${TABLE}.qtdAcoes_Produto05 ;;
  }

  dimension: qtd_acoes_produto06 {
    type: number
    sql: ${TABLE}.qtdAcoes_Produto06 ;;
  }

  dimension: qtd_acoes_produto07 {
    type: number
    sql: ${TABLE}.qtdAcoes_Produto07 ;;
  }

  dimension: qtd_acoes_produto08 {
    type: number
    sql: ${TABLE}.qtdAcoes_Produto08 ;;
  }

  dimension: qtd_acoes_produto09 {
    type: number
    sql: ${TABLE}.qtdAcoes_Produto09 ;;
  }

  dimension: qtd_acoes_produto10 {
    type: number
    sql: ${TABLE}.qtdAcoes_Produto10 ;;
  }

  dimension: qtd_acoes_produto11 {
    type: number
    sql: ${TABLE}.qtdAcoes_Produto11 ;;
  }

  dimension: qtd_acoes_produto12 {
    type: number
    sql: ${TABLE}.qtdAcoes_Produto12 ;;
  }

  dimension: qtd_dotz_produto01 {
    type: number
    sql: ${TABLE}.qtdDotz_Produto01 ;;
  }

  dimension: qtd_dotz_produto02 {
    type: number
    sql: ${TABLE}.qtdDotz_Produto02 ;;
  }

  dimension: qtd_dotz_produto03 {
    type: number
    sql: ${TABLE}.qtdDotz_Produto03 ;;
  }

  dimension: qtd_dotz_produto04 {
    type: number
    sql: ${TABLE}.qtdDotz_Produto04 ;;
  }

  dimension: qtd_dotz_produto05 {
    type: number
    sql: ${TABLE}.qtdDotz_Produto05 ;;
  }

  dimension: qtd_dotz_produto06 {
    type: number
    sql: ${TABLE}.qtdDotz_Produto06 ;;
  }

  dimension: qtd_dotz_produto07 {
    type: number
    sql: ${TABLE}.qtdDotz_Produto07 ;;
  }

  dimension: qtd_dotz_produto08 {
    type: number
    sql: ${TABLE}.qtdDotz_Produto08 ;;
  }

  dimension: qtd_dotz_produto09 {
    type: number
    sql: ${TABLE}.qtdDotz_Produto09 ;;
  }

  dimension: qtd_dotz_produto10 {
    type: number
    sql: ${TABLE}.qtdDotz_Produto10 ;;
  }

  dimension: qtd_dotz_produto11 {
    type: number
    sql: ${TABLE}.qtdDotz_Produto11 ;;
  }

  dimension: qtd_dotz_produto12 {
    type: number
    sql: ${TABLE}.qtdDotz_Produto12 ;;
  }

  dimension: sexo {
    type: string
    sql: ${TABLE}.Sexo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
