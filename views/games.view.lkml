view: games {
  sql_table_name: analysis.games ;;
  drill_fields: [game_id]

  dimension: game_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.game_id ;;
  }

  dimension: away_score {
    type: number
    sql: ${TABLE}.away_score ;;
  }

  dimension: away_team_code {
    type: string
    sql: ${TABLE}.away_team_code ;;
  }

  dimension: dbt_batch_id {
    type: string
    sql: ${TABLE}.dbt_batch_id ;;
  }

  dimension_group: dbt_batch_ts {
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
    sql: ${TABLE}.dbt_batch_ts ;;
  }

  dimension_group: game {
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
    sql: ${TABLE}.game_date ;;
  }

  dimension: game_url {
    type: string
    sql: ${TABLE}.game_url ;;
  }

  dimension: home_score {
    type: number
    sql: ${TABLE}.home_score ;;
  }

  dimension: home_team_code {
    type: string
    sql: ${TABLE}.home_team_code ;;
  }

  dimension: season_code {
    type: string
    sql: ${TABLE}.season_code ;;
  }

  dimension: season_nbr {
    type: number
    sql: ${TABLE}.season_nbr ;;
  }

  dimension: season_type_code {
    type: string
    sql: ${TABLE}.season_type_code ;;
  }

  dimension: week_nbr {
    type: number
    sql: ${TABLE}.week_nbr ;;
  }

  measure: count {
    type: count
    drill_fields: [game_id, plays.count]
  }
}
