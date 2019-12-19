connection: "bigquery_nfl"

# include all the views
include: "/views/**/*.view"

datagroup: nfl_play_data_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: nfl_play_data_default_datagroup

explore: dates {}

explore: games {}

explore: players {}

explore: plays {
  join: games {
    type: left_outer
    sql_on: ${plays.game_id} = ${games.game_id} ;;
    relationship: many_to_one
  }
}

explore: teams {}

explore: teams_players {
  join: players {
    type: left_outer
    sql_on: ${teams_players.player_id} = ${players.player_id} ;;
    relationship: many_to_one
  }
}
