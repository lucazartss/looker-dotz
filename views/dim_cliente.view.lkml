view: dim_cliente {
  sql_table_name: `dotzcloud-datalabs-analytics.DW_VIEWS.DimCliente`
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
    description: "Código do cliente titular que efetuou a compra, associado a DimClienteBase"
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

  dimension: chave_faixa_idade {
    type: number
    description: "FK - Relacionamento com a tabela DimFaixaIdade, campo ChaveFaixaIdade"
    sql: ${TABLE}.ChaveFaixaIdade ;;
  }

  dimension: chave_faixa_saldo_cliente {
    type: number
    description: "Divide o Cliente em Faixa de Saldo"
    sql: ${TABLE}.ChaveFaixaSaldoCliente ;;
  }

  dimension: chave_filial_parceiro_origem_cadastro {
    type: number
    description: "Filial de origem do cliente, apenas para clientes via ficha (FK - Relacionamento com a tabela DimFilialParceiro, campo ChaveFilialParceiro)"
    sql: ${TABLE}.ChaveFilialParceiroOrigemCadastro ;;
  }

  dimension: chave_filial_primeira_transacao {
    type: number
    description: "FK - Relacionamento com a tabela DimFilialParceiro, campo ChaveFilialParceiro (filial onde o cliente fez sua primeira transação). A regra é baseada na primeira transação do cliente (o tipo da promoção não influencia), ou na data de cadastro no caso dos clientes Angeloni."
    sql: ${TABLE}.ChaveFilialPrimeiraTransacao ;;
  }

  dimension: chave_hierarquia_regional {
    type: number
    description: "Regional do cliente, cujas faixas são definidas por BI e carregadas na tabela DimHierarquiaRegional. O cálculo de regional é realizado da seguinte forma: - Para clientes não cadastrados ou que possuem CEP inválido, utilizamos a regional da filial da última compra do cliente - Para clientes cadastrados com CEP válido, utilizamos o CEP de acordo com as faixas presentes na tabela DimHierarquiaRegional"
    sql: ${TABLE}.ChaveHierarquiaRegional ;;
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

  dimension: chave_parceiro_primeira_transacao {
    type: number
    description: "FK - Relacionamento com a tabela DimFilialParceiro, campo ChaveParceiro (filial onde o cliente fez sua primeira transação). A regra é baseada na primeira transação do cliente (o tipo da promoção não influencia), ou na data de cadastro no caso dos clientes Angeloni."
    sql: ${TABLE}.ChaveParceiroPrimeiraTransacao ;;
  }

  dimension: chave_periodo_adesao_bb {
    type: number
    description: "Data (código inteiro) em que o cliente fez a adesão ao programa do BB"
    sql: ${TABLE}.ChavePeriodoAdesaoBB ;;
  }

  dimension: chave_periodo_adesao_cartao_dotz {
    type: number
    description: "Código associado ao tipo do cadastro - DimTipoCadastro"
    sql: ${TABLE}.ChavePeriodoAdesaoCartaoDotz ;;
  }

  dimension: chave_periodo_adesao_origem {
    type: number
    description: "Data (código inteiro) em que o cliente fez a adesão ao programa do BB"
    sql: ${TABLE}.ChavePeriodoAdesaoOrigem ;;
  }

  dimension: chave_periodo_cadastro {
    type: number
    description: "Data (código inteiro) em que o cliente adquiriu o cartão Dotz"
    sql: ${TABLE}.ChavePeriodoCadastro ;;
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

  dimension: chave_periodo_inicio_programa {
    type: number
    description: "Data (código inteiro) da primeira interação do cliente com o programa. É a menor data entre a data de cadastro e a data da primeira transação."
    sql: ${TABLE}.ChavePeriodoInicioPrograma ;;
  }

  dimension: chave_periodo_login_mobile {
    type: number
    description: "Data (código inteiro) em que o cliente fez o primeiro login no aplicativo mobile"
    sql: ${TABLE}.ChavePeriodoLoginMobile ;;
  }

  dimension: chave_periodo_primeira_transacao {
    type: number
    description: "FK - Relacionamento com a tabela Periodo, campo ChavePeriodo (data em que o cliente fez sua primeira transação). A regra é baseada na primeira transação do cliente (o tipo da promoção não influencia), ou na data de cadastro no caso dos clientes Angeloni."
    sql: ${TABLE}.ChavePeriodoPrimeiraTransacao ;;
  }

  dimension: chave_periodo_primeiro_efeito_rede {
    type: number
    description: "Data (código inteiro) do primeiro efeito de rede do cliente. Considera-se para efeito de rede apenas promoções base e excluindo os parceiros Dotz e DotzPromo."
    sql: ${TABLE}.ChavePeriodoPrimeiroEfeitoRede ;;
  }

  dimension: chave_periodo_senha_mobile {
    type: number
    description: "Data (código inteiro) em que o usuário requisitou uma nova senha no aplicativo mobile alguma vez"
    sql: ${TABLE}.ChavePeriodoSenhaMobile ;;
  }

  dimension: chave_tipo_cadastro {
    type: number
    description: "Código associado ao tipo do cadastro - DimTipoCadastro"
    sql: ${TABLE}.ChaveTipoCadastro ;;
  }

  dimension: codigo_acesso_internet {
    type: number
    description: "Código que vira chave com a informação do último acesso a internet"
    sql: ${TABLE}.CodigoAcessoInternet ;;
  }

  dimension: codigo_chave {
    type: string
    description: "Identificador único do cliente (GUID) (ex: 77B41B49-5F07-4B3D-8286-E3CB55FB4ADE)"
    sql: ${TABLE}.CodigoChave ;;
  }

  dimension: codigo_cliente {
    type: number
    description: "Código identificador do cliente vindo do ambiente transacional"
    sql: ${TABLE}.CodigoCliente ;;
  }

  dimension: codigo_cliente_nao_cadastrado {
    type: string
    description: "Código identificador de clientes não cadastrados (um CPF por exemplo)"
    sql: ${TABLE}.CodigoClienteNaoCadastrado ;;
  }

  dimension: codigo_escolaridade {
    type: number
    description: "Código que vira chave com a informação de Escolaridade"
    sql: ${TABLE}.CodigoEscolaridade ;;
  }

  dimension: codigo_estado_civil {
    type: number
    description: "Código que vira chave com a informação de Estado Civil"
    sql: ${TABLE}.CodigoEstadoCivil ;;
  }

  dimension: codigo_faixa_renda {
    type: number
    description: "Código que vira chave com a informação da faixa de renda"
    sql: ${TABLE}.CodigoFaixaRenda ;;
  }

  dimension: codigo_gasto_web {
    type: number
    description: "Código que vira chave com a informação de gastos na Web"
    sql: ${TABLE}.CodigoGastoWeb ;;
  }

  dimension: codigo_mci {
    type: number
    description: "código único que identifica o(a) Senhor(a) junto ao Banco do Brasil em qualquer lugar do mundo. O Senhor não irá mais utilizar o código de usuário/user code antigo para acessar o novo Internet Banking, somente o MCI."
    sql: ${TABLE}.CodigoMCI ;;
  }

  dimension: codigo_ocupacao {
    type: number
    description: "Código que vira chave com a informação da ocupação"
    sql: ${TABLE}.CodigoOcupacao ;;
  }

  dimension: codigo_profissao {
    type: number
    description: "Código que vira chave com a informação da profissão"
    sql: ${TABLE}.CodigoProfissao ;;
  }

  dimension: codigo_quantidade_filho {
    type: number
    description: "Código que vira chave com a informação da quantidade de filhos"
    sql: ${TABLE}.CodigoQuantidadeFilho ;;
  }

  dimension: codigo_status_conta {
    type: number
    description: "Status da conta do cliente (ex: 2, 7). O status 7 - Virtual, possui regras especiais no DW: - Clientes com origem de cadastro vinda do tombamento da Angeloni, mas que não tenham uma transação de migração de pontos são virtuais - Clientes não cadastrados, que só tenham transações na fila (não possuem pontos depositados em conta), são virtuais"
    sql: ${TABLE}.CodigoStatusConta ;;
  }

  dimension: codigo_tipo_residencia {
    type: number
    description: "Código que vira chave com a informação do tipo de residência"
    sql: ${TABLE}.CodigoTipoResidencia ;;
  }

  dimension: complemento_endereco {
    type: string
    description: "Complemento do endereço. Ex bl ap casa"
    sql: ${TABLE}.ComplementoEndereco ;;
  }

  dimension_group: data {
    type: time
    description: "Data"
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
    sql: ${TABLE}.Data ;;
  }

  dimension_group: data_adesao_bb {
    type: time
    description: "Data de adesão ao cartão do BB"
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
    sql: ${TABLE}.DataAdesaoBB ;;
  }

  dimension_group: data_adesao_cartao_dotz {
    type: time
    description: "Data (código inteiro) em que o cliente adquiriu o cartão Dotz"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataAdesaoCartaoDotz ;;
  }

  dimension_group: data_adesao_origem {
    type: time
    description: "Data (código inteiro) em que o cliente fez a adesão ao programa do BB"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataAdesaoOrigem ;;
  }

  dimension_group: data_cadastro {
    type: time
    description: "Data em que o cliente se cadastrou no site (no caso de clientes cadastrados) ou em que o cliente foi inserido na base de identificadores (no caso de clientes não cadastrados)"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataCadastro ;;
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

  dimension_group: data_compra_primeiro_efeito_rede {
    type: time
    description: "Data do primeiro efeito de rede do cliente. Considera-se para efeito de rede apenas promoções base e excluindo os parceiros Dotz e DotzPromo."
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
    sql: ${TABLE}.DataCompraPrimeiroEfeitoRede ;;
  }

  dimension_group: data_envio_senha {
    type: time
    description: "Última data em que uma senha foi enviada para o cliente"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DataEnvioSenha ;;
  }

  dimension_group: data_inclusao_email1 {
    type: time
    description: "Data em que o e-mail foi incluso na tabela"
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
    sql: ${TABLE}.DataInclusaoEmail1 ;;
  }

  dimension_group: data_inclusao_email2 {
    type: time
    description: "Data em que o e-mail foi incluso na tabela"
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
    sql: ${TABLE}.DataInclusaoEmail2 ;;
  }

  dimension_group: data_inclusao_email3 {
    type: time
    description: "Data em que o e-mail foi incluso na tabela"
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
    sql: ${TABLE}.DataInclusaoEmail3 ;;
  }

  dimension_group: data_inclusao_email_cadastro {
    type: time
    description: "Data em que o e-mail foi incluso na tabela (a data é atualizada caso o cliente altere o e-mail de cadastro)"
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
    sql: ${TABLE}.DataInclusaoEmailCadastro ;;
  }

  dimension_group: data_inicio_programa {
    type: time
    description: "Data da primeira interação do cliente com o programa. É a menor data entre a data de cadastro e a data da primeira transação."
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
    sql: ${TABLE}.DataInicioPrograma ;;
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

  dimension_group: data_primeira_transacao {
    type: time
    description: "FK - Relacionamento com a tabela Periodo, campo ChavePeriodo (data em que o cliente fez sua primeira transação). A regra é baseada na primeira transação do cliente (o tipo da promoção não influencia), ou na data de cadastro no caso dos clientes Angeloni."
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
    sql: ${TABLE}.DataPrimeiraTransacao ;;
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

  dimension_group: data_ultima_leitura_email1 {
    type: time
    description: "Data em que o cliente leu algum e-mail de comunicação da Dotz pela última vez (através do e-mail de cadastro)"
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
    sql: ${TABLE}.DataUltimaLeituraEmail1 ;;
  }

  dimension_group: data_ultima_leitura_email2 {
    type: time
    description: "Data em que o cliente leu algum e-mail de comunicação da Dotz pela última vez (através do e-mail de cadastro)"
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
    sql: ${TABLE}.DataUltimaLeituraEmail2 ;;
  }

  dimension_group: data_ultima_leitura_email3 {
    type: time
    description: "Data em que o cliente leu algum e-mail de comunicação da Dotz pela última vez (através do e-mail de cadastro)"
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
    sql: ${TABLE}.DataUltimaLeituraEmail3 ;;
  }

  dimension_group: data_ultima_leitura_email_cadastro {
    type: time
    description: "Data em que o cliente leu algum e-mail de comunicação da Dotz pela última vez (através do e-mail de cadastro)"
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
    sql: ${TABLE}.DataUltimaLeituraEmailCadastro ;;
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

  dimension: descricao_acesso_internet {
    type: string
    description: "Chave com a informação do último acesso a internet"
    sql: ${TABLE}.DescricaoAcessoInternet ;;
  }

  dimension: descricao_bairro {
    type: string
    description: "Bairro do cliente fornecido pela tela do site (endereços enriquecidos ficam na tabela DimClienteGeocode)"
    sql: ${TABLE}.DescricaoBairro ;;
  }

  dimension: descricao_classe_social_perfil {
    type: string
    description: "Classe Social Perfil"
    sql: ${TABLE}.DescricaoClasseSocialPerfil ;;
  }

  dimension: descricao_email {
    type: string
    description: "E-mail de cadastro do cliente (pode ser utilizado como login no site)"
    sql: ${TABLE}.DescricaoEmail ;;
  }

  dimension: descricao_email1 {
    type: string
    description: "E-mail secundário (enriquecido) do cliente"
    sql: ${TABLE}.DescricaoEmail1 ;;
  }

  dimension: descricao_email2 {
    type: string
    description: "E-mail secundário (enriquecido) do cliente"
    sql: ${TABLE}.DescricaoEmail2 ;;
  }

  dimension: descricao_email3 {
    type: string
    description: "E-mail secundário (enriquecido) do cliente"
    sql: ${TABLE}.DescricaoEmail3 ;;
  }

  dimension: descricao_email_cadastro {
    type: string
    description: "E-mail de cadastro do cliente (pode ser usado no login do site)"
    sql: ${TABLE}.DescricaoEmailCadastro ;;
  }

  dimension: descricao_email_disparo {
    type: string
    description: "E-mail para ser utilizado nos disparos de e-mail (cliente elegível)"
    sql: ${TABLE}.DescricaoEmailDisparo ;;
  }

  dimension: descricao_endereco {
    type: string
    description: "Endereço do cliente fornecido pela tela do site (endereços enriquecidos ficam na tabela DimClienteGeocode)"
    sql: ${TABLE}.DescricaoEndereco ;;
  }

  dimension: descricao_escolaridade {
    type: string
    description: "Escolaridade"
    sql: ${TABLE}.DescricaoEscolaridade ;;
  }

  dimension: descricao_estado_civil {
    type: string
    description: "Estado Cívil"
    sql: ${TABLE}.DescricaoEstadoCivil ;;
  }

  dimension: descricao_faixa_renda {
    type: string
    description: "Faixa de Renda"
    sql: ${TABLE}.DescricaoFaixaRenda ;;
  }

  dimension: descricao_gasto_web {
    type: string
    description: "Gasto com compras na Web"
    sql: ${TABLE}.DescricaoGastoWeb ;;
  }

  dimension: descricao_nome {
    type: string
    description: "Nome completo do cliente"
    sql: ${TABLE}.DescricaoNome ;;
  }

  dimension: descricao_ocupacao {
    type: string
    description: "Ocupação"
    sql: ${TABLE}.DescricaoOcupacao ;;
  }

  dimension: descricao_origem_email1 {
    type: string
    description: "Descrição obtida no arquivo em que o e-mail enriquecido estava para facilitar na identificação das ondas de enriquecimento de clientes"
    sql: ${TABLE}.DescricaoOrigemEmail1 ;;
  }

  dimension: descricao_origem_email2 {
    type: string
    description: "Descrição obtida no arquivo em que o e-mail enriquecido estava para facilitar na identificação das ondas de enriquecimento de clientes"
    sql: ${TABLE}.DescricaoOrigemEmail2 ;;
  }

  dimension: descricao_origem_email3 {
    type: string
    description: "Descrição obtida no arquivo em que o e-mail enriquecido estava para facilitar na identificação das ondas de enriquecimento de clientes"
    sql: ${TABLE}.DescricaoOrigemEmail3 ;;
  }

  dimension: descricao_profissao {
    type: string
    description: "Profissão"
    sql: ${TABLE}.DescricaoProfissao ;;
  }

  dimension: descricao_quantidade_filho {
    type: string
    description: "Quantidade de Filhos"
    sql: ${TABLE}.DescricaoQuantidadeFilho ;;
  }

  dimension: descricao_status_conta {
    type: string
    description: "Status da conta do cliente (ex: Virtual, Ativado). O status 7 - Virtual, possui regras especiais no DW: - Clientes com origem de cadastro vinda do tombamento da Angeloni, mas que não tenham uma transação de migração de pontos são virtuais - Clientes não cadastrados, que só tenham transações na fila (não possuem pontos depositados em conta), são virtuais"
    sql: ${TABLE}.DescricaoStatusConta ;;
  }

  dimension: descricao_status_email {
    type: string
    description: "Status do e-mail do cliente (ex: U, P, FA, etc) - campo depreciado"
    sql: ${TABLE}.DescricaoStatusEmail ;;
  }

  dimension: descricao_tipo_pessoa {
    type: string
    description: "Descrição do tipo de pessoa (F - física, E - estrangeiro, J - jurídica, I - não identificado)"
    sql: ${TABLE}.DescricaoTipoPessoa ;;
  }

  dimension: descricao_tipo_residencia {
    type: string
    description: "Tipo de Residência"
    sql: ${TABLE}.DescricaoTipoResidencia ;;
  }

  dimension: f0_ {
    type: string
    description: "f0_"
    sql: ${TABLE}.f0_ ;;
  }

  dimension: flag_adesao_origem {
    type: string
    description: "Flag que indica se o cliente fez a adesão ao programa do BB"
    sql: ${TABLE}.FlagAdesaoOrigem ;;
  }

  dimension: flag_blacklist_sqlemail1 {
    type: string
    description: "Flag que identifica se o e-mail teve algum evento de black list (clientes marcados especialmente no BD para não receberem comunicação da Dotz)"
    sql: ${TABLE}.FlagBlacklistSQLEmail1 ;;
  }

  dimension: flag_blacklist_sqlemail2 {
    type: string
    description: "Flag que identifica se o e-mail teve algum evento de black list (clientes marcados especialmente no BD para não receberem comunicação da Dotz)"
    sql: ${TABLE}.FlagBlacklistSQLEmail2 ;;
  }

  dimension: flag_blacklist_sqlemail3 {
    type: string
    description: "Flag que identifica se o e-mail teve algum evento de black list (clientes marcados especialmente no BD para não receberem comunicação da Dotz)"
    sql: ${TABLE}.FlagBlacklistSQLEmail3 ;;
  }

  dimension: flag_blacklist_sqlemail_cadastro {
    type: string
    description: "Flag que identifica se o e-mail teve algum evento de black list (clientes marcados especialmente no BD para não receberem comunicação da Dotz)"
    sql: ${TABLE}.FlagBlacklistSQLEmailCadastro ;;
  }

  dimension: flag_cartao_dotz {
    type: string
    description: "Flag que identifica se o cliente possui o cartão Dotz"
    sql: ${TABLE}.FlagCartaoDotz ;;
  }

  dimension: flag_cartao_ibi {
    type: string
    description: "Flag que indica se o cliente possui o cartão Ibi Clube. Clientes que estejam nos grupos 3 e 41 (CARTÃO e CARTÃO INATIVO) são marcados como \"S\""
    sql: ${TABLE}.FlagCartaoIbi ;;
  }

  dimension: flag_celular_valido {
    type: string
    description: "Flag que identifica se o celular é válido"
    sql: ${TABLE}.FlagCelularValido ;;
  }

  dimension: flag_cliente_adesao_bb {
    type: string
    description: "Flag que indica a última posição da adesão ou não do cliente no programa da Dotz com o BB"
    sql: ${TABLE}.FlagClienteAdesaoBB ;;
  }

  dimension: flag_cliente_cadastrado {
    type: string
    description: "Flag que identifica se o cliente é cadastrado ou não no site Dotz"
    sql: ${TABLE}.FlagClienteCadastrado ;;
  }

  dimension: flag_cliente_congelado {
    type: string
    description: "Flag que indica se o cliente não tem participação no programa Dotz. A regra parte do principio que todos os clientes são congelados e os retira de acordo com as seguintes cláusulas: - Clientes cadastrados após 2013-08-05 na origem de cadastro Angeloni não são congelados. - Clientes que tenham sido enviados em arquivos de cadastro 603 da Angeloni não são congelados. - Clientes cadastrados após 2009-10-01, desde que não seja na origem Angeloni ou em Sorteio de Crédito Consignado não são congelados. - Clientes com troca válida na Dotz após 2009-10-01 não são congelados. - Clientes com transação válida após 2009-10-01. exceto na mecânica de tombamento da Angeloni não são cadastrados. - Clientes cadastrados pelo programa Vivo não são congelados."
    sql: ${TABLE}.FlagClienteCongelado ;;
  }

  dimension: flag_cliente_piloto_vivo {
    type: string
    description: "Flag que indica a última posição da adesão ou não do cliente no programa da Dotz com o BB"
    sql: ${TABLE}.FlagClientePilotoVivo ;;
  }

  dimension: flag_cliente_telecom {
    type: string
    description: "Flag que indica se o cliente participa do programa Vivo (independente de ter sido na época do piloto ou não."
    sql: ${TABLE}.FlagClienteTelecom ;;
  }

  dimension: flag_cliente_titular {
    type: string
    description: "Flag que indica se o cliente é o titular ou não da conta"
    sql: ${TABLE}.FlagClienteTitular ;;
  }

  dimension: flag_cliente_valido {
    type: string
    description: "Flag que indica se o cliente é válido para ser abordado pela Dotz. A regra exclui clientes com status de conta 6 e 7 (excluído e virtual)."
    sql: ${TABLE}.FlagClienteValido ;;
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

  dimension: flag_efeito_rede {
    type: string
    description: "Flag que identifica se o cliente já teve compras em mais de 1 parceiro Dotz (métrica PTD - não é considerado uma faixa de tempo)"
    sql: ${TABLE}.FlagEfeitoRede ;;
  }

  dimension: flag_elegivel_minimo {
    type: string
    description: "Flag que identifica que o cliente atinge os requisitos mínimos para ser abordado (cliente válido e cadastrado)"
    sql: ${TABLE}.FlagElegivelMinimo ;;
  }

  dimension: flag_elegivel_sms {
    type: string
    description: "Flag que identifica se o celular é elegível a receber SMS"
    sql: ${TABLE}.FlagElegivelSMS ;;
  }

  dimension: flag_email_valido1 {
    type: string
    description: "Flag que identifica se o e-mail passa por validações básicas de e-mail (como por exemplo possuir apenas um @)"
    sql: ${TABLE}.FlagEmailValido1 ;;
  }

  dimension: flag_email_valido2 {
    type: string
    description: "Flag que identifica se o e-mail passa por validações básicas de e-mail (como por exemplo possuir apenas um @)"
    sql: ${TABLE}.FlagEmailValido2 ;;
  }

  dimension: flag_email_valido3 {
    type: string
    description: "Flag que identifica se o e-mail passa por validações básicas de e-mail (como por exemplo possuir apenas um @)"
    sql: ${TABLE}.FlagEmailValido3 ;;
  }

  dimension: flag_email_valido_cadastro {
    type: string
    description: "Flag que identifica se o e-mail passa por validações básicas de e-mail (como por exemplo possuir apenas um @)"
    sql: ${TABLE}.FlagEmailValidoCadastro ;;
  }

  dimension: flag_endereco_valido {
    type: string
    description: "Flag que identifica se o endereço fornecido passa por algumas validações básicas: - CEP tem 8 números - Bairro tem mais de 2 letras - Número de endereço foi fornecido - Endereço não está em branco - Uma cidade foi identificada com base no CEP"
    sql: ${TABLE}.FlagEnderecoValido ;;
  }

  dimension: flag_hard_bounce_email1 {
    type: string
    description: "Flag que identifica se o e-mail teve algum evento de hard bounce (por exemplo e-mail não encontrado)"
    sql: ${TABLE}.FlagHardBounceEmail1 ;;
  }

  dimension: flag_hard_bounce_email2 {
    type: string
    description: "Flag que identifica se o e-mail teve algum evento de hard bounce (por exemplo e-mail não encontrado)"
    sql: ${TABLE}.FlagHardBounceEmail2 ;;
  }

  dimension: flag_hard_bounce_email3 {
    type: string
    description: "Flag que identifica se o e-mail teve algum evento de hard bounce (por exemplo e-mail não encontrado)"
    sql: ${TABLE}.FlagHardBounceEmail3 ;;
  }

  dimension: flag_hard_bounce_email_cadastro {
    type: string
    description: "Flag que identifica se o e-mail teve algum evento de hard bounce (por exemplo e-mail não encontrado)"
    sql: ${TABLE}.FlagHardBounceEmailCadastro ;;
  }

  dimension: flag_lancamento_praca {
    type: string
    description: "Flag que indica se o cliente se cadastrou na praça antes ou após o lançamento físico da mesma."
    sql: ${TABLE}.FlagLancamentoPraca ;;
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

  dimension: flag_opt_in_mala_direta {
    type: string
    description: "Flag que identifica se o cliente deu optim para receber comunicações"
    sql: ${TABLE}.FlagOptInMalaDireta ;;
  }

  dimension: flag_opt_in_sms {
    type: string
    description: "Opt-in de celular (obtido de arquivos, retorno de Web Service da TWW e da UsuarioControle)"
    sql: ${TABLE}.FlagOptInSMS ;;
  }

  dimension: flag_opt_in_telemarketing {
    type: string
    description: "Opt-in de telemarketing (obtido da UsuarioControle)"
    sql: ${TABLE}.FlagOptInTelemarketing ;;
  }

  dimension: flag_optin_email1 {
    type: string
    description: "Flag que identifica se o e-mail é opt-in das comunicações de e-mail da Dotz"
    sql: ${TABLE}.FlagOptinEmail1 ;;
  }

  dimension: flag_optin_email2 {
    type: string
    description: "Flag que identifica se o e-mail é opt-in das comunicações de e-mail da Dotz"
    sql: ${TABLE}.FlagOptinEmail2 ;;
  }

  dimension: flag_optin_email3 {
    type: string
    description: "Flag que identifica se o e-mail é opt-in das comunicações de e-mail da Dotz"
    sql: ${TABLE}.FlagOptinEmail3 ;;
  }

  dimension: flag_optin_email_cadastro {
    type: string
    description: "Flag que identifica se o e-mail é opt-in das comunicações de e-mail da Dotz"
    sql: ${TABLE}.FlagOptinEmailCadastro ;;
  }

  dimension: flag_optin_shopping {
    type: string
    description: "Flag que identifica se o cliente é opt-in das comunicações de e-mail de shopping (a flag é independente do opt-in de e-mail)"
    sql: ${TABLE}.FlagOptinShopping ;;
  }

  dimension: flag_possui_senha {
    type: string
    description: "Flag que indica se o cliente possui senha cadastrada no site"
    sql: ${TABLE}.FlagPossuiSenha ;;
  }

  dimension: flag_pronto_troca250 {
    type: string
    description: "Flag que indica se o cliente possui pelo menos 250 Dotz de saldo"
    sql: ${TABLE}.FlagProntoTroca250 ;;
  }

  dimension: flag_pronto_troca500 {
    type: string
    description: "Flag que indica se o cliente possui pelo menos 500 Dotz de saldo"
    sql: ${TABLE}.FlagProntoTroca500 ;;
  }

  dimension: flag_sem_transacao {
    type: string
    description: "Flag que identifica clientes que não fizeram transações"
    sql: ${TABLE}.FlagSemTransacao ;;
  }

  dimension: flag_senha_mobile {
    type: string
    description: "Flag que indica se o usuário requisitou uma nova senha no aplicativo mobile alguma vez"
    sql: ${TABLE}.FlagSenhaMobile ;;
  }

  dimension: flag_soft_bounce_email1 {
    type: string
    description: "Flag que identifica se o e-mail teve algum evento de soft bounce (por exemplo caixa de e-mail cheia)"
    sql: ${TABLE}.FlagSoftBounceEmail1 ;;
  }

  dimension: flag_soft_bounce_email2 {
    type: string
    description: "Flag que identifica se o e-mail teve algum evento de soft bounce (por exemplo caixa de e-mail cheia)"
    sql: ${TABLE}.FlagSoftBounceEmail2 ;;
  }

  dimension: flag_soft_bounce_email3 {
    type: string
    description: "Flag que identifica se o e-mail teve algum evento de soft bounce (por exemplo caixa de e-mail cheia)"
    sql: ${TABLE}.FlagSoftBounceEmail3 ;;
  }

  dimension: flag_soft_bounce_email_cadastro {
    type: string
    description: "Flag que identifica se o e-mail teve algum evento de soft bounce (por exemplo caixa de e-mail cheia)"
    sql: ${TABLE}.FlagSoftBounceEmailCadastro ;;
  }

  dimension: flag_telefone_valido {
    type: string
    description: "Flag que identifica se o telefone é válido"
    sql: ${TABLE}.FlagTelefoneValido ;;
  }

  dimension: grupo_nome {
    type: string
    description: "Primeira letra do nome do cliente"
    sql: ${TABLE}.GrupoNome ;;
  }

  dimension: id_sexo {
    type: string
    description: "Gênero do cliente (M - masculino, F - feminino, I - não identificado)"
    sql: ${TABLE}.IdSexo ;;
  }

  dimension: id_status_email {
    type: string
    description: "Status do e-mail do cliente (ex: U, P, FA, etc) - campo depreciado"
    sql: ${TABLE}.IdStatusEmail ;;
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

  dimension: numero_cartao_dotz {
    type: string
    description: "Número do cartão Dotz"
    sql: ${TABLE}.NumeroCartaoDotz ;;
  }

  dimension: numero_celular {
    type: number
    description: "Celular do cliente"
    sql: ${TABLE}.NumeroCelular ;;
  }

  dimension: numero_cep {
    type: number
    description: "CEP da filial (cadastrado no Analyzer)"
    sql: ${TABLE}.NumeroCEP ;;
  }

  dimension: numero_documento {
    type: string
    description: "CPF/CNPJ do cliente"
    sql: ${TABLE}.NumeroDocumento ;;
  }

  dimension: numero_endereco {
    type: number
    description: "Número do endereço do cliente fornecido pela tela do site (endereços enriquecidos ficam na tabela DimClienteGeocode)"
    sql: ${TABLE}.NumeroEndereco ;;
  }

  dimension: numero_identificador_telecom {
    type: string
    description: "Número do celular que o cliente cadastrou no programa da Vivo"
    sql: ${TABLE}.NumeroIdentificadorTelecom ;;
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

  dimension: primeira_chave_fato_troca {
    type: number
    description: "Código que identifica de qual programa foi efetuado a troca. Este campo é movido da tabela DimOrigemTroca."
    sql: ${TABLE}.PrimeiraChaveFatoTroca ;;
  }

  dimension: quantidade_dotz_expirado_total {
    type: number
    description: "Quantidade total de pontos expirados até o mês anterior, informação deriva da Dim Cliente Vencimento"
    sql: ${TABLE}.QuantidadeDotzExpiradoTotal ;;
  }

  dimension: quantidade_dotz_expirar_mes0 {
    type: number
    description: "Quantidade total de pontos a expirar no mês corrente, informação deriva da Dim Cliente Vencimento"
    sql: ${TABLE}.QuantidadeDotzExpirarMes0 ;;
  }

  dimension: quantidade_dotz_expirar_mes1 {
    type: number
    description: "Quantidade total de pontos a expirar no até o próximo mês, informação deriva da Dim Cliente Vencimento"
    sql: ${TABLE}.QuantidadeDotzExpirarMes1 ;;
  }

  dimension: quantidade_dotz_expirar_mes2 {
    type: number
    description: "Quantidade total de pontos a expirar do mês corrente mais 1 mês, informação deriva da Dim Cliente Vencimento"
    sql: ${TABLE}.QuantidadeDotzExpirarMes2 ;;
  }

  dimension: quantidade_dotz_expirar_mes3 {
    type: number
    description: "Quantidade total de pontos a expirar do mês corrente mais 2 meses, informação deriva da Dim Cliente Vencimento"
    sql: ${TABLE}.QuantidadeDotzExpirarMes3 ;;
  }

  dimension: quantidade_dotz_expirar_mes6 {
    type: number
    description: "Quantidade total de pontos a expirar do mês corrente mais 5 meses, informação deriva da Dim Cliente Vencimento"
    sql: ${TABLE}.QuantidadeDotzExpirarMes6 ;;
  }

  dimension: quantidade_dotz_expirar_mes9 {
    type: number
    description: "Quantidade total de pontos a expirar do mês corrente mais 8 meses, informação deriva da Dim Cliente Vencimento"
    sql: ${TABLE}.QuantidadeDotzExpirarMes9 ;;
  }

  dimension: ultima_chave_fato_troca {
    type: number
    description: "Código que identifica qual será o produto troca, este campo é movido da tabela DimProdutoTroca."
    sql: ${TABLE}.UltimaChaveFatoTroca ;;
  }

  measure: qtd_clientes {
    type: count_distinct
    sql: ${chave_cliente} ;;
    drill_fields: [clientes*]
  }

  measure: count {
    type: count
    drill_fields: []
  }

  set: clientes {
    fields: [chave_cliente, descricao_email, numero_celular]
  }
}
