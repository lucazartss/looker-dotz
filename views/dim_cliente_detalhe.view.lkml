view: dim_cliente_detalhe {
  sql_table_name: `dotzcloud-datalabs-analytics.DW_VIEWS.DimClienteDetalhe`
    ;;

  dimension: cep {
    type: string
    description: "Número do CEP do cliente. Armazenado como inteiro para cálculos de range de CEP. Atenção aos CEPs que começam com \"0\"."
    sql: ${TABLE}.CEP ;;
  }

  dimension: chave_cidade {
    type: number
    description: "FK - Relacionamento com a tabela DimCidadeCliente, campo ChaveCidade"
    sql: ${TABLE}.ChaveCidade ;;
  }

  dimension: chave_cliente {
    type: number
    description: "FK - Relacionamento com a tabela DimClienteBase, campo ChaveCliente"
    sql: ${TABLE}.ChaveCliente ;;
  }

  dimension: chave_cliente_cadastrante {
    type: number
    description: "Identificador do cliente (funcionário) que efetuou o cadastro do cliente"
    sql: ${TABLE}.ChaveClienteCadastrante ;;
  }

  dimension: chave_cliente_titular {
    type: number
    description: "Identificador do titular da conta se houver (FK - Relacionamento com a tabela DimClienteBase, campo ChaveCliente)"
    sql: ${TABLE}.ChaveClienteTitular ;;
  }

  dimension: chave_faixa_idade_cliente {
    type: number
    description: "FK - Relacionamento com a tabela DimFaixaIdade, campo ChaveFaixaIdade"
    sql: ${TABLE}.ChaveFaixaIdadeCliente ;;
  }

  dimension: chave_filial_parceiro_origem_cadastro {
    type: number
    description: "Filial de origem do cliente, apenas para clientes via ficha (FK - Relacionamento com a tabela DimFilialParceiro, campo ChaveFilialParceiro)"
    sql: ${TABLE}.ChaveFilialParceiroOrigemCadastro ;;
  }

  dimension: chave_lote_origem_cadastro {
    type: number
    description: "FK - Relacionamento com a tabela DimLoteOrigemCadastro, campo ChaveLoteOrigemCadastro"
    sql: ${TABLE}.ChaveLoteOrigemCadastro ;;
  }

  dimension: chave_origem_cadastro {
    type: number
    description: "FK - Relacionamento com a tabela DimOrigemCadastro, campo ChaveOrigemCadastro"
    sql: ${TABLE}.ChaveOrigemCadastro ;;
  }

  dimension: chave_parceiro_origem_cadastro {
    type: number
    description: "Parceiro de origem do cliente, apenas para clientes via ficha (FK - Relacionamento com a tabela DimParceiro, campo ChaveParceiro)"
    sql: ${TABLE}.ChaveParceiroOrigemCadastro ;;
  }

  dimension: chave_periodo_adesao_bb {
    type: number
    description: "Data (código inteiro) em que o cliente fez a adesão ao programa do BB"
    sql: ${TABLE}.ChavePeriodoAdesaoBB ;;
  }

  dimension: chave_periodo_adesao_origem {
    type: number
    description: "Data (código inteiro) em que o cliente fez a adesão ao programa do BB"
    sql: ${TABLE}.ChavePeriodoAdesaoOrigem ;;
  }

  dimension: chave_periodo_clube_dotz {
    type: number
    description: "Data (código inteiro) em que o cliente entrou no clube Dotz pela primeira vez (independente do cliente estar ou não ativo atualmente no clube)"
    sql: ${TABLE}.ChavePeriodoClubeDotz ;;
  }

  dimension: chave_periodo_completa_dotz {
    type: number
    description: "Data (código inteiro) em que o cliente utilizou o completa Dotz pela primeira vez"
    sql: ${TABLE}.ChavePeriodoCompletaDotz ;;
  }

  dimension: chave_periodo_login_mobile {
    type: number
    description: "Data (código inteiro) em que o cliente fez o primeiro login no aplicativo mobile"
    sql: ${TABLE}.ChavePeriodoLoginMobile ;;
  }

  dimension: chave_periodo_senha_mobile {
    type: number
    description: "Data (código inteiro) em que o usuário requisitou uma nova senha no aplicativo mobile alguma vez"
    sql: ${TABLE}.ChavePeriodoSenhaMobile ;;
  }

  dimension: codigo_chave {
    type: string
    description: "Identificador único do cliente (GUID) (ex: 77B41B49-5F07-4B3D-8286-E3CB55FB4ADE)"
    sql: ${TABLE}.CodigoChave ;;
  }

  dimension: codigo_mci {
    type: number
    sql: ${TABLE}.CodigoMCI ;;
  }

  dimension: complemento_endereco {
    type: string
    description: "Complemento do endereço do cliente fornecido pela tela do site (endereços enriquecidos ficam na tabela DimClienteGeocode)"
    sql: ${TABLE}.ComplementoEndereco ;;
  }

  dimension_group: data_atualizacao {
    type: time
    description: "Data em que o registro foi atualizado pela última vez"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataAtualizacao ;;
  }

  dimension_group: data_clube_dotz {
    type: time
    description: "Data em que o cliente entrou no clube Dotz pela primeira vez (independente do cliente estar ou não ativo atualmente no clube)"
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
    sql: ${TABLE}.DataClubeDotz ;;
  }

  dimension_group: data_completa_dotz {
    type: time
    description: "Data em que o cliente utilizou o completa Dotz pela primeira vez"
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
    sql: ${TABLE}.DataCompletaDotz ;;
  }

  dimension_group: data_envio_senha {
    type: time
    description: "Última data em que uma senha foi enviada para o cliente"
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
    sql: ${TABLE}.DataEnvioSenha ;;
  }

  dimension_group: data_login_mobile {
    type: time
    description: "Data em que o cliente fez o primeiro login no aplicativo mobile"
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
    sql: ${TABLE}.DataLoginMobile ;;
  }

  dimension_group: data_nascimento {
    type: time
    description: "Data de nascimento do cliente"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataNascimento ;;
  }

  dimension_group: data_senha_mobile {
    type: time
    description: "Data em que o usuário requisitou uma nova senha no aplicativo mobile alguma vez"
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
    sql: ${TABLE}.DataSenhaMobile ;;
  }

  dimension_group: data_ultima_alteracao_cadastro {
    type: time
    description: "Última data em que o cliente fez alguma alteração do cadastro pelo site"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataUltimaAlteracaoCadastro ;;
  }

  dimension: dddcelular {
    type: number
    description: "DDD do celular do cliente"
    sql: ${TABLE}.DDDCelular ;;
  }

  dimension: dddtelefone {
    type: number
    description: "DDD do telefone principal do cliente"
    sql: ${TABLE}.DDDTelefone ;;
  }

  dimension: dddtelefone2 {
    type: number
    description: "DDD do segundo telefone do cliente"
    sql: ${TABLE}.DDDTelefone2 ;;
  }

  dimension: dddtelefone3 {
    type: number
    description: "DDD do terceiro telefone do cliente"
    sql: ${TABLE}.DDDTelefone3 ;;
  }

  dimension: descricao_bairro {
    type: string
    description: "Bairro do cliente fornecido pela tela do site (endereços enriquecidos ficam na tabela DimClienteGeocode)"
    sql: ${TABLE}.DescricaoBairro ;;
  }

  dimension: descricao_endereco {
    type: string
    description: "Endereço do cliente fornecido pela tela do site (endereços enriquecidos ficam na tabela DimClienteGeocode)"
    sql: ${TABLE}.DescricaoEndereco ;;
  }

  dimension: descricao_nome {
    type: string
    description: "Nome completo do cliente"
    sql: ${TABLE}.DescricaoNome ;;
  }

  dimension: descricao_tipo_pessoa {
    type: string
    description: "Descrição do tipo de pessoa (F - física, E - estrangeiro, J - jurídica, I - não identificado)"
    sql: ${TABLE}.DescricaoTipoPessoa ;;
  }

  dimension: flag_adesao_origem {
    type: string
    description: "Flag que indica se o cliente fez a adesão ao programa do BB"
    sql: ${TABLE}.FlagAdesaoOrigem ;;
  }

  dimension: flag_cartao_ibi {
    type: string
    description: "Flag que indica se o cliente possui o cartão Ibi Clube. Clientes que estejam nos grupos 3 e 41 (CARTÃO e CARTÃO INATIVO) são marcados como \"S\""
    sql: ${TABLE}.FlagCartaoIbi ;;
  }

  dimension: flag_cliente_adesao_bb {
    type: string
    description: "Flag que indica a última posição da adesão ou não do cliente no programa da Dotz com o BB"
    sql: ${TABLE}.FlagClienteAdesaoBB ;;
  }

  dimension: flag_cliente_titular {
    type: string
    description: "Flag que indica se o cliente é o titular ou não da conta"
    sql: ${TABLE}.FlagClienteTitular ;;
  }

  dimension: flag_clube_dotz {
    type: string
    description: "Flag que indica se o cliente está ativo no clube Dotz no mês corrente"
    sql: ${TABLE}.FlagClubeDotz ;;
  }

  dimension: flag_completa_dotz {
    type: string
    description: "Flag que indica se o cliente utilizou alguma vez o sistema do Completa Dotz"
    sql: ${TABLE}.FlagCompletaDotz ;;
  }

  dimension: flag_endereco_valido {
    type: string
    description: "Flag que identifica se o endereço fornecido passa por algumas validações básicas: - CEP tem 8 números - Bairro tem mais de 2 letras - Número de endereço foi fornecido - Endereço não está em branco - Uma cidade foi identificada com base no CEP"
    sql: ${TABLE}.FlagEnderecoValido ;;
  }

  dimension: flag_login_mobile {
    type: string
    description: "Flag que indica se o cliente fez login no aplicativo mobile (o login é a forma que usamos para identificar que um cliente possui o APP)"
    sql: ${TABLE}.FlagLoginMobile ;;
  }

  dimension: flag_movimentacao_fato_troca {
    type: string
    description: "Flag que indica se o cliente fez alguma troca desde o seu cadastro"
    sql: ${TABLE}.FlagMovimentacaoFatoTroca ;;
  }

  dimension: flag_possui_senha {
    type: string
    description: "Flag que indica se o cliente possui senha cadastrada no site"
    sql: ${TABLE}.FlagPossuiSenha ;;
  }

  dimension: flag_senha_mobile {
    type: string
    description: "Flag que indica se o usuário requisitou uma nova senha no aplicativo mobile alguma vez"
    sql: ${TABLE}.FlagSenhaMobile ;;
  }

  dimension: grupo_nome {
    type: string
    description: "Primeira letra do nome do cliente"
    sql: ${TABLE}.GrupoNome ;;
  }

  dimension: id_estado {
    type: string
    description: "Estado do cliente fornecido pela tela do site (endereços enriquecidos ficam na tabela DimClienteGeocode)"
    sql: ${TABLE}.IdEstado ;;
  }

  dimension: id_sexo {
    type: string
    description: "Gênero do cliente (M - masculino, F - feminino, I - não identificado)"
    sql: ${TABLE}.IdSexo ;;
  }

  dimension: id_tipo_pessoa {
    type: string
    description: "Tipo de pessoa (F - física, E - estrangeiro, J - jurídica, I - não identificado)"
    sql: ${TABLE}.IdTipoPessoa ;;
  }

  dimension: idade {
    type: number
    description: "Idade do cliente"
    sql: ${TABLE}.Idade ;;
  }

  dimension: metadata__has_issues {
    type: yesno
    sql: ${TABLE}.METADATA.HAS_ISSUES ;;
    group_label: "Metadata"
    group_item_label: "Has Issues"
  }

  dimension: metadata__object_uri {
    type: string
    sql: ${TABLE}.METADATA.OBJECT_URI ;;
    group_label: "Metadata"
    group_item_label: "Object URI"
  }

  dimension: metadata__version {
    type: number
    sql: ${TABLE}.METADATA.VERSION ;;
    group_label: "Metadata"
    group_item_label: "Version"
  }

  dimension: numero_celular {
    type: number
    description: "Celular do cliente"
    sql: ${TABLE}.NumeroCelular ;;
  }

  dimension: numero_cep {
    type: number
    description: "Número do CEP do cliente. Armazenado como inteiro para cálculos de range de CEP. Atenção aos CEPs que começam com \"0\"."
    sql: ${TABLE}.NumeroCEP ;;
  }

  dimension: numero_endereco {
    type: number
    description: "Número do endereço do cliente fornecido pela tela do site (endereços enriquecidos ficam na tabela DimClienteGeocode)"
    sql: ${TABLE}.NumeroEndereco ;;
  }

  dimension: numero_telefone {
    type: number
    description: "Telefone principal do cliente"
    sql: ${TABLE}.NumeroTelefone ;;
  }

  dimension: numero_telefone2 {
    type: number
    description: "Segundo telefone do cliente"
    sql: ${TABLE}.NumeroTelefone2 ;;
  }

  dimension: numero_telefone3 {
    type: number
    description: "Terceiro telefone do cliente"
    sql: ${TABLE}.NumeroTelefone3 ;;
  }

  dimension: rowstamp {
    type: string
    sql: ${TABLE}.Rowstamp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
