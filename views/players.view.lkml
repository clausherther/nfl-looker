view: players {
  sql_table_name: analysis.players ;;
  drill_fields: [player_id]

  dimension: player_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.player_id ;;
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

  dimension: player_name_abbr {
    type: string
    sql: ${TABLE}.player_name_abbr ;;
  }

  dimension: player_name_full {
    type: string
    sql: ${TABLE}.player_name_full ;;
  }

  measure: count {
    type: count
    drill_fields: [player_id, teams_players.count]
  }
}
