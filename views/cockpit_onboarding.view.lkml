view: cockpit_onboarding {
  derived_table: {
    sql: SELECT * FROM ANALYTICS_PROD.COCKPIT_ONBOARDING
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: data {
    type: time
    datatype: datetime
    sql: ${TABLE}.data ;;
  }

  dimension: nrdocumento {
    type: string
    sql: ${TABLE}.Nrdocumento ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: cellphone {
    type: string
    sql: ${TABLE}.Cellphone ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: current_step_description {
    type: string
    sql: ${TABLE}.CurrentStepDescription ;;
  }

  dimension: current_step_description_r {
    type: string
    sql: ${TABLE}.CurrentStepDescriptionR ;;
  }

  dimension: work_flow_type {
    type: string
    sql: ${TABLE}.WorkFlowType ;;
  }

  dimension: balance {
    type: number
    sql: ${TABLE}.Balance ;;
  }

  dimension: onboardingorigin {
    type: string
    sql: ${TABLE}.Onboardingorigin ;;
  }

  dimension: registration_type {
    type: string
    sql: ${TABLE}.RegistrationType ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.Version ;;
  }

  dimension: engagement_score {
    type: number
    sql: ${TABLE}.EngagementScore ;;
  }

  dimension: device_mapper_score {
    type: number
    sql: ${TABLE}.DeviceMapperScore ;;
  }

  dimension: minimum_answer_hits {
    type: number
    sql: ${TABLE}.MinimumAnswerHits ;;
  }

  dimension: number_of_answer_hits {
    type: number
    sql: ${TABLE}.NumberOfAnswerHits ;;
  }

  dimension: face_match_images {
    type: number
    sql: ${TABLE}.FaceMatchImages ;;
  }

  dimension: classificacao {
    type: string
    sql: ${TABLE}.Classificacao ;;
  }

  dimension: seq1 {
    type: number
    sql: ${TABLE}.seq1 ;;
  }

  dimension_group: data_atualizacao {
    type: time
    datatype: datetime
    sql: ${TABLE}.DataAtualizacao ;;
  }

  set: detail {
    fields: [
      data_time,
      nrdocumento,
      name,
      cellphone,
      email,
      current_step_description,
      current_step_description_r,
      work_flow_type,
      balance,
      onboardingorigin,
      registration_type,
      version,
      engagement_score,
      device_mapper_score,
      minimum_answer_hits,
      number_of_answer_hits,
      face_match_images,
      classificacao,
      seq1,
      data_atualizacao_time
    ]
  }
}
