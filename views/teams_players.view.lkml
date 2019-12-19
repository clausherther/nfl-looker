view: teams_players {
  sql_table_name: analysis.teams_players ;;

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

  dimension: player_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.player_id ;;
  }

  dimension: player_key {
    type: string
    sql: ${TABLE}.player_key ;;
  }

  dimension: player_name_abbr {
    type: string
    sql: ${TABLE}.player_name_abbr ;;
  }

  dimension: player_name_full {
    type: string
    sql: ${TABLE}.player_name_full ;;
  }

  dimension: position_code {
    type: string
    sql: ${TABLE}.position_code ;;
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

  dimension: team_code {
    type: string
    sql: ${TABLE}.team_code ;;
  }

  measure: count {
    type: count
    drill_fields: [players.player_id]
  }
}
