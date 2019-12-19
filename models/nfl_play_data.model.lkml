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

  join: home_teams {
    from:  teams
    type: left_outer
    sql_on: ${plays.home_team_code}} = ${home_teams.team_code} ;;
    relationship: many_to_one
  }

  join: away_teams {
    from:  teams
    type: left_outer
    sql_on: ${plays.away_team_code}} = ${away_teams.team_code} ;;
    relationship: many_to_one
  }

  join: offensive_teams {
    from:  teams
    type: left_outer
    sql_on: ${plays.off_team_code}} = ${offensive_teams.team_code} ;;
    relationship: many_to_one
  }

  join: defensive_teams {
    from:  teams
    type: left_outer
    sql_on: ${plays.def_team_code}} = ${defensive_teams.team_code} ;;
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

  join: teams {
    type: left_outer
    sql_on: ${teams_players.team_code} = ${teams.team_code} ;;
    relationship: many_to_one
  }

}
